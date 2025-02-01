import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Map<String, String> product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  String selectedUnit = "কেজি"; // ডিফল্ট মান "কেজি"
  int quantity = 1; // ডিফল্ট মান 1

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(
        context: context,
        backgroundColor: Colors.transparent
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Product Image Section
            Container(
              height: size.height * .3, // স্কিনের height হিসাব করে উপরের ৩ ভাগ যায়গা নিবে।
              width: double.infinity,
              color: const Color(0xFFD9D9D9),
              child: Center(
                child: Image.network(
                  widget.product['image']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                )
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Product Name
                  Text(widget.product['name']?? "Defult Title",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  // Product Review
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Product Price and Product Stoce available section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.product['price'] ?? "Default",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Available in stock",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ))
                    ],
                  ),
        
        
                  const SizedBox(height: 10),
        
                  // About Product Description
                  const Text("About",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),),
                  Text('Shop all your daily essentials in one place with Mini Bazaar! From fresh groceries, household items, personal care products, snacks, and more, we have everything you need for your everyday life.Shop all your daily essentials in one place with Mini Bazaar! From fresh groceries, household items, personal care products, snacks, and more, we have everything you need for your everyday life.Shop all your daily essentials in one place with Mini Bazaar! From fresh groceries, household items, personal care products, snacks, and more, we have everything you need for your everyday life.Shop all your daily essentials in one place with Mini Bazaar! From fresh groceries, household items, personal care products, snacks, and more, we have everything you need for your everyday life.Shop all your daily essentials in one place with Mini Bazaar! From fresh groceries, household items, personal care products, snacks, and more, we have everything you need for your everyday life.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5)
                  )),
        
        
        

        
        
        
        
        
                ],
              ),
            )
        
          ],
        ),
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

              // Product Variant কোয়ান্টিটি
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

              const CustomButtom(buttonTitle: 'ক্রয় করুন')

            ],
          ),
        ),
      ),
    );
  }
}
