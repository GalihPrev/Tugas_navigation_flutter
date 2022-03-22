import 'package:flutter/material.dart';
import 'package:tugas_navigation_flutter/models/item.dart';
import 'package:tugas_navigation_flutter/pages/home_page.dart';
import 'package:tugas_navigation_flutter/widgets/back_home.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item items = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text("Description Product"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            // color: Colors.amber,
            height: 120,
            child: Center(
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Nama Product"),
                            Text(items.name),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Harga Product"),
                            Text(items.price.toString()),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Quality Product"),
                            Text(items.quality.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BackToHome()
        ],
      ),
    );
  }
}
