import 'package:flutter/material.dart';
import 'package:flutter_application_tasarim_4/card_box.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.black,
        tabs: [
          GButton(icon: Icons.home), // resim ve yazı eklenecek
          GButton(icon: Icons.menu_book),
          GButton(icon: Icons.add_box),
          GButton(icon: Icons.shopping_basket),
          GButton(icon: Icons.face),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        title:
            //  const Center(
            //   child: Text(
            //     "GoloMarket",
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
            //   ),
            // ),

            const ListTile(
          title: Center(
            child: Text(
              "GoloMarket",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          subtitle: Center(
            child: Text(
              "Online Delivery",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white),
            ),
          ),
        ),
        leading: Container(
          height: 200,
          width: 200,
          color: const Color(0xFF297690),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white24,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xFF297690),
      ),
      body: Column(
        children: [
          //üst çizgi appbar altı Current , select location
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: const Color(0xFF297690),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    //Current Location/ icon
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        "Current Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Select Location",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  //Card ve Card Arka planı
                  children: [
                    //1.stack elemanı
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Color(0xFF297690),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 2.stack eleman stack üstü Card
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        color: Color(0xFF297690),
                        child:

                            // Container(
                            //   width: MediaQuery.of(context).size.width,
                            //   height: 200,
                            //   decoration: const BoxDecoration(
                            //     color: Colors.red,
                            //     image: DecorationImage(
                            //         image: AssetImage(
                            //           "assets/images/food_photo.png",
                            //         ),
                            //         fit: BoxFit.fill),
                            //   ),
                            // ),

                            Column(
                          children: [
                            Stack(
                              children: [
                                // Stack elemanı foto
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/images/food_photo.png",
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                //Üstündeki butonlar
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //üst resim
                                      const Text(
                                        "Please Enter Your Location",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 90, top: 10, bottom: 20),
                                        child: Text(
                                          "So that we can offer you a list of available supermarket",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size(130, 40),
                                          padding: EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          backgroundColor: Colors.orange[700],
                                          elevation: 10,
                                          foregroundColor: Colors.white,
                                        ),
                                        onPressed: () {},
                                        child: Text("Selecet Location"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            // Container(
                            //   color: Colors.red,
                            //   width: MediaQuery.of(context).size.width,
                            //   height: 200,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //2. Column elemanı
                const ListTile(
                  title: Text(
                    "Supermarkets",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "We have selected the best options for you.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                CardBox(
                  imagePath: "market_photo.png",
                  marketName: "Harris Teeter",
                  marketSlogan: "Neighborhood Food Market",
                ),
                // CardBox(
                //   imagePath: "market_photo.png",
                //   marketName: "Harris Teeter",
                //   marketSlogan: "Neighborhood Food Market",
                // ),
                // CardBox(
                //   imagePath: "market_photo.png",
                //   marketName: "Harris Teeter",
                //   marketSlogan: "Neighborhood Food Market",
                // ),
                // CardBox(
                //   imagePath: "market_photo.png",
                //   marketName: "Harris Teeter",
                //   marketSlogan: "Neighborhood Food Market",
                // ),
                // CardBox(
                //   imagePath: "market_photo.png",
                //   marketName: "Harris Teeter",
                //   marketSlogan: "Neighborhood Food Market",
                // ),
                // CardBox(
                //   imagePath: "market_photo.png",
                //   marketName: "Harris Teeter",
                //   marketSlogan: "Neighborhood Food Market",
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
