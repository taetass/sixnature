import 'package:flutter/material.dart';
import 'package:sixnature_app/widget/main_model.dart';

class MainMenuViewModel {
  List<MainMenuModel> getMainMenu(){
    return [
      MainMenuModel(
        image: '',
        title: '',
        color: Colors.red,
      ),
    ];
  }
}