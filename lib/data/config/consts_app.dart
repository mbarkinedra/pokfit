class ConstsApp {
  static String get baseUrl => 'https://pokfit.qa';

  static String get apiPrefix => '/api/v1';

  static String get baseApiUrl => baseUrl + apiPrefix;

  static String get homeUrl => '$baseApiUrl/home';

  static String get categoryUrl => '$baseApiUrl/challenges/categories/list';
}
