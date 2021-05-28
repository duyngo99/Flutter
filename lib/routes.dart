import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:ngoanduy_flutter/category/categorypage.dart';
import 'package:ngoanduy_flutter/detail/productpage.dart';
import 'package:ngoanduy_flutter/homepage/homepage.dart';
import 'package:ngoanduy_flutter/signuppage/signuppage.dart';
import 'package:ngoanduy_flutter/splashpage//splashpage.dart';
import 'package:ngoanduy_flutter/signinpage/signinpage.dart';

import 'cart/cartpage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (cotext) => SignUpPage(),
  HomePage.routeName: (cotext) => HomePage(),
  ProductPage.routeName: (cotext) => ProductPage(),
  CartPage.routeName: (context) => CartPage(),
  CategoryPage.routeName: (context) => CategoryPage()
};
