import 'package:along_along_app/pages/pages.dart';
import 'package:along_along_app/providers/providers.dart';
import 'package:along_along_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, width: 720, height: 1560, allowFontScaling: false);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AssistantProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ProductProvider(),
        ),
      ],
      child: LayoutBuilder(
        builder: (ctx, constraints) {
          return OrientationBuilder(
            builder: (ctx, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: SplashPage(),
                routes: {
                  RegisterPage.routeName: (ctx) => RegisterPage(),
                  OtpPage.routeName: (ctx) => OtpPage(),
                  LoginPage.routeName: (ctx) => LoginPage(),
                  AssistantPage.routeName: (ctx) => AssistantPage(),
                  ProductPage.routeName: (ctx) => ProductPage(),
                  CartPage.routeName: (ctx) => CartPage(),
                  PaymentPage.routeName: (ctx) => PaymentPage(),
                  AddressPage.routeName: (ctx) => AddressPage(),
                },
              );
            },
          );
        },
      ),
    );
  }
}
