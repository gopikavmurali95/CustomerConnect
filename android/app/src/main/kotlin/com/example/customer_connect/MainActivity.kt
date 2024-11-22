package com.product.customer_connect

import android.annotation.SuppressLint
import android.content.pm.PackageManager
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.widget.Toast
import androidx.annotation.NonNull
import androidx.core.content.FileProvider
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity : FlutterActivity() {

    private val CHANNEL = "apkInstallerChannel"

    @SuppressLint("SuspiciousIndentation")
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val platformChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)

        platformChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "opengdrive" -> {
                        val arguments = call.arguments as Map<String, Any>?
                        if (arguments != null) {
                            val pdfurl = arguments["pdfUrl"] as String
                           
                            opengdrive(pdfurl)
                            

                            result.success("Transaction started")
                        } else {
                            result.error("MISSING_ARGUMENTS", "Arguments are missing", null)
                        }
                    }

                "installApk" -> {
                    val apkPath = call.argument<String>("apkPath")
                    if (apkPath != null) {
                        installApk(apkPath)
                        result.success("APK install invoked")
                    } else {
                        result.error("APK_PATH_ERROR", "APK path is null", null)
                    }
                }

                "getAppVersionCode" -> {
                    val versionCode = getAppVersionCode()
                    result.success(versionCode)
                }

                else -> result.notImplemented()
            }
        }
    }

    private fun installApk(apkPath: String) {
        val apkFile = File(apkPath)
        if (apkFile.exists()) {
            val intent = Intent(Intent.ACTION_VIEW)
            intent.setDataAndType(
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    FileProvider.getUriForFile(this, "$packageName.provider", apkFile)
                } else {
                    Uri.fromFile(apkFile)
                },
                "application/vnd.android.package-archive"
            )
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            startActivity(intent)
        } else {
            Toast.makeText(this, "APK file not found", Toast.LENGTH_LONG).show()
        }
    }

    private fun getAppVersionCode(): Int {
        return try {
            val packageInfo = packageManager.getPackageInfo(packageName, 0)
            packageInfo.versionCode
        } catch (e: PackageManager.NameNotFoundException) {
            e.printStackTrace()
            -1 // Error code in case of failure
        }
    }

    private fun opengdrive(
        pdfUrl: String,
       
    ) {
        val GOOGLE_DRIVE_PACKAGE_NAME = "com.google.android.apps.docs"
        val GOOGLE_DRIVE_REQUEST_CODE = 456
        
       
        
        val intent = Intent(Intent.ACTION_VIEW).apply {
            data = Uri.parse(pdfUrl)
            `package` = GOOGLE_DRIVE_PACKAGE_NAME
        }
        
        startActivityForResult(intent, GOOGLE_DRIVE_REQUEST_CODE)

    }
}
