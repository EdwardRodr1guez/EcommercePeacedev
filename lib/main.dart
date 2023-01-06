import 'package:flutter/material.dart';
import 'package:flutter_peacedev/pages/pages.dart';
import 'package:flutter_peacedev/providers/add_like_provider.dart';
import 'package:flutter_peacedev/providers/search_provider.dart';
import 'package:flutter_peacedev/providers/select_page_provider.dart';
import 'package:flutter_peacedev/services/product_services.dart';
import 'package:flutter_peacedev/shared_preferences/my_preferences.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  await SPHelper.sp.initSharedPreferences();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => SelectPageProvider(),),
                ChangeNotifierProvider(create: (_) => ProductServices()),
                ChangeNotifierProvider(create: (_) => AddLikeProvider()),
                ChangeNotifierProvider(create: (_) => SearchProvider()),
               ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromRGBO(36, 206, 158, 1)),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

