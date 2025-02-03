import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Utils/color.dart';

class FavoriteScreen extends StatefulWidget {



  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  String selectedUnit = "কেজি"; // ডিফল্ট মান "কেজি"
  int quantity = 1; // ডিফল্ট মান 1

  List<int> quantities = List.generate(10, (index) => 1);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "My Cart",
      ),

      // Old Cart Design
      body: ListView.builder(

        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: const Color(0XFFF8F8F8),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFC6C6C6),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),),
                      child: Center(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU"),
                      )
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("চাউল বস্তা",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),),
                          Text("১৫৪০/-",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text("স্টোকে আছেন",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.6)
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // ডিক্রিমেন্ট (-) বাটন
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (quantity > 1) quantity--;
                                      });
                                    },
                                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                                  ),
                                  // সংখ্যা দেখানো হবে
                                  Text(
                                    "$quantity",
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  // ইনক্রিমেন্ট (+) বাটন
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle, color: Colors.green),
                                  ),

                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),





      bottomNavigationBar: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.01),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("সর্বমোট",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    Text("4000/- টাকা মাত্র।",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.PrimaryColor,
                          fontWeight: FontWeight.w800,
                        ))
                  ]
              ),


              const CustomButtom(buttonTitle: 'অর্ডার কনফার্ম করুন')

            ],
          ),
        ),
      ),


    );
  }
}
