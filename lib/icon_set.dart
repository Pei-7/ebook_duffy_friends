import 'package:flutter/material.dart';

enum IconSet {
  gender(Icons.account_circle, '性別', Colors.red),
  characteristic(Icons.stars, '特徵', Colors.orange),
  personality(Icons.mood, '性格', Colors.green),
  hobby(Icons.recommend, '愛好', Colors.blue);

  //定義屬性
  final IconData iconName;
  final String iconTitle;
  final Color iconColor;

  //構造函數
  const IconSet(this.iconName, this.iconTitle, this.iconColor);
}
