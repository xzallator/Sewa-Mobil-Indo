import 'package:flutter/material.dart';

class MobilDetailPage extends StatelessWidget {
  final String namaMobil;
  final String harga;

  const MobilDetailPage({
    super.key,
    required this.namaMobil,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    final spesifikasi = {
      'Merk': 'Toyota',
      'Model': 'Avanza 1.5 G',
      'Nomor Polisi': 'AE 781 BU',
      'Tahun': '2021',
      'Warna': 'Putih Mutiara',
      'Transmisi': 'Automatic',
      'Kapasitas Mesin': '1500 cc',
      'Kapasitas Penumpang': '7 Orang',
      'Fasilitas': 'AC, Audio, GPS, Kamera Belakang',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(namaMobil),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.directions_car_filled,
                  color: Colors.blueAccent, size: 100),
            ),
            const SizedBox(height: 20),
            const Text('Spesifikasi Mobil',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            Expanded(
              child: ListView(
                children: spesifikasi.entries.map((e) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(e.key,
                            style: const TextStyle(color: Colors.black54)),
                        Text(e.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87)),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text('Sewa Sekarang - $harga',
                    style: const TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
