import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Absensi Siswa',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Absensi Siswa',
                  style: TextStyle(
                    fontFamily: 'Bahnschrift Condensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'SMK Muhammadiyah Adam Malik',
                  style: TextStyle(
                    fontFamily: 'Bahnschrift Condensed',
                    fontSize: 12,
                    color: Color.fromARGB(255, 121, 121, 121),
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search,
                    color: Color.fromARGB(255, 170, 170, 170)),
                onPressed: () {},
              ),
              const SizedBox(width: 0),
              IconButton(
                icon: const Icon(Icons.offline_share,
                    color: Color.fromARGB(255, 170, 170, 170)),
                onPressed: () {},
              ),
              const SizedBox(width: 0),
              IconButton(
                icon: const Icon(Icons.more_vert,
                    color: Color.fromARGB(255, 170, 170, 170)),
                onPressed: () {},
              ),
            ],
          ),
          body: const HomePage(),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: const Color.fromARGB(255, 85, 173, 255),
            unselectedItemColor: const Color.fromARGB(255, 124, 122, 122),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                const TextStyle(color: Color.fromARGB(255, 85, 173, 255)),
            unselectedLabelStyle:
                const TextStyle(color: Color.fromARGB(255, 124, 122, 122)),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Pengaturan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Akun',
              ),
            ],
          ),
        ));
  }
}
