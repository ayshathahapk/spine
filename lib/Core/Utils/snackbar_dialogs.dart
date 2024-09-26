import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quickalert/models/quickalert_type.dart';
// import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:flutterspine/Core/app_export.dart';

void showSnackBarDialogue({
  bool showLoading = false,
  bool isError = false,
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: isError ? appTheme.red700 : appTheme.mainBlue,
        duration: showLoading
            ? const Duration(seconds: 5)
            : const Duration(seconds: 4),
        content: Row(
          children: [
            if (showLoading)
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: CircularProgressIndicator(),
              ),
            Expanded(
              flex: 3,
              child: Text(
                overflow: TextOverflow.visible,
                message,
                style: GoogleFonts.poppins(
                    // fontFamily: marine,
                    color: appTheme.whiteA700,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.fSize),
              ),
            ),
          ],
        ),
      ),
    );
}

