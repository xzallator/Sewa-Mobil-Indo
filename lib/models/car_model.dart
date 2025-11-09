// lib/models/car_model.dart
class CarModel {
  final String nama;
  final String harga;
  final Map<String, String> spesifikasi;

  CarModel({
    required this.nama,
    required this.harga,
    required this.spesifikasi,
  });
}

// Contoh data dummy
final List<CarModel> daftarMobil = [
  CarModel(
    nama: 'Toyota Avanza - AE 781 BU',
    harga: 'Rp 350.000 / hari',
    spesifikasi: {
      'Merk': 'Toyota',
      'Model': 'Avanza 1.5 G',
      'Nomor Polisi': 'AE 781 BU',
      'Tahun': '2021',
      'Warna': 'Putih Mutiara',
      'Transmisi': 'Automatic',
      'Kapasitas Mesin': '1500 cc',
      'Kapasitas Penumpang': '7 Orang',
      'Fasilitas': 'AC, Audio, Charger, GPS, Kamera Belakang',
    },
  ),
  CarModel(
    nama: 'Honda Brio - AG 1899 OA',
    harga: 'Rp 300.000 / hari',
    spesifikasi: {
      'Merk': 'Honda',
      'Model': 'Brio Satya',
      'Nomor Polisi': 'AG 1899 OA',
      'Tahun': '2020',
      'Warna': 'Kuning',
      'Transmisi': 'Manual',
      'Kapasitas Mesin': '1200 cc',
      'Kapasitas Penumpang': '5 Orang',
      'Fasilitas': 'AC, Audio, Bluetooth, Kamera Belakang',
    },
  ),
];

