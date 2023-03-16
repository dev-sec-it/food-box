import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_admin_scaffold_example/cafeteria/cafeteria_order.dart';
import 'package:flutter_admin_scaffold_example/cafeteria/cafeteria_page1.dart';
import 'package:flutter_admin_scaffold_example/cafeteria/cafeteria_page2.dart';
import 'package:flutter_admin_scaffold_example/incidents/all_incidents.dart';
import 'package:flutter_admin_scaffold_example/incidents/new_incident.dart';
import 'package:flutter_admin_scaffold_example/kitchen/add_kitchen.dart';
import 'package:flutter_admin_scaffold_example/kitchen/all_kitchen.dart';
import 'package:flutter_admin_scaffold_example/order/new_orders.dart';
import 'package:flutter_admin_scaffold_example/order/order_history.dart';
import 'package:flutter_admin_scaffold_example/order/pending_order.dart';
import 'package:flutter_admin_scaffold_example/pages/login_page.dart';
import 'package:flutter_admin_scaffold_example/partner/all_partner.dart';
import 'package:flutter_admin_scaffold_example/partner/add_partner.dart';
import 'package:flutter_admin_scaffold_example/customer/AllCustomers.dart';
import 'package:flutter_admin_scaffold_example/customer/AddCustomer.dart';
// import 'package:flutter_admin_scaffold_example/sample_pages/third_level_item_1_page.dart';
// import 'package:flutter_admin_scaffold_example/sample_pages/third_level_item_2_page.dart';
import 'package:flutter_admin_scaffold_example/user/add_user.dart';
import 'package:flutter_admin_scaffold_example/user/all_user.dart';
import 'package:flutter_admin_scaffold_example/pages/user_profile.dart';

import 'config.dart';
import 'pages/Home/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const int _themeBlackPrimaryValue = 0xFF222222;
  static const Color themeTextPrimary = APP_COLOR;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryTextTheme: Theme.of(context).textTheme.apply(
              bodyColor: themeTextPrimary,
            ),
        iconTheme: IconThemeData(color: Colors.indigo),
        primaryIconTheme: IconThemeData(
          color: themeTextPrimary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        final page = _getPageWidget(settings);
        if (page != null) {
          return PageRouteBuilder(
              settings: settings,
              pageBuilder: (_, __, ___) => page,
              transitionsBuilder: (_, anim, __, child) {
                return FadeTransition(
                  opacity: anim,
                  child: child,
                );
              });
        }
        return null;
      },
    );
  }

  Widget? _getPageWidget(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case '/':
        return DashboardPage();
      case '/dashboard':
        return DashboardPage();
      case '/home':
        return DashboardPage();
      case '/customers':
        return AllCustommers();
      case '/add-customer':
        return AddCustomer();
      case '/cafeteriaPage1':
        return CafeteriaPage1();
      case '/cafeteriaPage2':
        return CafeteriaPage2();
      case '/cafeteriaOrder':
        return CafeteriaOrder();

      case '/addPartner':
        return AddPartner();
      case '/allPartner':
        return AllPartner();
      case '/addKitchen':
        return AddKitchen();
      case '/allKitchen':
        return AllKitchen();
      case '/PendingOrder':
        return PendingOrder();
      case '/addUser':
        return AddUser();
      case '/allUser':
        return AllUser();
      case '/allIncidents':
        return AllIncidents();
      case '/pendingOrder':
        return PendingOrder();
      case '/newOrders':
        return NewOrders();
      case '/orderhistory':
        return OrderHistory();
      case '/newincident':
        return NewIncident();
      case '/loginpage':
        return LoginPage();
      case '/userprofile':
        return UserProfile();
    }
    return null;
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({
    Key? key,
    required this.route,
    required this.body,
  }) : super(key: key);

  final Widget body;
  final String route;

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  final List<AdminMenuItem> _sideBarItems = const [
    AdminMenuItem(
      title: 'Home',
      route: '/',
      icon: Icons.dashboard,
    ),
    AdminMenuItem(
      title: 'Customer',
      icon: Icons.people,
      children: [
        AdminMenuItem(
          title: 'All Customers',
          route: '/customers',
        ),
        AdminMenuItem(
          title: 'Add New Customer',
          route: '/add-customer',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Cafeteria',
      icon: Icons.food_bank,
      children: [
        AdminMenuItem(
          title: 'Pending Orders',
          route: '/cafeteriaPage1',
        ),
        AdminMenuItem(
          title: 'Place New Order',
          route: '/cafeteriaPage2',
        ),
        AdminMenuItem(
          title: 'Order History',
          route: '/orderhistory',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Partner',
      icon: Icons.verified,
      children: [
        AdminMenuItem(
          title: 'All Partners',
          route: '/allPartner',
        ),
        AdminMenuItem(
          title: 'Add New Partner',
          route: '/addPartner',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Kitchen',
      icon: Icons.dinner_dining,
      children: [
        AdminMenuItem(
          title: 'All Kitchens',
          route: '/allKitchen',
        ),
        AdminMenuItem(
          title: 'Add New Kitchen',
          route: '/addKitchen',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Orders',
      icon: Icons.list,
      children: [
        AdminMenuItem(
          title: 'Pending Orders',
          route: '/PendingOrder',
        ),
        AdminMenuItem(
          title: 'New Order',
          route: '/newOrders',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Users',
      icon: Icons.people_rounded,
      children: [
        AdminMenuItem(
          title: 'New User',
          route: '/addUser',
        ),
        AdminMenuItem(
          title: 'All Users',
          route: '/allUser',
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Incidents',
      icon: Icons.update,
      children: [
        AdminMenuItem(
          title: 'New Incident',
          route: '/newincident',
        ),
        AdminMenuItem(
          title: 'All Incidents',
          route: '/allIncidents',
        ),
      ],
    ),
  ];

  final List<AdminMenuItem> _adminMenuItems = const [
    AdminMenuItem(
      title: 'User Profile',
      icon: Icons.account_circle,
      route: '/userprofile',
    ),
    AdminMenuItem(
      title: 'Settings',
      icon: Icons.settings,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Logout',
      icon: Icons.logout,
      route: '/loginpage',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(APP_NAME),
        backgroundColor: APP_COLOR,
        actions: [
          PopupMenuButton<AdminMenuItem>(
            child: const Icon(Icons.account_circle),
            itemBuilder: (context) {
              return _adminMenuItems.map((AdminMenuItem item) {
                return PopupMenuItem<AdminMenuItem>(
                  value: item,
                  child: Row(
                    children: [
                      Icon(item.icon),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            onSelected: (item) {
              print(
                  'actions: onSelected(): title = ${item.title}, route = ${item.route}');
              Navigator.of(context).pushNamed(item.route!);
            },
          ),
        ],
      ),
      sideBar: SideBar(
        backgroundColor: const Color(0xFFEEEEEE),
        activeBackgroundColor: Colors.black26,
        borderColor: const Color(0xFFE7E7E7),
        iconColor: Colors.black87,
        activeIconColor: Colors.blue,
        textStyle: const TextStyle(
          color: Color(0xFF337ab7),
          fontSize: 13,
        ),
        activeTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
        items: _sideBarItems,
        selectedRoute: widget.route,
        onSelected: (item) {
          print(
              'sideBar: onTap(): title = ${item.title}, route = ${item.route}');
          if (item.route != null && item.route != widget.route) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        // header: Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: const Color(0xff444444),
        //   child: const Center(
        //     child: Text(
        //       'header',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: Color.fromARGB(255, 197, 197, 197),
          child: const Center(
            child: Text(
              'v 1.0.0-beta',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: widget.body,
      ),
    );
  }
}
