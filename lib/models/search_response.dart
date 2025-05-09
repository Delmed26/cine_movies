// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromMap(jsonString);

import 'package:cine_movies/models/models.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

class SearchResponse {
    SearchResponse({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    factory SearchResponse.fromJson(String str) => SearchResponse.fromMap(json.decode(str));


    factory SearchResponse.fromMap(Map<String, dynamic> json) => SearchResponse(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );
}
