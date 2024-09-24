# Keep the main package
-keep class com.meliha.customer_connect.** { *; }

# Keep Flutter classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }

# Keep JSON model classes
-keep class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

# Keep generated code for JSON serialization
-keep class * extends com.google.gson.Gson { *; }
-keep class * implements com.google.gson.Gson { *; }

# Remove logging code
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** e(...);
    public static *** i(...);
    public static *** v(...);
    public static *** w(...);
}

# Optimize the bytecode
-optimizations !method/inlining/*
-dontoptimize

# Remove unused classes and methods
-dontshrink
-dontobfuscate

# Remove resource files
-keep class **.R$* { *; }
-keep class **.R { *; }

# Additional rules to keep any Flutter and third-party libraries
# Modify as necessary for specific libraries you use
-dontwarn com.google.android.gms.**
-dontwarn com.squareup.okhttp3.**
-dontwarn okhttp3.**
-dontwarn org.greenrobot.eventbus.**
-dontwarn com.bumptech.glide.**

# Exclude specific classes or packages you know are not used
# For example, if you have large libraries that you don’t need, exclude them
-keep class com.example.yourpackage.** { *; }
