import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../injection.dart';

@injectable
class SharedPref {
  final String _marginalityChoiceItem = 'Маржинальность проекта';
  SharedPreferences pref = getIt<SharedPreferences>();

  SharedPref(this.pref);

  Future<String> getMarginalityChoice() async {
    return pref.getString(_marginalityChoiceItem) ?? _marginalityChoiceItem;
  }

  Future<void> setMarginalityChoice(String marginalityChoiceItem) async {
    await pref.setString(_marginalityChoiceItem, marginalityChoiceItem);
  }
}