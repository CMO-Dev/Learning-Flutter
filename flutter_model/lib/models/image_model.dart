import 'package:flutter/material.dart';

class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel({required this.id, required this.url, required this.title});

  @override
  String toString() {
    return "{id: $id, url: $url, title: $title}";
  }
}
