import 'package:flutter/material.dart';

class ProdukWidget extends StatelessWidget {
  final String namaProduk;
  final TextEditingController ctrl;
  final VoidCallback press;
  final bool? status;
  final Image gambar;

  const ProdukWidget(
      {Key? key,
      required this.namaProduk,
      required this.ctrl,
      required this.press,
      required this.gambar,
      required this.status})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultPadding = 10.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 40,
              child: gambar,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$namaProduk',
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.lightGreen,
                      fontFamily: 'JosefinSans'),
                ),
                Text(
                  'Detail $namaProduk',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 50,
              child: TextField(
                controller: ctrl,
              ),
            ),
            SizedBox(width: defaultPadding / 1),
            Center(
                child: IconButton(
                    onPressed: status! ? press : press,
                    icon: status!
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.add_shopping_cart_outlined,
                          )))
          ],
        )
      ],
    );
  }
}
