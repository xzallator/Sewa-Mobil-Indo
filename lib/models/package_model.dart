// lib/models/package_model.dart
class PackageModel {
  final String namaKota;
  final String deskripsi;
  final String imageUrl;

  PackageModel({
    required this.namaKota,
    required this.deskripsi,
    required this.imageUrl,
  });
}

final List<PackageModel> paketLiburan = [
  PackageModel(
    namaKota: 'JOGJA',
    deskripsi: 'Nikmati wisata budaya dan kuliner khas Yogyakarta',
    imageUrl: 'assets/images/jogja.jpg',
  ),
  PackageModel(
    namaKota: 'DENPASAR',
    deskripsi: 'Liburan pantai dan budaya Bali',
    imageUrl: 'assets/images/denpasar.jpg',
  ),
  PackageModel(
    namaKota: 'MALANG',
    deskripsi: 'Sejuknya pegunungan dan wisata alam di Malang',
    imageUrl: 'assets/images/malang.jpg',
  ),
];
