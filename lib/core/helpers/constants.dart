class SharedPrefKeys {
  static const String selectedLanguage = 'selectedLanguage';
  static const String accountSetupSelected = 'accountSetupSelected';
}

class Lists {
  static final List<Map<String, dynamic>> languagesList = [
    {'code': 'SA', 'flag': '🇸🇦', 'name': 'Arabic'},
    {'code': 'GB', 'flag': '🇬🇧', 'name': 'English'},
    {'code': 'ES', 'flag': '🇪🇸', 'name': 'Spanish'},
    {'code': 'FR', 'flag': '🇫🇷', 'name': 'French'},
    {'code': 'DE', 'flag': '🇩🇪', 'name': 'German'},
    {'code': 'CN', 'flag': '🇨🇳', 'name': 'Chinese'},
    {'code': 'JP', 'flag': '🇯🇵', 'name': 'Japanese'},
    {'code': 'IN', 'flag': '🇮🇳', 'name': 'Hindi'},
    {'code': 'RU', 'flag': '🇷🇺', 'name': 'Russian'},
    {'code': 'BR', 'flag': '🇧🇷', 'name': 'Portuguese'},
  ];

  static final List<Map<String, dynamic>> reasonList = [
    {'image': 'assets/icons/travel.png', 'name': 'Travel'},
    {'image': 'assets/icons/school.png', 'name': 'School'},
    {'image': 'assets/icons/working.png', 'name': 'Work'},
    {'image': 'assets/icons/family.png', 'name': 'Family/Friends'},
    {'image': 'assets/icons/skill.png', 'name': 'Skill Improvement'},
    {'image': 'assets/icons/menu.png', 'name': 'Others'},
  ];

  static final List<Map<String, dynamic>> levelsList = [
    {'image': 'assets/icons/newbie.png', 'name': 'Beginner'},
    {'image': 'assets/icons/intermediate.png', 'name': 'Medium'},
    {'image': 'assets/icons/expert.png', 'name': 'Advanced'},
  ];

  static final List<Map<String, dynamic>> agesList = [
    {'code': 'u18', 'name': 'Under 18'},
    {'code': '18-24', 'name': '18-24'},
    {'code': '25-34', 'name': '25-34'},
    {'code': '35-44', 'name': '35-44'},
    {'code': '45-54', 'name': '45-54'},
    {'code': '55-64', 'name': '55-64'},
  ];

  static final List<Map<String, dynamic>> timesList = [
    {'image': 'assets/icons/clock.png', 'name': '5min/Day'},
    {'image': 'assets/icons/clock.png', 'name': '15min/Day'},
    {'image': 'assets/icons/clock.png', 'name': '30min/Day'},
    {'image': 'assets/icons/clock.png', 'name': '60min/Day'},
  ];

  static final List<Map<String, dynamic>> socialsList = [
    {'code': '1', 'name': 'LinkedIn'},
    {'code': '2', 'name': 'Facebook'},
    {'code': '3', 'name': 'Friends/Family'},
    {'code': '4', 'name': 'Play Store'},
    {'code': '5', 'name': 'Youtube'},
    {'code': '6', 'name': 'TV'},
    {'code': '7', 'name': 'Podcast'},
    {'code': '8', 'name': 'Other'},
  ];
}
