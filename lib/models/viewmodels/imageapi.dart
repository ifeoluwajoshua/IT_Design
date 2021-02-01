import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:myportfolio/models/images.dart';
import 'package:http/http.dart' as http;

class Images extends ChangeNotifier {
  String baseUrl =
      'https://946971854797916:5Q0zFIYtxq8O-wHkopokbWl048w@api.cloudinary.com/v1_1/ifeoluwajoshua/resources/image/upload';
  Images();
//CLOUDINARY_URL=cloudinary://946971854797916:5Q0zFIYtxq8O-wHkopokbWl048w@ifeoluwajoshua
  Future<List<Resources>> getPhotos() async {
    return await http.get(baseUrl).then((response) {
      Data an = Data.fromJson(json.decode(response.body.toString()));
      return an.resources;
    });
  }
}
