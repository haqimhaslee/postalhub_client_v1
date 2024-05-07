import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:postalhub_client/home/home.dart';
import 'package:postalhub_client/me/me.dart';
import 'package:postalhub_client/shipment/shipment.dart';

class NavigatorServices extends StatefulWidget {
  const NavigatorServices({super.key});
  @override
  State<NavigatorServices> createState() => _NavigatorServicesState();
}

class _NavigatorServicesState extends State<NavigatorServices> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const Shipment(),
    const MeProfile(),
  ];
  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          //height: 70,
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (i) => setState(() => _selectedIndex = i),
            destinations: const [
              /// Home
              NavigationDestination(
                label: "Home",
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded),
              ),
              NavigationDestination(
                label: "Shipment",
                icon: Icon(Icons.local_shipping_outlined),
                selectedIcon: Icon(Icons.local_shipping_rounded),
              ),

              NavigationDestination(
                label: "Me",
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person_rounded),
              ),

              /// Profile
            ],
          ),
        ),
        appBar: AppBar(
          //elevation: 1,
          //scrolledUnderElevation: 1,
          title: const Row(children: [
            Text('Postal Hub'),
          ]),
        ),
        body: Expanded(
          child: PageTransitionSwitcher(
            transitionBuilder: (child, animation, secondaryAnimation) =>
                SharedAxisTransition(
              transitionType: SharedAxisTransitionType.vertical,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            ),
            child: _windgetOption.elementAt(_selectedIndex),
          ),
        ));
  }
}
