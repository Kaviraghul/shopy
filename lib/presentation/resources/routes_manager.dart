import 'package:flutter/material.dart';
import 'package:shopy/presentation/cart/cart.dart';
import 'package:shopy/presentation/home/home.dart';
import 'package:shopy/presentation/login/login.dart';
import 'package:shopy/presentation/payment/payment.dart';
import 'package:shopy/presentation/product/product.dart';
import 'package:shopy/presentation/registration/registration.dart';
import 'package:shopy/presentation/resources/strings_manager.dart';

class Routes {
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String homeRoute = "/home";
  static const String cartRoute = "/cart";
  static const String paymentRoute = "/payment";
  static const String productRoute = "/product";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegistrationView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => const CartView());
      case Routes.paymentRoute:
        return MaterialPageRoute(builder: (_) => const PaymentView());
      case Routes.productRoute:
        return MaterialPageRoute(builder: (_) => const ProductView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(AppString.noRouteFound)),
              body: const Center(child: Text(AppString.noRouteFound)),
            ));
  }
}
