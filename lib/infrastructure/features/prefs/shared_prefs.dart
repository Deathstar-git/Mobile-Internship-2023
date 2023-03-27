import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPref {
  final String _marginalityChoiceItem = 'Маржинальность проекта';
  final String _marginalityPeriodItem = 'Квартал';
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


}