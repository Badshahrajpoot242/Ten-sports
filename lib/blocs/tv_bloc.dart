import 'dart:convert';
import 'package:http/http.dart' as http;

// Ye class aapka JSON data fetch karegi jo aap Firebase ya GitHub Gist par rakhenge
class TvBloc {
  // Yahan aap apna wo link daalein jahan aapne apni JSON file rakhi hai
  final String jsonUrl = "YAHAN_APNA_JSON_LINK_DAALEIN";

  Future<List<dynamic>> fetchChannels() async {
    try {
      final response = await http.get(Uri.parse(jsonUrl));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load channels');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
