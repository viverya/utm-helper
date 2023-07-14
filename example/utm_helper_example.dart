import 'package:utm_helper/utm_helper.dart';

int main() {
  // Full valid query string
  UtmData.fromQueryString(
      'utm_source=bangbu&utm_medium=cpc&utm_campaign=summer&utm_term=beach%20vacation&utm_content=ad1&utm_id=anyaquote');

  // Query string with some data
  UtmData.fromQueryString('utm_source=bangbu&utm_medium=cpc');

  // Query string with no utm data or invalid one
  UtmData.fromQueryString('some-invalid-query-string');

  return 0;
}
