import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: const <Widget>[
            SizedBox(height: 20.0),
            Listview(),
            SizedBox(height: 20.0),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}

class Listview extends StatelessWidget {
  const Listview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        height: 250.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            ItemCard(),
            ItemCard1(),
            ItemCard2(),
            ItemCard3(),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 250.0,
        width: 500.0,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/fantech.jpg'),
                fit: BoxFit.fitHeight)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'GEAR IT UP',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        fontFamily: 'SquarePeg',
                        letterSpacing: 1.1),
                  ),
                  Text(
                    'and be the winner',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'JosefinSans',
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard1 extends StatelessWidget {
  const ItemCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 250.0,
        width: 500.0,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/msi.png'),
                fit: BoxFit.fitHeight)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Be A Beast',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inspiration',
                        fontSize: 40.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard2 extends StatelessWidget {
  const ItemCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 250.0,
        width: 500.0,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/nzkt.jpeg'),
                fit: BoxFit.fitHeight)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'NZKT',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        fontFamily: 'Hubballi',
                        letterSpacing: 1.1),
                  ),
                  Text(
                    'casing for everyone',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard3 extends StatelessWidget {
  const ItemCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 250.0,
        width: 500.0,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/amd.jpg'),
                fit: BoxFit.fitHeight)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'AMD',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'JosefinSans',
                        fontSize: 40.0,
                        letterSpacing: 1.1),
                  ),
                  Text(
                    'FOR GAMERS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Popular Product',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.greenAccent,
                fontFamily: 'Hubballi',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          MenuItem(),
          MenuItem2(),
          MenuItem3(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/images/mouse.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.yellow,
                        ),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Mouse Logitech G Pro X Superlight',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200.0,
                    child: const Text(
                      'Pro-Grade Wireless; Sensor Hero 25K; Weight < 63 Gr',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem2 extends StatelessWidget {
  const MenuItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/images/headset.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Logitech G Pro X Gaming Headset',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200.0,
                    child: const Text(
                      'Noise Isolation 16 DB; Response 20 Hz - 20 Khz;',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem3 extends StatelessWidget {
  const MenuItem3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/images/keyboard.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                        Icon(Icons.star, size: 15.0, color: Colors.yellow),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Fantech MaxFits 67',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200.0,
                    child: const Text(
                      'Gateron Hotswap ; 65% Form Factor; South Facing PCB',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
