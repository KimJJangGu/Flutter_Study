import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Xlophone(),
    );
  }
}

class Xlophone extends StatefulWidget {
  const Xlophone({super.key});

  @override
  State<Xlophone> createState() => _XlophoneState();
}

class _XlophoneState extends State<Xlophone> {
  Soundpool pool = Soundpool.fromOptions(options: SoundpoolOptions.kDefault);

  final List<int> _soundIds = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    initSoundPool();
  }

  Future<void> initSoundPool() async {
    int soundId = await rootBundle.load('assets/do1.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/re.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/mi.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/fa.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/sol.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/la.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/si.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    soundId = await rootBundle.load('assets/do2.wav').then((soundData) => pool.load(soundData));

    _soundIds.add(soundId);

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/jg.jpg'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('실로폰'),
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    // Padding: 공간에 여백을 주는 것
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: gunban('도', Colors.blue, _soundIds[0]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0), // symmetric vertical 상, 하만 조절
                    child: gunban('레', Colors.blue, _soundIds[1]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0), // symmetric vertical 상, 하만 조절
                    child: gunban('미', Colors.blue, _soundIds[2]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0), // symmetric vertical 상, 하만 조절
                    child: gunban('파', Colors.blue, _soundIds[3]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0), // symmetric vertical 상, 하만 조절
                    child: gunban('솔', Colors.blue, _soundIds[4]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 56.0), // symmetric vertical 상, 하만 조절
                    child: gunban('라', Colors.blue, _soundIds[5]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 64.0), // symmetric vertical 상, 하만 조절
                    child: gunban('시', Colors.blue, _soundIds[6]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 72.0), // symmetric vertical 상, 하만 조절
                    child: gunban('도', Colors.blue, _soundIds[7]),
                  ),
                ],
              ),
      ),
    );
  }

  Widget gunban(String text, Color color, int soundId) {
    return GestureDetector(
      onTap: () {
        pool.play(soundId);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.blue,
        ),
        width: 50,
        height: double.infinity,
        child: Image.asset(
          'assets/pjm.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
