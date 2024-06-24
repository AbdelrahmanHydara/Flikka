import 'package:flikka/features/choose_language/cubit/choose_language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageState> {
  ChooseLanguageCubit() : super(ChooseLanguageInitial());

  String? selectedLanguage;
  final List<Map<String, dynamic>> languages = [
    {'code': 'SA', 'flag': '🇸🇦', 'language': 'Arabic'},
    {'code': 'GB', 'flag': '🇬🇧', 'language': 'English'},
    {'code': 'ES', 'flag': '🇪🇸', 'language': 'Spanish'},
    {'code': 'FR', 'flag': '🇫🇷', 'language': 'French'},
    {'code': 'DE', 'flag': '🇩🇪', 'language': 'German'},
    {'code': 'CN', 'flag': '🇨🇳', 'language': 'Chinese'},
    {'code': 'JP', 'flag': '🇯🇵', 'language': 'Japanese'},
    {'code': 'IN', 'flag': '🇮🇳', 'language': 'Hindi'},
    {'code': 'RU', 'flag': '🇷🇺', 'language': 'Russian'},
    {'code': 'BR', 'flag': '🇧🇷', 'language': 'Portuguese'},
  ];

  void emitSelectedLanguage(int index) {
    selectedLanguage = languages[index]['code'];
    emit(SelectedLanguageState());
  }

}
