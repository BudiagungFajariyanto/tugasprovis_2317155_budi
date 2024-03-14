class Mahasiswa {
  String nama;
  String jurusan;

  Mahasiswa(this.nama, this.jurusan);

  void displayInfo() {
    print('Nama: $nama, Jurusan: $jurusan');
  }
}

class PertukaranMahasiswa {
  List<Mahasiswa> mahasiswaList = [];

  void tambahMahasiswa(Mahasiswa mahasiswa) {
    mahasiswaList.add(mahasiswa);
    print('${mahasiswa.nama} berhasil ditambahkan ke dalam program pertukaran.');
  }

  Future<List<Mahasiswa>> ambilMahasiswaAsync() async {
    await Future.delayed(Duration(seconds: 2));
    return mahasiswaList;
  }
}

void main() async {
  PertukaranMahasiswa programPertukaran = PertukaranMahasiswa();

  programPertukaran.tambahMahasiswa(Mahasiswa('Yunita', 'Teknik Informatika'));
  programPertukaran.tambahMahasiswa(Mahasiswa('Reski', 'Ilmu Komputer'));
  programPertukaran.tambahMahasiswa(Mahasiswa('Budi', 'Sistem Informasi'));

  print('Mengambil data mahasiswa yang sedang bertukar...');
  List<Mahasiswa> mahasiswaBertukar = await programPertukaran.ambilMahasiswaAsync();

  print('\nDaftar Mahasiswa yang Bertukar:');
  mahasiswaBertukar.forEach((mahasiswa) {
    mahasiswa.displayInfo();
  });
}
