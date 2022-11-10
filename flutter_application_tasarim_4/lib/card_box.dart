import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  CardBox(
      {super.key,
      required this.imagePath,
      required this.marketName,
      required this.marketSlogan});
  final String imagePath;
  final String marketName;
  final String marketSlogan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        child: Container(
          height: 230,
          child: Column(
            children: [
              Stack(
                children: [
                  //foto ve floating buton
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/$imagePath",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 10,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    mini: true,
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  marketName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  marketSlogan,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    elevation: 100,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
