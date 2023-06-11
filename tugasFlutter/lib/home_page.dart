import 'package:coffee_shop_youtube/widget/category.dart';
import 'package:coffee_shop_youtube/widget/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140,
                    width: double.infinity,
                    color: Color.fromARGB(255, 81, 72, 121)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Halo siswa, Selamat Datang !",
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 10,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari eskul Favoritmu",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Category(imagePath: "assets/gameDev.png", title: "GameDev"),
                  Category(imagePath: "assets/Kimia.png", title: "Kimia"),
                  Category(
                      imagePath: "assets/BahsaJepang.png", title: "B Jepang"),
                  Category(imagePath: "assets/biji.png", title: "Biji"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Eskul Favorit ☕️",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CoffeShop(
              imagePath: "assets/cardGD.jpeg",
              nameShop: "GameDev",
              rating: "4.8",
              jamBuka: "sabtu 10.00 - 01.00",
            ),
            CoffeShop(
              imagePath: "assets/cardK.jpeg",
              nameShop: "Kimia",
              rating: "4.9",
              jamBuka: "kamis 13.00 - 05.00",
            ),
            CoffeShop(
              imagePath: "assets/cardN.jpeg",
              nameShop: "Bahasa Jepang",
              rating: "4.7",
              jamBuka: "Rabu 13.00 - 04.00",
            ),
          ],
        )),
      ),
    );
  }
}
