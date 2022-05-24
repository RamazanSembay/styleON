import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:styleon/provider/admin_login_provider.dart';
import 'package:styleon/provider/favorite_provider.dart';
import 'package:styleon/view/home_view.dart';
import 'package:styleon/view/welcome_view.dart';

import 'provider/cart_provider.dart';
import 'provider/login_provider.dart';
import 'provider/register_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(
          create: (context) => (LoginProvider()),
        ),
        ChangeNotifierProvider<RegisterProvider>(
          create: (context) => (RegisterProvider()),
        ),
        ChangeNotifierProvider<CartProvider>(
          create: (context) => (CartProvider()),
        ),
        ChangeNotifierProvider<AdminLoginProvider>(
          create: (context) => (AdminLoginProvider()),
        ),
        ChangeNotifierProvider<FavoriteProvider>(
          create: (context) => (FavoriteProvider()),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'OpenSans',
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeView();
            } else {
              return WelcomeView();
            }
          },
        ),
      ),
    );
  }
}
