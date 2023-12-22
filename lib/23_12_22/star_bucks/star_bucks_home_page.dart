import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_repository.dart';
import 'package:lottie/lottie.dart';

class StarBucksHomePage extends StatefulWidget {
  const StarBucksHomePage({super.key});

  @override
  State<StarBucksHomePage> createState() => _StarBucksHomePageState();
}

class _StarBucksHomePageState extends State<StarBucksHomePage> {
  final List<StarBucks> starBucksList = [];

  final StarBucksRepository starBucksRepository = StarBucksRepository();

  @override
  void initState() {
    starBucksList.addAll(starBucksRepository.getStarBucksList());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mail_lock_outlined,
                    color: Colors.black38,
                  ),
                  label: const Text(
                    textAlign: TextAlign.left,
                    "What's New",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
                titlePadding: const EdgeInsets.only(left: 4, bottom: 4),
                background: Lottie.asset(
                  'assets/lottie/santa.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // 다른 위젯 추가
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image.asset(
                      'assets/01_01_2023_winter_e-frequency.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.asset(
                    'assets/03_01_chrismas_event.png',
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "What's New",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 12, color: Colors.green),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: SizedBox(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: starBucksList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    starBucksList[index].imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  starBucksList[index].title,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  starBucksList[index].description ?? '',
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/05_01_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/05_02_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/06_01_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/06_02_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/06_03_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/06_04_card.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset('assets/06_05_card.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          // 눌렀을 때 반응
        },
        child: const Icon(Icons.sports_motorsports, color: Colors.white,),
      ),
    );
  }
}
