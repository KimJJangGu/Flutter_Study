import 'package:flutter_study/23_12_22/star_bucks/star_bucks.dart';

class StarBucksRepository{
  final List<StarBucks> starBucks = [
    StarBucks(title: '크리스마스 기프티콘', description: '맛있게 드세요', imagePath: 'assets/04_01_cardnews.png'),
    StarBucks(title: '안녕하세요', description: '이게 뭘까요?', imagePath: 'assets/04_02_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_03_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_04_cardnews.png'),
    StarBucks(title: '안녕히 가세요', imagePath: 'assets/04_05_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_06_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_07_cardnews.png'),
    StarBucks(title: '안녕히 가세요', imagePath: 'assets/04_08_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_09_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_10_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_11_cardnews.png'),
    StarBucks(title: '안녕히 가세요', description: '이게 뭘까요?', imagePath: 'assets/04_12_cardnews.png'),
  ];

  List<StarBucks> getStarBucksList() {
    return starBucks;
  }
}