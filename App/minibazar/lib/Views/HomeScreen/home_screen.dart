import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';
import 'package:minibazar/Views/Authentication/RegisterScreen/register_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selectedUnit = "কেজি"; // ডিফল্ট মান "কেজি"
  int quantity = 1; // ডিফল্ট মান 1

  List<String> SliderImages =[
    "https://static.vecteezy.com/system/resources/thumbnails/003/692/287/small_2x/big-sale-discount-promotion-banner-template-with-blank-product-podium-scene-graphic-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/002/038/176/small/weekend-sale-banner-template-promotion-vector.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1oU512bhsPm0u8eNofpi2SoStK_1XeZdHWHvPZAPiUU22XeyAIG7sy0LxRI4vttP1jPM&usqp=CAU",
  ];

  List<Map<String, String>> categories =[
    {
      'icon': 'assets/images/1.png'
    },
    {
      'icon': 'assets/images/2.png'
    },
    {
      'icon': 'assets/images/3.png'
    },
    {
      'icon': 'assets/images/4.png'
    },
    {
      'con': 'assets/images/5.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        isLeading: const Icon(Icons.menu),
        action: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //================= Greting Section
              const Text("Hello, User 👋",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),),
              Text("Let's start shopping!",
              style: TextStyle(
                color: Colors.black.withOpacity(.5)
              )),
              Container(
                height: 150,
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom:15
                ),
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image:NetworkImage(SliderImages[index]),
                                  fit:BoxFit.cover
                          ),
                        )
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOut,
                      enlargeCenterPage: true,
                    ),
                ),
              ),
          
              //================= Categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Top Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),),
                  TextButton(
                    onPressed: (){},
                    child: Text("See All",
                    style: TextStyle(
                      color: AppColors.PrimaryColor
                    ),),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 62,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF2F2F2),
                        border: Border.all(
                          color: const Color(0xFFD8D3D3)
                        )
                      ),
                      child: Center(
                        child: Image.asset(categories[index]["icon"]!),
                      )
                    );
                  }
                ),
              ),
          
          
              //================= Recent Product
              const SizedBox(
                height: 15,
              ),
              const Text("Recent Products",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                ),),
              const SizedBox(
                height: 15,
              ),




              // Chatgpt
              // const Padding(
              //   padding: EdgeInsets.all(20.0),
              //   child: SizedBox(
              //     height: 15,
              //     child: Text("Chatgpt", style: TextStyle(fontSize: 30),),
              //   ),
              // ),
              // GridView.builder(
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2, // মোবাইলে 2 কলাম, বড় স্ক্রিনে Responsive
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 15,
              //     childAspectRatio: 0.7, // সুন্দর ব্যালান্স
              //   ),
              //   itemCount: 6,
              //   shrinkWrap: true,
              //   primary: false,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(15),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.black.withOpacity(0.1),
              //             blurRadius: 5,
              //             spreadRadius: 2,
              //             offset: const Offset(0, 3),
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Stack(
              //             children: [
              //               ClipRRect(
              //                 borderRadius: const BorderRadius.only(
              //                   topLeft: Radius.circular(15),
              //                   topRight: Radius.circular(15),
              //                 ),
              //                 child: Image.network(
              //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU",
              //                   height: 150,
              //                   width: double.infinity,
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //               Positioned(
              //                 top: 8,
              //                 right: 8,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.white.withOpacity(0.8),
              //                     shape: BoxShape.circle,
              //                   ),
              //                   child: IconButton(
              //                     onPressed: () {},
              //                     icon: const Icon(Icons.favorite_border, color: Colors.red),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           const Padding(
              //             padding: EdgeInsets.all(8.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Miniket Rice",
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //                 SizedBox(height: 5),
              //                 Text(
              //                   "2520/-",
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 18,
              //                     color: Colors.green, // প্রাইসকে আলাদা দেখানোর জন্য
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              // ),


              // DeepSeek


              // Deepseek
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // এক সারিতে ১টি আইটেম
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.9, // লেআউট চওড়া করার জন্য অ্যাডজাস্ট
                ),
                itemCount: 10,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // উপরের অংশ (ইমেজ + নাম + দাম + কোয়ান্টিটি)
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // প্রোডাক্ট ইমেজ (বাম পাশে)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU",
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),

                                // প্রোডাক্ট ডিটেইলস (ডান পাশে)
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // নাম
                                      const Text(
                                        "Miniket Rice",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                      ),
                                      const SizedBox(height: 5),

                                      // দাম
                                      const Text(
                                        "2520/-",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),
                                      ),



                                      // কোয়ান্টিটি
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          // কেজি / বস্তা সিলেক্ট অপশন
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
                                                child: Text(value, style: TextStyle(fontSize: 14)),
                                              );
                                            }).toList(),
                                          ),

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






                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 10), // উপরের অংশ এবং নিচের বাটনের মধ্যে গ্যাপ

                          // নিচের অংশ (Add to Cart বাটন)
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: const Text(
                                "ক্রয়ের জন্য বাচাই করুন",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),







              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 15,
                  child: Text("Class", style: TextStyle(fontSize: 30),),
                ),
              ),





              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: .8
                ),
                itemCount: 6,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                    Icons.favorite_border,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ]
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Miniket Cal",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                              )),
                              SizedBox(
                                height: 5,
                              ),
                              Text("2520/- ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
          
              ),
          
              
          
          
            ],
          ),
        ),
      ),

    );
  }
}