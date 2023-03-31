import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPref {
  final String _marginalityChoiceItem = 'Тип маржинальности';
  final String _marginalityChoiceItemDefault = 'Маржинальность проекта';
  final String _marginalityPeriodItem = 'Период';
  final String _marginalityPeriodItemDefault = 'Месяц';
  final String _marginalityPeriodYear = 'Год';
  final String _marginalityCurrency = 'Валюта';
  final String _marginalityCurrencyDefault = 'rub';
  final String _marginalityPeriodYearDefault =  '${DateFormat('dd/MM/yyyy').
  format(DateTime(DateTime.now().year, 1, 1))} - ${DateFormat('dd/MM/yyyy')
      .format(DateTime(DateTime.now().year, 12, 31))}';
  final String _marginalityPeriodMonth = 'Месяц';
  final String _marginalityPeriodMonthDefault =  '${DateFormat('dd/MM/yyyy').
  format(DateTime(DateTime.now().year, DateTime.now().month, 1))} - ${DateFormat('dd/MM/yyyy')
      .format(DateTime(DateTime.now().year,DateTime.now().month + 1, 0 ))}';
  SharedPreferences pref;
  SharedPref(this.pref);

  String getMarginalityChoice(){
    return pref.getString(_marginalityChoiceItem) ?? _marginalityChoiceItemDefault;
  }
  Future<void> setMarginalityChoice(String marginalityChoiceItem) async {
    await pref.setString(_marginalityChoiceItem, marginalityChoiceItem);
  }
  String getMarginalityCurrency(){
    return pref.getString(_marginalityCurrency) ?? _marginalityCurrencyDefault;
  }
  Future<void> setMarginalityCurrency(String marginalityCurrencyItem) async {
    await pref.setString(_marginalityCurrency, marginalityCurrencyItem);
  }
  String getMarginalityPeriodItem(){
    return pref.getString(_marginalityPeriodItem) ?? _marginalityPeriodItemDefault;
  }
  Future<void> setMarginalityPeriodItem(String marginalityPeriodItem) async {
    await pref.setString(_marginalityPeriodItem, marginalityPeriodItem);
  }
  String getMarginalityPeriodYear(){
    return pref.getString(_marginalityPeriodYear) ?? _marginalityPeriodYearDefault;
  }
  Future<void> setMarginalityPeriodYear(String marginalityPeriodYear) async {
    await pref.setString(_marginalityPeriodYear, marginalityPeriodYear);
  }
  String getMarginalityPeriodMonth(){
    return pref.getString(_marginalityPeriodMonth) ?? _marginalityPeriodMonthDefault;
  }
  Future<void> setMarginalityPeriodMonth(String marginalityPeriodMonth) async {
    await pref.setString(_marginalityPeriodMonth, marginalityPeriodMonth);
  }


}