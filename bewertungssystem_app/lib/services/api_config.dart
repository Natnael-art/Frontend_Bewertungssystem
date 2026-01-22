class ApiConfig {
  static const String baseUrl = "http://localhost:8000";

  static const Duration timeout = Duration(seconds: 15);

  static String endpoint(String path) => "$baseUrl/$path";
}
