import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';
import 'package:minibazar/Views/Authentication/RegisterScreen/register_screen.dart';
import 'package:minibazar/Views/ProductDetails/product_details.dart';

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
      'icon': 'assets/images/5.png'
    },
    {
      'icon': 'assets/images/1.png'
    },
    {
      'icon': 'assets/images/2.png'
    },
  ];

  List<Map<String, String>> categoriesList =[
    {
      'CategoriesName': 'মুদি বাজার'
    },
    {
      'CategoriesName': 'ক্রোকাইরিজ সামগ্রী'
    },
    {
      'CategoriesName': 'কসমেটিক্স সামগ্রী'
    },
    {
      'CategoriesName': 'কনফেকসনারী সামগ্রী'
    },
    {
    'CategoriesName': 'স্টেশনারী সামগ্রী'
    },
    {
      'CategoriesName': 'গিফট সামগ্রী'
    },
    {
      'CategoriesName': 'খেলনা সামগ্রী'
    },
    {
      'CategoriesName': 'অন্যান্য'
    },
  ];


  List<Map<String, String>> products =[
    {
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW5wZ5Eql9CC3r-1JRrWo_TwrV9OyBJpxyCzNpvysCaVOXO9WteGPXvM9qyzH7TOoinpI&usqp=CAU',
      'name' : 'চাউল',
    },
    {
      'image' : 'https://d2u0ktu8omkpf6.cloudfront.net/1943bf2a941f84004bcfd791c885e723239006c33243c59e.jpg',
      'name' : 'ডাল',
      'price' : '১২০',
    },
    {
      'image' : 'https://i.ytimg.com/vi/4aSqgLflgnM/maxresdefault.jpg',
      'name' : 'ক্রোকাইরিজ',
      'price' : '৪২০০',
    },
    {
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSYI36_21KMhp4L2dQ_1q6P2YBsSExLvcmrw&s',
      'name' : 'গিপ্ট',
      'price' : '১২৫০',
    },
    {
      'image' : 'https://priyocareer.com/wp-content/uploads/2021/04/%E0%A6%96%E0%A7%87%E0%A6%B2%E0%A6%A8%E0%A6%BE-%E0%A6%AE%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%95%E0%A7%87%E0%A6%9F.jpg',
      'name' : 'খেলনা',
      'price' : '১৮৫০',
    },
    {
      'image' : 'https://sharebiz.net/wp-content/uploads/2019/09/Business-Idea-Stationery-items.jpg',
      'name' : 'স্টেশনারি',
      'price' : '১৪৬০',
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
          horizontal: 15,
          vertical: 0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //================= Greeting And Offer Section
              Container(
                height: 150,
                margin: const EdgeInsets.only(
                  bottom:15
                ),
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: SliderImages.length,
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
              // Categories Image View
              SizedBox(
                height: 62,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 7,
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
                        child: Image.asset(categories[index]["icon"] ?? "Default",),
                      )
                    );
                  }
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Categories Title View
              SizedBox(
            height: 100, // পর্যাপ্ত height দাও যাতে দুই লাইনে আসতে পারে
            child: Wrap(
              spacing: 2, // পাশে 2px গ্যাপ
              runSpacing: 2, // উপরে নিচে 2px গ্যাপ
              children: List.generate(
                categoriesList.length,
                    (index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.PrimaryColor,
                    border: Border.all(color: const Color(0xFFD8D3D3)),
                  ),
                  child: Text(
                    categoriesList[index]["CategoriesName"] ?? "Default",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
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


              // Product List লম্বা লম্বী
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // এক সারিতে ১টি আইটেম
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.9, // লেআউট চওড়া করার জন্য অ্যাডজাস্ট
                ),
                itemCount: products.length,
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
                                  child: InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailsScreen(product: products[index],),),);
                                    },
                                    child: Image.network(
                                      products[index]['image'] ?? "assets/images/shoppingCar.gif",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
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
                                      InkWell(
                                        onTap:(){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailsScreen(product: products[index],),),);
                                        },
                                        child: Text(
                                          products[index]['name'] ?? "Default",
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                      ),
                                      const SizedBox(height: 5),

                                      // দাম
                                      Text(
                                        products[index]['price'] ?? "Default",
                                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),
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
                                                child: Text(value, style: const TextStyle(fontSize: 14)),
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
                                backgroundColor: AppColors.PrimaryColor,
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


              const SizedBox(
                height: 15,
              ),
              // Product List আডাআড়ি
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: .8
                ),
                itemCount: products.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailsScreen(product: products[index],),),);
                    },
                    child: Container(
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
                              image: DecorationImage(
                                image: NetworkImage(
                                  products[index]['image'] ?? "assets/images/shoppingCar.gif",
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( products[index]['name'] ?? "Default",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                                )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text( products[index]['price'] ?? "Default",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
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