import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:review_apple_watch/constanta.dart';
import 'package:review_apple_watch/global_provider.dart';
import 'package:review_apple_watch/screens/detail_page.dart';
import 'package:review_apple_watch/widget/appbar.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => GlobalProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle().copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = "Apple Watch Series 6";

  @override
  Widget build(BuildContext context) {
    return ListenableProvider<GlobalProvider>(
      create: (context) => GlobalProvider(),
      builder: (context, _) => AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            systemNavigationBarContrastEnforced: true,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: yellow),
        child: Scaffold(
          backgroundColor: white,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: MyAppBar(title: title)),
          body: const DetailPage(),
        ),
      ),
    );
  }
}
