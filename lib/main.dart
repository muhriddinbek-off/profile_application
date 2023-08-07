import 'package:flutter/material.dart';
import 'package:profile_application/provider/user_provider.dart';
import 'package:profile_application/scrins/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserModal(firstName: 'David', lastName: 'Picture', userName: 'yANChUI', email: 'yanchui@gmail.com', password: 'evFTbyVVCd', img: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg', phone: '+14987889999'),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
        },
      ),
    );
  }
}
