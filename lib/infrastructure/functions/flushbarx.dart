import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

showLoadingFlushbar(BuildContext context, Flushbar flushbar, String msg) {
  flushbar = FlushbarHelper.createLoading(
      message: "Getting Data",
      linearProgressIndicator: LinearProgressIndicator());
  flushbar..show(context);
}

showErrorFlushbar(BuildContext context, Flushbar flushbar, String msg) {
  flushbar = FlushbarHelper.createError(
    message: "Error Getting Data",
  );
  flushbar..show(context);
}

dismissFlushbar(Flushbar flushbar) {
  if (flushbar == null) {
  } else {
    flushbar.dismiss();
  }
}
