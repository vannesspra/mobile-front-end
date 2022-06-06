import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/provider/produk_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreen();
}

class Element {
  String label;
  Color color;
  bool isSelected;
  Element(this.label, this.color, this.isSelected);
}

class _SettingScreen extends State<SettingScreen> {
  //Status pilih sekolah
  bool good = false;
  bool bad = false;
  bool normal = false;
  bool puas1 = false;
  bool puas2 = false;
  bool puas3 = false;

  String itemSelected = 'Pilih Pekerjaan';

  List items = [
    'Pilih Pekerjaan',
    'Mahasiswa',
    'Dosen',
    'Programmer',
    'Atlit',
    'Guru',
    'Frontliner',
    'PNS',
    'Wiraswasta'
  ];
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ProdukProvider>(context);

    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(20), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
                title: const Text('Dark mode theme'),
                secondary: const Icon(Icons.dark_mode),
                activeColor: Colors.green,
                selected: prov.enableDarkMode,
                value: prov.enableDarkMode,
                onChanged: (val) {
                  prov.setBrightness = val;
                }),
            const Divider(),
            const Text('Feedback For Developer : ',
                style: TextStyle(fontFamily: 'JosefinSans', fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pekerjaan',
                  style: TextStyle(fontFamily: 'Hubballi', fontSize: 25),
                ),
                DropdownButton(
                    items: items.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: itemSelected,
                    onChanged: (val) {
                      setState(() {
                        itemSelected = val as String;
                      });
                    }),
              ],
            ),
            const Text("Rate the app !",
                style: TextStyle(fontFamily: 'Hubballi', fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ChoiceChip(
                  label: const Text('Good'),
                  selectedColor: Colors.red[200],
                  selected: good,
                  onSelected: (val) {
                    setState(() {
                      good = val;
                    });
                  },
                ),
                ChoiceChip(
                  label: const Text('Bad'),
                  selectedColor: Colors.red[200],
                  selected: bad,
                  onSelected: (val) {
                    setState(() {
                      bad = val;
                    });
                  },
                ),
                ChoiceChip(
                  label: const Text('Normal'),
                  selectedColor: Colors.red[200],
                  selected: normal,
                  onSelected: (val) {
                    setState(() {
                      normal = val;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            const Text('How satisfied are you ? (1 - 3)',
                style: TextStyle(fontFamily: 'Hubballi', fontSize: 20)),
            Row(
              children: [
                const SizedBox(width: 5),
                Checkbox(
                  value: puas1,
                  onChanged: (val) {
                    setState(() {
                      puas1 = val!;
                    });
                  },
                ),
                Checkbox(
                  value: puas2,
                  onChanged: (val) {
                    setState(() {
                      puas2 = val!;
                    });
                  },
                ),
                Checkbox(
                  value: puas3,
                  onChanged: (val) {
                    setState(() {
                      puas3 = val!;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            const Text('Saran Tema Aplikasi : ',
                style: TextStyle(fontFamily: 'Hubballi', fontSize: 20)),
            Row(
              children: [
                FilterChip(
                  label: const Text('Anime'),
                  selectedColor: Colors.red,
                  selected: prov.statusSekolah,
                  onSelected: (val) {
                    prov.setSekolah = val;
                  },
                ),
                const SizedBox(width: 5),
                FilterChip(
                  label: const Text('Space'),
                  selectedColor: Colors.deepPurple,
                  selected: prov.statusPraktik,
                  onSelected: (val) {
                    prov.setPraktik = val;
                  },
                ),
                const SizedBox(width: 5),
                FilterChip(
                  label: const Text('Earh'),
                  selectedColor: Colors.green,
                  selected: prov.statusKursus,
                  onSelected: (val) {
                    prov.setKursus = val;
                  },
                ),
              ],
            ),
            const Divider(),
            const Text('Saran : ',
                style: TextStyle(fontFamily: 'Hubballi', fontSize: 20)),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ketikkan saran anda',
              ),
            ),
            const Divider(),
            Text("Pekerjaan : $itemSelected",
                style: const TextStyle(fontFamily: 'Hubballi', fontSize: 20)),
            const Divider(),
            ElevatedButton(onPressed: () {}, child: const Text('Send'))
          ],
        ),
      ]),
    );
  }
}
