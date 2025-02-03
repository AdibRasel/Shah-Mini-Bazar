import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Utils/color.dart';

class CartScreen extends StatefulWidget {



  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

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
      // body: ListView.builder(
      //
      //   itemCount: 10,
      //   itemBuilder: (context, index){
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      //       child: Container(
      //         height: 90,
      //         decoration: BoxDecoration(
      //           color: const Color(0XFFF8F8F8),
      //           borderRadius: BorderRadius.circular(20)
      //         ),
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: const Color(0XFFC6C6C6),
      //               borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //
      //               children: [
      //                 Container(
      //                 height: 70,
      //                 width: 100,
      //                 decoration: BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.circular(5),),
      //                 child: Center(
      //                   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU"),
      //                 )
      //                 ),
      //                 const Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text("চাউল বস্তা",
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.w500,
      //                       fontSize: 17,
      //                     ),),
      //                     Text("১৫৪০/-",
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.w500,
      //                       fontSize: 18,
      //                     ),)
      //                   ],
      //                 ),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //
      //                     Text("স্টোকে আছেন",
      //                         style: TextStyle(
      //                           fontSize: 13,
      //                           color: Colors.black.withOpacity(.6)
      //                         )),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Row(
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             // ডিক্রিমেন্ট (-) বাটন
      //                             IconButton(
      //                               onPressed: () {
      //                                 setState(() {
      //                                   if (quantity > 1) quantity--;
      //                                 });
      //                               },
      //                               icon: const Icon(Icons.remove_circle, color: Colors.red),
      //                             ),
      //                             // সংখ্যা দেখানো হবে
      //                             Text(
      //                               "$quantity",
      //                               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //                             ),
      //                             // ইনক্রিমেন্ট (+) বাটন
      //                             IconButton(
      //                               onPressed: () {
      //                                 setState(() {
      //                                   quantity++;
      //                                 });
      //                               },
      //                               icon: const Icon(Icons.add_circle, color: Colors.green),
      //                             ),
      //
      //                           ],
      //                         ),
      //
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),



      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Stack(
              children: [
                // Main Container
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0x44D5D5D5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Center(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              // Image Side Start
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center( // ইমেজ সেন্টার করার জন্য

                                  child: Container(

                                    child: ClipRRect( // বর্ডার রেডিয়াস ঠিক রাখতে ব্যবহার করা হয়েছে
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBks98xcOTXXIYF3z87erbFfZ2RE4mWK5myQ&s",
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 90,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Title And Product Side Start
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  // Product Title
                                  Text("স্টাইলিশ ব্যাগ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),),

                                  // Product Price
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      const Text("1000 ৳",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),),


                                      DropdownButton<String>(
                                        value: selectedUnit,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedUnit = newValue!;
                                          });
                                        },
                                        items: ["কেজি", "বস্তা"].map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value, style: const TextStyle(fontSize: 14)),
                                          );
                                        }).toList(),
                                      ),



                                    ],
                                  ),



                                  Row(
                                    children: [

                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            // কেজি / বস্তা সিলেক্ট অপশন


                                            // ইনক্রিমেন্ট / ডিক্রিমেন্ট বাটন সহ ইনপুট ফিল্ড
                                            Row(
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
                                        ),

                                      ),


                                      Container(
                                        child: Text("1000 * 2 = মোটঃ 2000"),
                                      ),

                                    ],
                                  )

                                ],
                              ),


                            ],
                          ),
                        ),
                      )
                      
                    ],
                  ),
                ),



                // Top-Right Cross Icon
                Positioned(
                  right: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      print("Item Removed!");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.8),
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.cancel,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),
          );


        },
      ),



      // body: ListView.builder(
      //   itemCount: quantities.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: const LinearGradient(
      //             colors: [Color(0xFFB2EBF2), Color(0xFF80DEEA)], // গ্র্যাডিয়েন্ট কালার
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //           borderRadius: BorderRadius.circular(20),
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.black.withOpacity(0.1),
      //               blurRadius: 8,
      //               spreadRadius: 2,
      //               offset: const Offset(2, 5),
      //             )
      //           ],
      //         ),
      //         child: Stack(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   // Product Image
      //                   Container(
      //                     height: 80,
      //                     width: 100,
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                       borderRadius: BorderRadius.circular(10),
      //                       boxShadow: [
      //                         BoxShadow(
      //                           color: Colors.black.withOpacity(0.1),
      //                           blurRadius: 5,
      //                           spreadRadius: 1,
      //                         )
      //                       ],
      //                     ),
      //                     child: Center(
      //                       child: Image.network(
      //                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU",
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //
      //                   // Product Details
      //                   Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       const Text(
      //                         "চাউল বস্তা",
      //                         style: TextStyle(
      //                           color: Colors.black87,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 18,
      //                         ),
      //                       ),
      //                       const SizedBox(height: 4),
      //                       const Text(
      //                         "৳ ১৫৪০/-",
      //                         style: TextStyle(
      //                           fontSize: 18,
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.redAccent,
      //                         ),
      //                       ),
      //                       const SizedBox(height: 6),
      //                       Text(
      //                         "স্টোকে আছে",
      //                         style: TextStyle(
      //                           fontSize: 14,
      //                           color: Colors.black.withOpacity(0.6),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //
      //                   // Quantity Controller
      //                   Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Row(
      //                         children: [
      //                           // Decrement Button
      //                           IconButton(
      //                             onPressed: () {
      //                               setState(() {
      //                                 if (quantities[index] > 1) quantities[index]--;
      //                               });
      //                             },
      //                             icon: const Icon(Icons.remove_circle, color: Colors.red),
      //                           ),
      //                           Text(
      //                             "${quantities[index]}",
      //                             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //                           ),
      //                           // Increment Button
      //                           IconButton(
      //                             onPressed: () {
      //                               setState(() {
      //                                 quantities[index]++;
      //                               });
      //                             },
      //                             icon: const Icon(Icons.add_circle, color: Colors.green),
      //                           ),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //
      //             // Remove Button (❌)
      //             Positioned(
      //               right: 8,
      //               top: 8,
      //               child: GestureDetector(
      //                 onTap: () {
      //                   setState(() {
      //                     quantities.removeAt(index);
      //                   });
      //                 },
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                     color: Colors.red,
      //                     shape: BoxShape.circle,
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.black.withOpacity(0.2),
      //                         blurRadius: 6,
      //                         spreadRadius: 1,
      //                       )
      //                     ],
      //                   ),
      //                   padding: const EdgeInsets.all(4),
      //                   child: const Icon(
      //                     Icons.cancel,
      //                     color: Colors.white,
      //                     size: 20,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),





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
