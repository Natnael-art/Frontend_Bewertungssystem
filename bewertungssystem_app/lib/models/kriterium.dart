class Kriterium {
  final int id;
  final String name;
  final String wertigkeit;

  Kriterium({required this.id, required this.name, required this.wertigkeit});

  factory Kriterium.fromJson(Map<String, dynamic> json) => Kriterium(
        id: json['id'] is int ? json['id'] as int : int.parse(json['id'].toString()),
        name: json['name']?.toString() ?? '',
        wertigkeit: json['wertigkeit']?.toString() ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'wertigkeit': wertigkeit,
      };
}
