import 'package:flutter/foundation.dart';

class QueryFormatter {
  final Map<String, dynamic>? map;

  QueryFormatter({
    @required this.map,
  });

  factory QueryFormatter.fromMap(Map<String, dynamic> map) {
    return QueryFormatter(map: map);
  }
}
