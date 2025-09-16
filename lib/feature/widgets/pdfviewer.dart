// ignore_for_file: deprecated_member_use

import 'package:customer_connect/feature/state/cubit/convertpdf/convertpdfurl_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatefulWidget {
  final String pdfUrl;
  const PdfViewScreen({super.key, required this.pdfUrl});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  @override
  void initState() {
    super.initState();
    log(widget.pdfUrl);

    // Reset then load new PDF URL into Cubit
    context.read<ConvertpdfurlCubit>().clearpdfUrl();
    context.read<ConvertpdfurlCubit>().convertpdf(widget.pdfUrl);
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
        title: Text(
          AppLocalizations.of(context)!.documents,
          style: TextStyle(fontSize: 17.sp),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ConvertpdfurlCubit, ConvertpdfurlState>(
              builder: (context, state) {
                return state.when(
                  convertPDFUrl: (pdfUrl) => SfPdfViewer.network(pdfUrl!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
