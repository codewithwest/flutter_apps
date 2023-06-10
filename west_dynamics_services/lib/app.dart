import 'cart.dart';
import 'search_tab.dart';
import 'services_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class WestDynamicsStoreApp extends StatelessWidget {
  const WestDynamicsStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Limits woeking to potrait
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: WestDynamicsStoreHomePage(),
    );
  }
}

class WestDynamicsStoreHomePage extends StatelessWidget {
  const WestDynamicsStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Services'),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: ServicesListtab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: ShoppingCartTab(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
