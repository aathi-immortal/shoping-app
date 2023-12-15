import 'package:flutter/material.dart';
import 'package:shoping_app/globalDatas.dart';
import 'package:shoping_app/product_card.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<String> listOfBrands = const ["All", "puma", "Addidas", "Nike", "Bata"];
  late String selectedFilter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = listOfBrands[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Shoes\nCollection",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfBrands.length,
                itemBuilder: (context, index) {
                  String filter = listOfBrands[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },
                      child: Chip(
                        elevation: 20,
                        backgroundColor: selectedFilter.compareTo(filter) == 0
                            ? Color.fromARGB(255, 250, 253, 66)
                            : const Color.fromARGB(255, 225, 226, 228),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 225, 226, 228),
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        label: Text(filter),
                      ),
                    ),
                  );
                },
              ),
            ),

            // main body of the app
            Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return product_card(
                      title: product["title"] as String,
                      price: product["price"] as double,
                      image: product["imageUrl"] as String,
                      backColor: index.isEven
                          ? Color.fromRGBO(216, 240, 253, 1)
                          : Color.fromRGBO(245, 247, 249, 1),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
