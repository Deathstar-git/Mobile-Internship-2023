import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPref {
  final String _marginalityChoiceItem = 'Маржинальность проекта';
  final String _marginalityPeriodItem = 'Квартал';

  final String _marginalityPeriodYear =  '${DateFormat('dd/MM/yyyy').
  format(DateTime.now())} - ${DateFormat('dd/MM/yyyy')
      .format(DateTime.now())}';
  SharedPreferences pref;
  SharedPref(this.pref);

  String getMarginalityChoice(){
    return pref.getString(_marginalityChoiceItem) ?? _marginalityChoiceItem;
  }
  Future<void> setMarginalityChoice(String marginalityChoiceItem) async {
    await pref.setString(_marginalityChoiceItem, marginalityChoiceItem);
  }
  String getMarginalityPeriodItem(){
    return pref.getString(_marginalityPeriodItem) ?? _marginalityPeriodItem;
  }
  Future<void> setMarginalityPeriodItem(String marginalityPeriodItem) async {
    await pref.setString(_marginalityPeriodItem, marginalityPeriodItem);
  }
  String getMarginalityPeriodYear(){
    return pref.getString(_marginalityPeriodYear) ?? _marginalityPeriodYear;
  }
  Future<void> setMarginalityPeriodYear(String marginalityPeriodYear) async {
    await pref.setString(_marginalityPeriodYear, marginalityPeriodYear);
  }


}