class Bewertung {
  final int id;
  final int unternehmenId;
  final double score;

  Bewertung({required this.id, required this.unternehmenId, required this.score});

  factory Bewertung.fromJson(Map<String, dynamic> json) => Bewertung(
        id: json['id'] is int ? json['id'] as int : int.parse(json['id'].toString()),
        unternehmenId: json['unternehmenId'] is int ? json['unternehmenId'] as int : int.parse(json['unternehmenId'].toString()),
        score: (json['score'] as num).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'unternehmenId': unternehmenId,
        'score': score,
      };
}

class BewertungCreate {
  final int unternehmenId;
  final Map<String, dynamic> values;

  BewertungCreate({required this.unternehmenId, required this.values});

  Map<String, dynamic> toJson() => {
        'unternehmenId': unternehmenId,
        'values': values,
      };
}

class BewertungDetail {
  final int id;
  final int unternehmenId;
  final Map<String, dynamic> details;

  BewertungDetail({required this.id, required this.unternehmenId, required this.details});

  factory BewertungDetail.fromJson(Map<String, dynamic> json) => BewertungDetail(
        id: json['id'] is int ? json['id'] as int : int.parse(json['id'].toString()),
        unternehmenId: json['unternehmenId'] is int ? json['unternehmenId'] as int : int.parse(json['unternehmenId'].toString()),
        details: (json['details'] as Map<String, dynamic>?) ?? {},
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'unternehmenId': unternehmenId,
        'details': details,
      };
}
