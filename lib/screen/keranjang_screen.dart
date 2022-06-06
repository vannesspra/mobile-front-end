import 'package:flutter/material.dart';
import 'package:tugas_kelompok/provider/produk_provider.dart';
import 'package:provider/provider.dart';

class Keranjang2 extends StatelessWidget {
  const Keranjang2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = context.read<ProdukProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Keranjang',
          style: TextStyle(
              fontFamily: 'Hubballi', fontSize: 35, color: Colors.green),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'List Belanja',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: 'SquarePeg',
                    color: Colors.greenAccent),
              ),
              Divider(),
              //List Keranjang
              Column(
                children: provider.keranjang.map((val) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //kiri
                      Text(
                        '${val['title']}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'JosefinSans'),
                      ),
                      //kanan
                      Text('${val['total']} item')
                    ],
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              //Button CheckOut
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      context.read<ProdukProvider>().setMouseStatus = false;
                      context.read<ProdukProvider>().keranjang.clear();
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                    child: const Text(
                      'BAYAR!',
                      style: TextStyle(fontSize: 15),
                    )),
              )
            ],
          )),
    );
  }
}
