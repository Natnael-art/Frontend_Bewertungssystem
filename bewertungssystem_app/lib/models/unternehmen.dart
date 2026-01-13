class Unternehmen {
  final int id;
  final String name;

  Unternehmen({required this.id, required this.name});

  factory Unternehmen.fromJson(Map<String, dynamic> json) => Unternehmen(
        id: json['id'] is int ? json['id'] as int : int.parse(json['id'].toString()),
        name: json['name']?.toString() ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
