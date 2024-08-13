import 'package:ebook_duffy_friends/duffy_friends.dart';
import 'package:ebook_duffy_friends/icon_set.dart';
import 'package:flutter/material.dart';

class CharactorDetails extends StatelessWidget {
  final DuffyFriends character;

  const CharactorDetails({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //非首頁不用設置 MaterialApp，避免 navigator 被重新創建而無法出現“返回”按鈕
        appBar: AppBar(
          title: Text(character.name),
          bottom: const TabBar(
            tabs: [
              Tab(text: '故事背景'),
              Tab(text: '角色設定'),
              Tab(text: '圖庫'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            StoryTab(character: character),
            ListTab(character: character),
            GalleryTab(character: character),
          ],
        ),
      ),
    );
  }
}

class GalleryTab extends StatelessWidget {
  const GalleryTab({
    super.key,
    required this.character,
  });

  final DuffyFriends character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 1; i <= 4; i++)
            GalleryCards(
              character: character,
              index: i,
            ),
        ],
      ),
    );
  }
}

class GalleryCards extends StatelessWidget {
  const GalleryCards({
    super.key,
    required this.character,
    required this.index,
  });

  final DuffyFriends character;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(16),
      clipBehavior:
          Clip.hardEdge, //Card 雖然預設圓角，但是不會改變 child 圖片形狀，故要手動設置 clip 以裁切內部圖片
      child: Image.asset('assets/${character.fileName}$index.jpg'),
    );
  }
}

class ListTab extends StatelessWidget {
  const ListTab({
    super.key,
    required this.character,
  });

  final DuffyFriends character;

  @override
  Widget build(BuildContext context) {
    List<String> characterDetails = [
      character.gender,
      character.characteristics,
      character.personality,
      character.hobby,
    ];

    return ListView.separated(
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListRow(
          index: index,
          characterDetails: characterDetails,
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class ListRow extends StatelessWidget {
  const ListRow({
    super.key,
    required this.index,
    required this.characterDetails,
  });

  final int index;
  final List<String> characterDetails;

  @override
  Widget build(BuildContext context) {
    IconSet iconHeading = icons[index];
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          child: ListHeading(
            rowIcon: iconHeading.iconName,
            rowName: iconHeading.iconTitle,
            iconColor: iconHeading.iconColor,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Text(
              characterDetails[index],
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StoryTab extends StatelessWidget {
  const StoryTab({
    super.key,
    required this.character,
  });

  final DuffyFriends character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 320,
            height: 320,
            padding: const EdgeInsets.only(top: 24),
            child: CircleAvatar(
                foregroundImage:
                    AssetImage('assets/${character.fileName}.jpg')),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              character.story,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<IconSet> icons = [
  IconSet.gender,
  IconSet.characteristic,
  IconSet.personality,
  IconSet.hobby,
];

class ListHeading extends StatelessWidget {
  final IconData rowIcon; //設置內部參數的各個型別
  final String rowName;
  final Color iconColor;

  const ListHeading({
    super.key,
    required this.rowIcon, //設置必填的命名參數
    required this.rowName,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          rowIcon,
          size: 36,
          color: iconColor,
        ),
        Text(rowName),
      ],
    );
  }
}
