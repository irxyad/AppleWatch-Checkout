import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:review_apple_watch/app/utils/global_provider.dart';
import 'app/utils/constanta.dart';
import 'app/screens/detail_page.dart';
import 'app/widget/appbar.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => GlobalProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String title = "Apple Watch Series 6";

  @override
  Widget build(BuildContext context) {
    return ListenableProvider<GlobalProvider>(
      create: (context) => GlobalProvider(),
      builder: (context, _) => AnnotatedRegion(
        value: const SystemUiOverlayStyle(systemNavigationBarColor: yellow),
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
