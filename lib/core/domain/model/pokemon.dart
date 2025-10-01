class Pokemon {
  final String name;
  final int id;
  final String imageUrl;

  Pokemon({required this.name, required this.id, required this.imageUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

    return Pokemon(
      name: json['name'],
      id: id,
      imageUrl: imageUrl,
    );
  }

   String get formattedName =>
      name[0].toUpperCase() + name.substring(1);
}
