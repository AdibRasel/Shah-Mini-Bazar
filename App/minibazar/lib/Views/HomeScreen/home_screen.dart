import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';
import 'package:minibazar/Views/Authentication/RegisterScreen/register_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        isLeading: Icon(Icons.menu),
        action: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            Text("This is simpole home page design 👋",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),),
            Text("Let's start shopping!",
            style: TextStyle(
              color: Colors.black.withOpacity(.5)
            )),

            const SizedBox(
              height: 100,
            ),

            Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen(),),);
                    },
                    child: const Text("Register Page",

                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25
                      ),),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen(),),);
                    },
                    child: const Text("Login Screen",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25
                      ),),
                  )

                ],
              ),
            ),



          ],
        ),
      ),

    );
  }
}