import 'package:flutter/material.dart';
import 'package:tugas_kelompok/screen/produk_screen.dart';
import 'package:tugas_kelompok/screen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/daftar';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  //Contoh LocalVariabel
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String loginText = "SIGN-UP";
  double defaultPadding = 20;

  //status username dan password kosong!
  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override
  void initState() {
    //Contoh inisialisasi default state. Nilai ini akan tampil saat pertama kali aplikasi run.
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          loginText,
          style: const TextStyle(
              fontFamily: "Hubballi", fontSize: 40, color: Colors.lightBlue),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                //Spacer widget seperti flex untuk mengatur jarak antara widget di flex container, column, atau row.
                const Spacer(),
                //LoginForm
                SizedBox(
                    child: Column(
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          label: const Text('Username'),
                          errorText: isUsernameEmpty == true
                              ? 'Username tidak boleh kosong'
                              : null),
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          label: const Text('Password'),
                          errorText: isPasswordEmpty == true
                              ? 'Password tidak boleh kosong'
                              : null),
                    ),
                  ],
                )),
                SizedBox(height: defaultPadding),

                //LoginButton
                ElevatedButton(
                  onPressed: () {
                    //contoh validasi jika username dan password empty maka tampilkan pesan error
                    if (usernameController.text.isEmpty) {
                      setState(() {
                        isUsernameEmpty = true;
                      });
                    }
                    if (passwordController.text.isEmpty) {
                      setState(() {
                        isPasswordEmpty = true;
                      });
                    }
                    //Jika tidak ada kesalahan navigasi ke halaman produk
                    else {
                      setState(() {
                        isUsernameEmpty = false;
                        isPasswordEmpty = false;
                      });
                      Navigator.pushNamed(context, ProdukScreen.routeName);
                    }
                  },
                  child: Text(
                    loginText,
                    style: const TextStyle(fontFamily: "JosefinSans"),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 2 + 100, 50),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Text('Already have an account ?'),
                      TextButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                      )
                    ],
                  ),
                ),

                const Spacer(),
              ])),
        ),
      ),
    );
  }
}
