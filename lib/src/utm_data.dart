class UtmData {
  final String? source;
  final String? medium;
  final String? campaign;
  final String? term;
  final String? content;
  final String? id;

  UtmData({
    this.source,
    this.medium,
    this.campaign,
    this.term,
    this.content,
    this.id,
  });

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
