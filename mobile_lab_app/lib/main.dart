import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart'; // if use 08_03 comment this line
// import 'w01/main.dart';
// import 'w04/flutter_widget/flutter_widget.dart';
// import 'w04/week4_app/image_use.dart';
// import 'w04/product_layout_app/product_layout.dart';
// import 'w05/widget_tree/profile_screen.dart';
// import 'w05/font_widget/exercise_01.dart';
// import 'w05/font_widget/page_view_screen.dart';
// import 'w05/font_widget/horizontal_scroll.dart';
// import 'w05/hw05_layout_widget/cafe_home_screen.dart';
// import 'w06/calculator.dart';
// import 'w07/01_navigate/route.dart';
// import 'w07/02_routes/index.dart';
// import 'w07/03_bottom_navbar/buttom_navbar.dart';
// import 'w07/04_tab_navbar/tab_bar_demo.dart';
// import 'w07/05_drawer_nav/drawer_nav.dart';
// import 'w07/hw07_restaurant_upgrade/main.dart';
// import 'w08/01/_01.dart';
// import 'w08/02/main.dart';
// import 'w08/03/_03_main.dart';
// import 'w08/03/counter_provider.dart';
// import 'w08/04/riverpod_first_screen.dart';
// import 'w08/04/riverpod_second_screen.dart';
// import 'w08/05/counter_home_screen.dart';

/* 2 line when run hw08 */
// import 'w08/hw08_state_management/main.dart';
// import 'w08/hw08_state_management/models/cart_model.dart';

// import 'w09/product.dart';
// import 'w09/products.dart';
import 'w09/hw09_async_weather/weather_screen.dart';

void main() {

  runApp(const MyApp());

  /* only on w08_3 */
  // runApp( 
  //   MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(s
  //         create: (context) => Counter03Provider()
  //       ),
  //     ],
  //     child: const MyApp(),
  //   )
  // );
  
  /* only on w08_4 */
  // runApp(const ProviderScope(
  //   child: MyApp())
  // );

  /* only on hw08_state_management */
  // runApp(ChangeNotifierProvider(create: (_) => CartModel(), child: RestaurantApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blue), // only ProfileScreen()

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
      // home: Counter03Screen(), // 03_countr_provider
      // home: RiverpodFirstScreen(), // 04_riverpod
      // home: RiverpodSecondScreen(), // 04_riverpod
      // home: CounterHomeScreen(), // 05_bloc

      /* w09 */
      // home: ProductScreen(),
      // home: ProductsScreen(),
      home: WeatherScreen(),
    );
  }
}