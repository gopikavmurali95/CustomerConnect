import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:customer_connect/feature/state/cubit/convertpdf/convertpdfurl_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PdfViewScreen extends StatefulWidget {
  final String pdfUrl;
  const PdfViewScreen({super.key, required this.pdfUrl});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

PDFDocument? doc;

class _PdfViewScreenState extends State<PdfViewScreen> {
  @override
  void initState() {
    log(widget.pdfUrl);
    context.read<ConvertpdfurlCubit>().clearpdfUrl();
    // convert();
    context.read<ConvertpdfurlCubit>().convertpdf(widget.pdfUrl);
    super.initState();
  }

  convert() async {
    doc = null;
    doc = await PDFDocument.fromURL(widget.pdfUrl.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        elevation: 0.5,
        toolbarHeight: 48.h,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text
          (AppLocalizations.of(context)!.documents,
          style: TextStyle(fontSize: 17.sp),
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<ConvertpdfurlCubit, ConvertpdfurlState>(
            builder: (context, state) {
              return Expanded(
                child: state.pdf == null
                    ? const Center(
                        child: CupertinoActivityIndicator(
                          animating: true,
                          color: Colors.red,
                          radius: 30,
                        ),
                      )
                    : PDFViewer(
                        showPicker: false,
                        showNavigation: false,
                        zoomSteps: 5,
                        scrollDirection: Axis.vertical,
                        document: state.pdf!,
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
