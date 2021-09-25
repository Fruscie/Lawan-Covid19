class KasusCovidModel {
  String? provinsi;
  int? kasus;
  int? dirawat;
  int? sembuh;
  int? meninggal;

  KasusCovidModel(
      {this.provinsi, this.kasus, this.dirawat, this.sembuh, this.meninggal});

  factory KasusCovidModel.fromJson(Map<String, dynamic> json) =>
      KasusCovidModel(
        provinsi: json['provinsi'],
        kasus: json['kasus'],
        dirawat: json['dirawat'],
        sembuh: json['sembuh'],
        meninggal: json['meninggal'],
      );
}
