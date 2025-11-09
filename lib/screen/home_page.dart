import 'package:flutter/material.dart';
import 'cekdetail_page.dart';
import 'profile_page.dart';
import 'package:uts_layout/screens/widgets/mobil_card.dart';
import 'package:uts_layout/screens/widgets/paket_liburan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mobil Tersedia'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          MobilCard(nama: 'Toyota Avanza - AE 781 BU', harga: 'Rp 350.000 / hari'),
          MobilCard(nama: 'Honda Brio - AG 1899 OA', harga: 'Rp 300.000 / hari'),
          MobilCard(nama: 'Suzuki Ertiga - L 1156 KA', harga: 'Rp 400.000 / hari'),
          SizedBox(height: 20),
          PaketLiburanSection(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 0,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Riwayat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
