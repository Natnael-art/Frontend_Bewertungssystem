import 'dart:convert';  
import 'package:http/http.dart' as http; 
import '../models/unternehmen.dart'; 
import '../models/kriterium.dart'; 
import '../models/bewertung.dart'; 
import 'api_config.dart'; 
class ApiService { 
  final String baseUrl = ApiConfig.baseUrl; 

  // ----------------------------- //
  // Helper: GET // 
  //----------------------------- 
  Future<dynamic> _get(String endpoint) async { 
    final response = await http
      .get(Uri.parse('$baseUrl$endpoint')) 
      .timeout(const Duration(seconds: 10)); 
    if (response.statusCode >= 200 && response.statusCode < 300) { 
      return json.decode(response.body); 
    } else { 
      throw Exception( 
        'GET $endpoint fehlgeschlagen: ${response.statusCode} – ${response.body}'); 
        } 
      } 

    // ----------------------------- // 
    //    Helper: POST // 
    //-----------------------------//
    Future<dynamic> _post(String endpoint, dynamic body) async { 
      final response = await http 
        .post( 
          Uri.parse('$baseUrl$endpoint'), 
          headers: {'Content-Type': 'application/json'}, 
          body: json.encode(body),
        ) 
        .timeout(const Duration(seconds: 10)); 
      if (response.statusCode >= 200 && response.statusCode < 300) { 
        return json.decode(response.body); 
      } else { 
        throw Exception( 'POST $endpoint fehlgeschlagen: ${response.statusCode} – ${response.body}'); 
      } 
    }

    // -----------------------------
    //     UNTERNEHMEN 
    // ----------------------------
    Future<List<Unternehmen>> getUnternehmen() async { 
      final data = await _get('/unternehmen'); 
      return (data as List) 
          .map((json) => Unternehmen.fromJson(json)) 
          .toList(); 
    } 
    Future<Unternehmen> createUnternehmen(Unternehmen unternehmen) async { 
      final data = await _post('/unternehmen', unternehmen.toJson()); 
      return Unternehmen.fromJson(data); 
    } 

    // ----------------------------- 
    //     KRITERIEN 
    // -----------------------------
    Future<List<Kriterium>> getKriterien() async { 
      final data = await _get('/kriterien'); 
      return (data as List)
        .map((json) => Kriterium.fromJson(json)) 
        .toList(); 
      } 
    Future<List<Kriterium>> getKriterienByWertigkeit(String wertigkeit) async { 
      final data = await _get('/kriterien/$wertigkeit'); 
      return (data as List) 
          .map((json) => Kriterium.fromJson(json)) 
          .toList(); 
    } 

    // -----------------------------
    //   BEWERTUNGEN 
    //-----------------------------
    Future<List<BewertungDetail>> getBewertungenByUnternehmen(int id) async { 
      final data = await _get('/bewertungen/unternehmen/$id'); 
      return (data as List) 
        .map((json) => BewertungDetail.fromJson(json)) 
        .toList(); 
    }
    Future<Bewertung> saveBewertung(BewertungCreate bewertung) async { 
      final data = await _post('/bewertungen', bewertung.toJson()); 
      return Bewertung.fromJson(data); 
    } 

    // ----------------------------- // 
    //SCORING // 
    //-----------------------------//
    Future<Map<String, dynamic>> getUnternehmenScore(int id) async { 
      return await _get('/scores/unternehmen/$id'); 
      } 
    Future<Map<String, dynamic>> compareUnternehmen(List<int> ids) async { 
      return await _post('/scores/vergleich', ids); 
    } 
    Future<Map<String, dynamic>> getRanking() async { 
      return await _get('/scores/ranking'); 
    } 
}