/// Class contains UTM data
class UtmData {
  /// utm_source
  /// Identifies which site sent the traffic, and is a required parameter.
  /// Example: google, newsletter, billboard.
  final String? source;

  /// utm_medium
  /// Identifies what type of link was used, such as cost per click or email.
  /// Example: cpc, banner, email newsletter.
  final String? medium;

  /// utm_campaign
  /// Identifies a specific product promotion or strategic campaign.
  /// Example: utm_campaign=spring_sale.
  final String? campaign;

  /// utm_term
  /// Identifies search terms.
  /// Example: running+shoes.
  final String? term;

  /// utm_content
  /// Identifies what specifically was clicked to bring the user to the site, such as a banner ad or a text link.
  /// It is often used for A/B testing and content-targeted ads.
  /// Example: logolink or textlink.
  final String? content;

  /// utm_id
  /// Identifies a specific visitor, customer, or client.
  /// Example: 1234567890.
  final String? id;

  /// Constructor
  UtmData({
    this.source,
    this.medium,
    this.campaign,
    this.term,
    this.content,
    this.id,
  });

  /// Generate an UtmData object from [queryString]
  /// Currently this may not return expected object if [queryString] is not decoded.
  factory UtmData.fromQueryString(String queryString) {
    Map<String, String> queryParams = Uri.splitQueryString(queryString);
    return UtmData(
      source: queryParams['utm_source'],
      medium: queryParams['utm_medium'],
      campaign: queryParams['utm_campaign'],
      term: queryParams['utm_term'],
      content: queryParams['utm_content'],
      id: queryParams['utm_id'],
    );
  }

  /// Generate a string from UtmData object
  @override
  String toString() {
    return 'UtmData { '
        'source: $source, '
        'medium: $medium, '
        'campaign: $campaign, '
        'term: $term, '
        'content: $content, '
        'id: $id }';
  }
}
