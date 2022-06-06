import 'package:flutter/material.dart';
import 'package:tugas_kelompok/provider/produk_provider.dart';
import 'package:tugas_kelompok/screen/produk_screen.dart';
import 'package:tugas_kelompok/screen/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/screen/signup_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ProdukProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ProdukProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: prov.enableDarkMode == true ? prov.dark : prov.light,

      // home: const LoginScreen(),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        ProdukScreen.routeName: (context) => const ProdukScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
      },
    );
  }
}
