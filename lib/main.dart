import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_refacotry/src/bindings/app_binding.dart';
import 'package:together_refacotry/src/bindings/init_binding.dart';
import 'package:together_refacotry/src/components/splash_screen.dart';
import 'package:together_refacotry/src/pages/app.dart';
import 'package:together_refacotry/src/pages/login_page.dart';
import 'package:together_refacotry/src/pages/sign_up_page.dart';
import 'package:together_refacotry/src/pages/views/add_project_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Together',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      initialRoute: '/',
      initialBinding: InitBindings(),
      getPages: [
        GetPage(name: '/', page: () => const SplashPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/signUp', page: () => const SignUpPage()),
        GetPage(name: '/app', page: () => const App(), binding: AppBinding()),
        GetPage(name: '/addProject', page: () => const AddProjectPage())
      ],
    );
  }
}
