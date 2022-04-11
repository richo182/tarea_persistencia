class MovieModel{

  int id;
  String name;
  String url;
  String language;

  MovieModel({
    required this.id,
    required this.name,
    required this.url,
    required this.language
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      name: json['name'],
      url: json['image']['medium'],
      language: json['language']
  );

}