import 'package:art/pages/home_page.dart';
import 'package:art/pages/photo_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      onGenerateRoute: (settings) {
        final routes = {
          HomePage.route: (_) => const HomePage(),
          PhotoDetailPage.route: (_) => PhotoDetailPage(
                args: settings.arguments as PhotoDetailPageArgs,
              ),
        };
        return MaterialPageRoute(builder: routes[settings.name]!);
      },
    );
  }
}
