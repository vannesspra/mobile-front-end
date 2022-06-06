import 'package:flutter/material.dart';
import 'package:tugas_kelompok/screen/home_screen.dart';
import 'package:tugas_kelompok/screen/keranjang_screen.dart';
import 'package:tugas_kelompok/provider/produk_provider.dart';
import 'package:tugas_kelompok/screen/list_screen.dart';
import 'package:tugas_kelompok/screen/setting_screen.dart';
import 'package:provider/provider.dart';

class ProdukScreen extends StatefulWidget {
  static const routeName = '/produk';
  const ProdukScreen({Key? key}) : super(key: key);

  @override
  State<ProdukScreen> createState() => _ProdukScreenState();
}

class _ProdukScreenState extends State<ProdukScreen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _body = [HomeScreen(), ListScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ProdukProvider>(context);
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.lightGreen,
          ),
          title: Text(
            ['Komputer Medan', 'List Product', 'Setting'][_currentIndex],
            style: const TextStyle(
                color: Colors.green,
                fontFamily: 'Hubballi',
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Keranjang2())));
                  },
                ),
                //Keranjang Belanja
                Positioned(
                    child: Text(
                  context.watch<ProdukProvider>().keranjang.length.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.notifications,
                  color: Colors.yellow,
                ),
                Positioned(
                    top: 10,
                    right: 0,
                    child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent),
                        child: Text(
                          prov.ttlNotif.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: IconButton(
                  onPressed: () {
                    prov.resetNotif();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            ),
            const Icon(
              Icons.more_vert,
              color: Colors.green,
            )
          ],
          elevation: 0),
      body: _body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
