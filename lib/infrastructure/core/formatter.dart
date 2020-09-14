import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Formatter {
  String  formatCurrency(double amount) {
    FlutterMoneyFormatter fmf = new FlutterMoneyFormatter(
        amount: amount,
        settings: MoneyFormatterSettings(
          symbol: 'IDR',
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          compactFormatType: CompactFormatType.short,
          fractionDigits: 0,
        ));

    return fmf.output.symbolOnLeft;
  }
}
