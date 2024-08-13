class DuffyFriends {
  final String fileName;
  final String name;
  final String story;
  final String gender;
  final String characteristics;
  final String personality;
  final String hobby;

  const DuffyFriends({
    required this.fileName,
    required this.name,
    required this.story,
    required this.gender,
    required this.characteristics,
    required this.personality,
    required this.hobby,
  });

  static const DuffyFriends duffy = DuffyFriends(
    //跟 swift 一樣，class 內宣告實例也要加 static
    fileName: 'duffy',
    name: '達菲 Duffy',
    story:
        """有一天，米奇即將揚帆遠航到世界各地冒險，米妮親手縫製了一隻玩具熊送給米奇，好讓他在旅程中不會感到孤單。由於米奇實在喜歡這隻小熊，甚至希望能和他一起散步，所以後來奇妙仙子便賦予了達菲熊生命。達菲成為米奇環遊世界的夥伴，一同遊歷各地名勝古蹟，在路途上認識不少新朋友。

達菲有些單純也有一點害羞。 雖然有時會猶豫要不要挑戰新事物，但是會在雪莉玫和其他朋友的鼓舞下學習新事物。""",
    gender: '男',
    characteristics: '腳掌和屁股上有著米奇形狀的印記',
    personality: '害羞',
    hobby: '旅遊，拍照，認識新朋友',
  );

  static const DuffyFriends shellieMay = DuffyFriends(
    fileName: 'shellieMay',
    name: '雪莉玫 ShellieMay',
    story:
        """當米奇和達菲一起從第一次航行返回時，他看著米奇和米妮團聚，也希望自己能有一個最好的朋友，並將這個希望寫進了玻璃瓶中投進海洋。於是米妮回家後製作了一個玫瑰色的粉紅色泰迪熊，帶有美麗的藍眼睛和頭頂的棕色蝴蝶結。米妮把粉色小熊雪莉玫送給了達菲。從那天起，他們成為了好朋友。

雪莉玫比達菲更愛冒險，她心靈手巧，喜歡為她的朋友製作迷人的禮物。 雪莉玫希望她的雙手可以照亮她的朋友們的一天，特別是當他們需要幫助的時候。
""",
    gender: '女',
    characteristics: '長長的睫毛，藍色眼睛，頭戴蝴蝶結，腳掌和屁股上有著米奇形狀的印記',
    personality: '樂觀開朗',
    hobby: '旅遊，打扮，認識新朋友',
  );

  static const DuffyFriends gelatoni = DuffyFriends(
    fileName: 'gelatoni',
    name: '傑拉多尼 Gelatoni',
    story:
        """達菲在義大利旅行時不小心把手上的冰淇淋掉在地上，在他感到沮喪時，一旁的傑拉多尼安慰了達菲，並用自己的尾巴將掉落在地上的冰淇淋當作顏料畫畫。達菲看到後十分驚喜，於是他也畫了一副米奇的畫像跟達菲交換，從此他們便成為了好朋友。

傑拉多尼是一隻陽光個性的藝術畫家貓， 足智多謀，他可以把尾巴當作畫筆，或者用任何可用的東西創作一件藝術品。 除了對藝術充滿熱情外，傑拉多尼還能從一切事物中看到美：他能在各處找到靈感，從對著陽光微笑的花朵到公園的長椅。 作為一名藝術家，他有時有點不可預測，但他的朋友覺得他那部分很有趣。
""",
    gender: '男',
    characteristics: '像畫筆般的尾巴，粉紅色耳朵，有跟畫家帽同色的眼睛',
    personality: '聰明，可愛',
    hobby: '畫畫',
  );

  static const DuffyFriends stellaLou = DuffyFriends(
    fileName: 'stellaLou',
    name: '星黛露 StellaLou',
    story:
        """有一天達菲遇見了跌跌撞撞練習舞蹈的星黛露，達菲擔心她會不會跌到，於是上前關心。星黛露向達菲自我介紹，説自己的夢想是成為一位舞蹈家，並跟達菲分享了夢想的意義。達菲看著星黛露的舞蹈，感嘆地說：「你像星星一樣閃耀。」星黛露很開心，兩人變成了好朋友。

星黛露最喜歡跳芭蕾舞，每當她聽到播放音樂或鳥兒唱歌時，她就想隨著聲音跳舞。 在百老匯舞臺上表演的道路並不容易，但她堅定不移。 如果她犯了錯誤，她會一直努力，直到她做對了為止。 所有的朋友都為她加油，他們被她為實現目標而付出的辛勤工作所激勵和鼓勵。
""",
    gender: '女',
    characteristics: '紫色的毛髮，長長的耳朵有著米奇的印記',
    personality: '有夢想，快樂，勤奮堅定',
    hobby: '愛好，跳舞，夢想成為舞蹈家',
  );

  static const DuffyFriends cookieAnn = DuffyFriends(
    fileName: 'cookieAnn',
    name: '可琦安 CookieAnn',
    story:
        """當達菲拿著棉花糖散步時，不小心撞上捧著高高疊著的鬆餅的可琦安，鬆餅跟棉花糖飛滿天空。可琦安靈機一動有了新想法－－棉花糖鬆餅！將手上僅剩的一塊鬆餅接住了棉花糖，做成了這個新甜點並分給了新朋友達菲。

可琦安是一隻黃色的狗狗，她的鼻子敏感，耳朵長長的，是一個充滿激情和樂觀的朋友，喜歡透過結合事物來發明一些新穎的東西。 她頭上戴著一頂廚師的帽子，是喜歡發明創意食譜的「專家」，以意想不到的美味方式給她的朋友帶來驚喜和快樂。""",
    gender: '女',
    characteristics: '黃色毛髮，頭戴的廚師帽還繫著粉紅色的蝴蝶結，有毛茸茸而且垂著的長耳朵',
    personality: '嗅覺靈敏，活潑熱情',
    hobby: '研究創意食譜',
  );

  static const DuffyFriends oluMel = DuffyFriends(
    fileName: 'oluMel',
    name: '奧樂米拉 Olu Mel',
    story:
        """達菲和米奇在划船到小島為雪莉玫尋找生日禮物的途中，被一陣輕快的旋律吸引到了一個港灣，在那裡遇見了小海龜奧樂米拉。達菲聽到他的歌聲後便覺得這就是送給雪莉玫最好的禮物了，於是邀請奧樂米拉出席雪莉玫的生日派對，然後大家一起唱著奧樂米拉創作的歌曲，為雪莉玫渡過了一個美好而難忘的生日。

奧樂米拉是一隻略帶害羞和矜持的烏龜，但對音樂確實充滿熱情和天賦。 被夏威夷美麗的大自然所包圍，他學會了如何聆聽和欣賞大自然播放的音樂——鳥類、樹木、風和海浪。 他還用他的尤克里裡來寫關於自然、冒險和友誼的歌曲，這些歌曲有能力給他的朋友和自己帶來勇氣和微笑！ """,
    gender: '男',
    characteristics: '圓圓的腦袋，隨身攜帶者烏克麗麗',
    personality: '憨厚可愛，多才多藝',
    hobby: '音樂，喜歡大自然',
  );

  static const DuffyFriends linabell = DuffyFriends(
    fileName: 'linabell',
    name: '玲娜貝兒 Linabell',
    story:
        """有一天達菲在追一隻漂亮的蝴蝶時與米奇走散，碰巧遇見了玲娜貝兒，並向她求助。玲娜貝兒拿出了放大鏡不停地查探著達菲，希望能知道達菲是從哪裡來的。最後多虧了玲娜貝兒，達菲才順利找到了米奇，最後達菲送了一朵紫色蘭花給玲娜貝兒，作為他們成為朋友的信物。

玲娜貝兒是一隻充滿好奇心、熱愛思考的小狐狸，她擁有蓬鬆而毛茸茸的尾巴，耳朵上別着一朵美麗的蘭花。在探險時，她會使用自己標誌性的放大鏡，並且總能在解決問題和解開謎團的過程中收穫成就和快樂。同時，玲娜貝兒酷愛大自然，喜歡與達菲和他的朋友們一起在森林裡度過美好的時光。""",
    gender: '女',
    characteristics: '特徵，粉紅色的毛髮，長長的大尾巴，頭戴紫色蘭花，隨身帶著放大鏡',
    personality: '聰明靈敏，活潑有趣，好奇',
    hobby: '探索和解決謎團，喜歡大自然',
  );
}
