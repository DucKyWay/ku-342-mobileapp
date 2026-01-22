import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart'; // if use 08_03 comment this line
import 'package:mobile_lab_app/w01/main.dart';
import 'package:mobile_lab_app/w04/flutter_widget/flutter_widget.dart';
import 'package:mobile_lab_app/w04/week4_app/image_use.dart';
import 'package:mobile_lab_app/w04/product_layout_app/product_layout.dart';
import 'package:mobile_lab_app/w05/widget_tree/profile_screen.dart';
import 'package:mobile_lab_app/w05/font_widget/exercise_01.dart';
import 'package:mobile_lab_app/w05/font_widget/page_view_screen.dart';
import 'package:mobile_lab_app/w05/font_widget/horizontal_scroll.dart';
import 'package:mobile_lab_app/w05/hw05_layout_widget/cafe_home_screen.dart';
import 'package:mobile_lab_app/w06/calculator.dart';
import 'package:mobile_lab_app/w07/01_navigate/route.dart';
import 'package:mobile_lab_app/w07/02_routes/index.dart';
import 'package:mobile_lab_app/w07/03_bottom_navbar/buttom_navbar.dart';
import 'package:mobile_lab_app/w07/04_tab_navbar/tab_bar_demo.dart';
import 'package:mobile_lab_app/w07/05_drawer_nav/drawer_nav.dart';
import 'package:mobile_lab_app/w07/hw07_restaurant_upgrade/main.dart';
import 'package:mobile_lab_app/w08/01/_01.dart';
import 'package:mobile_lab_app/w08/02/main.dart';
import 'package:mobile_lab_app/w08/03/_03_main.dart';
import 'package:mobile_lab_app/w08/03/counter_provider.dart';
import 'package:mobile_lab_app/w08/04/riverpod_first_screen.dart';
import 'package:mobile_lab_app/w08/04/riverpod_second_screen.dart';
import 'package:mobile_lab_app/w08/05/counter_home_screen.dart';

void main() {
  // runApp(const MyApp());

  /* only on w08_3 */
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Counter03Provider()
        ),
      ],
      child: const MyApp(),
    )
  );
  
  /* only on w08_4 */
  // runApp(const ProviderScope(
  //   child: MyApp())
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue), // only ProfileScreen()

      /* w01 */
      // home: FirstApp(),

      /* w04 */
      // home: Week4(),
      // home: FlutterWidget(title: "Yindeetonrub Restaurant"),
      // home: ProductLayout(title: "Product"),

      /* w05 */
      // home: const HorizontalScroll(),
      // home: const PageViewScreen(),
      // home: const Exercise01(),
      // home: ProfileScreen(),
      // home: CafeHomePage(),
      
      /* w06 */
      // home: CalculatorPage(),

      /* w07 */
      // home: FirstRoute(), // 01_navigator
      // home: RouteIndex(), // 02_routes
      // home: BottomNavbar(), // 03_bottom_navbar
      // home: TabBarDemo(), // 04_tab_navbar
      // home: DrawerNavigate(title: "Drawers"),
      // home: RestaurantUpgradeApp(),

      /* w08 */
      // home: ProgramOneScreen(), // 01_
      // home: ProgramTwoScreen(), // 02_
      home: Counter03Screen(),
      // home: RiverpodFirstScreen(), // 04_riverpod
      // home: RiverpodSecondScreen(), // 04_riverpod
      // home: CounterHomeScreen(), // 05_bloc
    );
  }
}