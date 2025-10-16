class Endpoints {
  Endpoints._();

  // static const String baseUrl = "https://mybest.ptberdikari.co.id";
  // static const String baseUrl = "http://192.168.24.77:9112";
  static const String baseUrl = "http://202.93.133.54";

  // receiveTimeout
  static const int receiveTimeout = 60000;

  // connectTimeout
  static const int connectionTimeout = 60000;

  // auth
  static String login = "/api/v2/login";
  static String profil = "/api/v2/myprofile";

  static String assetGet = "/api/v1/asset-master/get";
  static String asset = "/api/v1/asset-master";
  static String assetMoving = "/api/v1/custom-barcode";

  static String locationGet = "/api/v1/asset-location/get";
  static String location = "/api/v1/asset-location";

  static String job = "/api/v1/get-job";
  static String category = "/api/v1/custom-barcode-category/get";
}
