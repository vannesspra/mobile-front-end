import 'package:flutter/material.dart';

class ProdukProvider extends ChangeNotifier {
  //initialisasi nilai awal
  bool _diSekolah = false;
  bool _diPraktik = true;
  bool _diKursus = false;

  //Ini akan return nilai dari sekolah, dipraktik, dst. Ingat konsep OOP setter || getter
  bool get statusSekolah => _diSekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;

  //Perubahan state, ingat konsep Listen pada StateManajamenen
  set setSekolah(val) {
    _diSekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }

  //Setting
  var light =
      ThemeData(brightness: Brightness.light, primarySwatch: Colors.orange);

  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  );

  bool _enableDarkMode = true;

  bool get enableDarkMode => _enableDarkMode;

  set setBrightness(val) {
    _enableDarkMode = val;
    notifyListeners();
  }

  String titleScreen = 'Komputer Medan';
  int _ttlNotif = 0;

  int get ttlNotif => _ttlNotif;
  set setTTLNotif(int val) {
    _ttlNotif += val;
    notifyListeners();
  }

  resetNotif() {
    _ttlNotif = 0;
    notifyListeners();
  }

  final List<Map<String, String>> _keranjang = [];
  List<Map<String, String>> get keranjang => _keranjang;
  set isiKeranjang(val) {
    _keranjang.add(val);
    notifyListeners();
  }

  TextEditingController mouseController = TextEditingController();

  bool _isMouseAdd = false;
  bool get isMouseAdd => _isMouseAdd;
  set setMouseStatus(val) {
    _isMouseAdd = val;
    notifyListeners();
  }

  TextEditingController kbCtrl = TextEditingController();

  bool _isKBAdd = false;
  bool get isKBAdd => _isKBAdd;
  set setKB(val) {
    _isKBAdd = val;
    notifyListeners();
  }

  TextEditingController headCtrl = TextEditingController();

  bool _isheadAdd = false;
  bool get isheadAdd => _isKBAdd;
  set setHs(val) {
    _isheadAdd = val;
    notifyListeners();
  }

  TextEditingController micCtrl = TextEditingController();

  bool _isMicAdd = false;
  bool get isMicAdd => _isKBAdd;
  set setMic(val) {
    _isMicAdd = val;
    notifyListeners();
  }

  TextEditingController moCtrl = TextEditingController();

  bool _isMoAdd = false;
  bool get isMoAdd => _isKBAdd;
  set setMo(val) {
    _isMoAdd = val;
    notifyListeners();
  }
}
