import 'package:flutter/material.dart';
import 'package:tugas_kelompok/provider/produk_provider.dart';
import 'package:tugas_kelompok/components/product_widget.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  static const routeName = '/produk';
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ProdukProvider>(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              ProdukWidget(
                namaProduk: 'Mouse',
                ctrl: context.watch<ProdukProvider>().mouseController,
                status: context.watch<ProdukProvider>().isMouseAdd,
                gambar: Image.asset('assets/images/mouse.jpg'),
                press: () {
                  print('Mouse');

                  if (context.read<ProdukProvider>().isMouseAdd) {
                    context.read<ProdukProvider>().setMouseStatus = false;
                  } else {
                    context.read<ProdukProvider>().setMouseStatus = true;
                    context.read<ProdukProvider>().isiKeranjang = {
                      "title": 'Mouse',
                      "total":
                          context.read<ProdukProvider>().mouseController.text
                    };
                  }
                },
              ),
              ProdukWidget(
                namaProduk: 'Keyboard',
                ctrl: context.watch<ProdukProvider>().kbCtrl,
                status: context.watch<ProdukProvider>().isKBAdd,
                gambar: Image.asset('assets/images/keyboard.jpg'),
                press: () {
                  print('Keyboard');

                  if (context.read<ProdukProvider>().isKBAdd) {
                    context.read<ProdukProvider>().setKB = false;
                  } else {
                    context.read<ProdukProvider>().setKB = true;
                    context.read<ProdukProvider>().isiKeranjang = {
                      "title": 'Keyboard',
                      "total": context.read<ProdukProvider>().kbCtrl.text
                    };
                  }
                },
              ),
              ProdukWidget(
                namaProduk: 'Headset',
                ctrl: context.watch<ProdukProvider>().headCtrl,
                status: context.watch<ProdukProvider>().isheadAdd,
                gambar: Image.asset('assets/images/headset.jpg'),
                press: () {
                  print('Headset');

                  if (context.read<ProdukProvider>().isheadAdd) {
                    context.read<ProdukProvider>().setHs = false;
                  } else {
                    context.read<ProdukProvider>().setHs = true;
                    context.read<ProdukProvider>().isiKeranjang = {
                      "title": 'Headset',
                      "total": context.read<ProdukProvider>().headCtrl.text
                    };
                  }
                },
              ),
              ProdukWidget(
                namaProduk: 'Microphone',
                ctrl: context.watch<ProdukProvider>().micCtrl,
                status: context.watch<ProdukProvider>().isMicAdd,
                gambar: Image.asset('assets/images/mic.jpg'),
                press: () {
                  print('Microphone');

                  if (context.read<ProdukProvider>().isMicAdd) {
                    context.read<ProdukProvider>().setMic = false;
                  } else {
                    context.read<ProdukProvider>().setMic = true;
                    context.read<ProdukProvider>().isiKeranjang = {
                      "title": 'Microphone',
                      "total": context.read<ProdukProvider>().micCtrl.text
                    };
                  }
                },
              ),
              ProdukWidget(
                namaProduk: 'Monitor',
                ctrl: context.watch<ProdukProvider>().moCtrl,
                status: context.watch<ProdukProvider>().isMoAdd,
                gambar: Image.asset('assets/images/monitor.jpg'),
                press: () {
                  print('Monitor');

                  if (context.read<ProdukProvider>().isMoAdd) {
                    context.read<ProdukProvider>().setMo = false;
                  } else {
                    context.read<ProdukProvider>().setMo = true;
                    context.read<ProdukProvider>().isiKeranjang = {
                      "title": 'Monitor',
                      "total": context.read<ProdukProvider>().moCtrl.text
                    };
                  }
                },
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Notif"),
        icon: const Icon(Icons.add),
        onPressed: () {
          prov.setTTLNotif = prov.ttlNotif + 1;
        },
      ),
    );
  }
}
