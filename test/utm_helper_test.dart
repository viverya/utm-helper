import 'package:flutter_test/flutter_test.dart';
import 'package:utm_helper/utm_helper.dart';

void main() {
  /// Test UtmData.fromQueryString() method
  /// This method is used to generate an UtmData object from query string
  group('utm data factory: decoded query string', () {
    /// Test with full query string
    test('should return full UtmData object', () {
      final utmData = UtmData.fromQueryString(
          'utm_source=google&utm_medium=cpc&utm_campaign=summer&utm_term=beach%20vacation&utm_content=ad1&utm_id=1234567890');
      expect(utmData.source, 'google');
      expect(utmData.medium, 'cpc');
      expect(utmData.campaign, 'summer');
      expect(utmData.term, 'beach vacation');
      expect(utmData.content, 'ad1');
      expect(utmData.id, '1234567890');
    });

    /// Test with invalid query string
    test('should have null value if query string is not valid', () {
      final utmData = UtmData.fromQueryString('some-invalid-query-string');
      expect(utmData.source, null);
      expect(utmData.medium, null);
      expect(utmData.campaign, null);
      expect(utmData.term, null);
      expect(utmData.content, null);
      expect(utmData.id, null);
    });

    /// Test with query string that has some null value
    test('should have some null value that query string does not have', () {
      final utmData = UtmData.fromQueryString('utm_source=bangbu&utm_id=anya');
      expect(utmData.source, 'bangbu');
      expect(utmData.medium, null);
      expect(utmData.campaign, null);
      expect(utmData.term, null);
      expect(utmData.content, null);
      expect(utmData.id, 'anya');
    });
  });
}
