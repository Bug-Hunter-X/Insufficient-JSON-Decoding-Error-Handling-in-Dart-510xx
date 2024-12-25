```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's the problematic part:
      final jsonData = jsonDecode(response.body);
      // ... further processing of jsonData ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This will catch network errors, but not all JSON decoding errors
    print('Error: $e');
  }
}
```