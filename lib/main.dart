import 'package:flutter/material.dart';
import 'package:freshfruits/screens/auth/create_account.dart';
import 'package:freshfruits/screens/auth/sign_in.dart';
import 'package:freshfruits/screens/categories_screen.dart';
import 'package:freshfruits/screens/checkout_screen.dart';
import 'package:freshfruits/screens/favorite_items_screen.dart';
import 'package:freshfruits/screens/home_screen.dart';
import 'package:freshfruits/screens/item_details_screen.dart';
import 'package:freshfruits/screens/onboarding/onboarding_first.dart';
import 'package:freshfruits/screens/onboarding/onboarding_fourth.dart';
import 'package:freshfruits/screens/onboarding/onboarding_second.dart';
import 'package:freshfruits/screens/onboarding/onboarding_third.dart';
import 'package:freshfruits/screens/order_tracking_screen.dart';
import 'package:freshfruits/screens/shopping_cart_screen.dart';
import 'package:freshfruits/screens/single_category_screen.dart';
import 'package:freshfruits/screens/thank_you_screen.dart';
import 'package:freshfruits/screens/write_review_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh Fruits',
      theme: ThemeData(
        fontFamily: "Poppins",
        // primarySwatch: createMaterialColor(mainColor),
        primarySwatch: Colors.orange,
        primaryColor: HexColor("#E67F1E"),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: HexColor("#FEC54B"),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: HexColor("#FEC54B"),
          ),
        ),
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          headline1: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          headline4: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          headline5: TextStyle(
            fontSize: 14,
            color: Colors.black,
            // fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: HexColor("#E67F1E"), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: HexColor("#E67F1E"), width: 2),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          labelStyle: TextStyle(color: HexColor("#9C9F9E")),
        ),
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: HexColor("#E67F1E")),
        backgroundColor: whiteColor,
      ),
      home:  const OnboardingFirst(),
      routes: {
        // OnboardingFirst.routeName: (ctx) => const OnboardingFirst(),
        OnboardingSecond.routeName: (ctx) => const OnboardingSecond(),
        OnboardingThird.routeName: (ctx) => const OnboardingThird(),
        OnboardingFourth.routeName: (ctx) => const OnboardingFourth(),
        CreateAccount.routeName: (ctx) => const CreateAccount(),
        SignIn.routeName: (ctx) => const SignIn(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        CategoriesScreen.routeName: (ctx) => const CategoriesScreen(),
        SingleCategoryScreen.routeName: (ctx) => const SingleCategoryScreen(),
        ItemDetailsScreen.routeName: (ctx) => const ItemDetailsScreen(),
        ShoppingCartScreen.routeName: (ctx) => const ShoppingCartScreen(),
        CheckoutScreen.routeName: (ctx) => const CheckoutScreen(),
        ThankYouScreen.routeName: (ctx) => const ThankYouScreen(),
        OrderTrackingScreen.routeName: (ctx) => const OrderTrackingScreen(),
        WriteReviewScreen.routeName: (ctx) => const WriteReviewScreen(),
        FavoriteItemsScreen.routeName: (ctx) => const FavoriteItemsScreen(),
      },
    );
  }
}
