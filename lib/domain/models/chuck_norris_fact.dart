class ChuckNorrisFact {
  final List categories;
  final String createdAt;
  final String iconUrl;
  final String id;
  final String updatedAt;
  final String url;
  final String value;

  ChuckNorrisFact(this.createdAt, this.iconUrl, this.id, this.updatedAt,
      this.url, this.value, this.categories);

  ChuckNorrisFact.fromJson(Map<String, dynamic> json)
      : categories = json['categories'],
        createdAt = json['created_at'].toString().substring(0,10),
        iconUrl = json['icon_url'],
        id = json['id'],
        updatedAt = json['updated_at'].toString().substring(0,19),
        url = json['url'].toString().substring(0,26),
        value = json['value'];

}
