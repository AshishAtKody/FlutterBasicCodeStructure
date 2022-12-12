class ApiEndPoints {
  ApiEndPoints._();

  static int apiStatus_200Int = 200; //success
  static String apiStatus_200 = "200"; //success
  static String apiStatus_201 = "201"; //success
  static String apiStatus_202 = "202"; //success for static page
  static String apiStatus_203 = "203"; //success
  static String apiStatus_205 = "205"; // for remaining step 2
  static String apiStatus_401 = "401"; //Invalid data
  static String apiStatus_404 = "404"; //Invalid data

  static String strBaseUrl =
      "http://cloud1.kodyinfotech.com:7000/take-profit/public/api/customer";

  static String signup = '$strBaseUrl/signup';
  static String login = '$strBaseUrl/login';
}
