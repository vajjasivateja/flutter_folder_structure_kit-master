import 'package:flutter/material.dart';
import 'package:t_store/config/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Structure",
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Awesome! 🎊 Project Structure is set up and running. \n Happy Coding 🎊',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
