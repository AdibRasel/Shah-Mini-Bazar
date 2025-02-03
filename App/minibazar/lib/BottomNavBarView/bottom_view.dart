import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/CartScreen/cart_screen.dart';
import 'package:minibazar/Views/FavoriteScreen/favorite_screen.dart';
import 'package:minibazar/Views/HomeScreen/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int selectedIndex = 0;

  List<Widget> screen = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.PrimaryColor,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black.withOpacity(.5),
          onTap: (index){
          setState(() {
            selectedIndex = index;
          });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ]),
    );
  }
}
