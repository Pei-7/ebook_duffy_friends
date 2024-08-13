import 'package:ebook_duffy_friends/charactor_details.dart';
import 'package:ebook_duffy_friends/duffy_friends.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const BarTitle(),
        ),
        body: const DuffyGridView(),
      ),
    );
  }
}

class DuffyGridView extends StatelessWidget {
  const DuffyGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: characters
            .length, //沒有設置的話，GirdView 會有無限延伸的格數！（並顯是紅底的錯誤提示 Range Error)
        itemBuilder: (context, index) {
          return TapNavigate(index: index);
        },
      ),
    );
  }
}

class TapNavigate extends StatelessWidget {
  final int index;
  const TapNavigate({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CharactorDetails(
                    character: characters[index],
                  )),
        );
      },
      child: GridImage(index: index),
    );
  }
}

class GirdText extends StatelessWidget {
  const GirdText({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Container(
            color: Colors.white.withAlpha(220),
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              characters[index].name,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class GridImage extends StatelessWidget {
  const GridImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(
          'assets/${characters[index].fileName}.jpg' //字符串插值使用 ${} 讀取，不是 $()！！ 還有結尾記得加 .jpg!!!
          ),
    );
  }
}

class BarTitle extends StatelessWidget {
  const BarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Duffy and Friends',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

List<DuffyFriends> characters = [
  DuffyFriends.duffy,
  DuffyFriends.shellieMay,
  DuffyFriends.gelatoni,
  DuffyFriends.stellaLou,
  DuffyFriends.cookieAnn,
  DuffyFriends.oluMel,
  DuffyFriends.linabell,
];
