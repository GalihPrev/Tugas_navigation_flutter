import 'package:flutter/material.dart';
import 'package:tugas_navigation_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item items = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      body: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          // color: Colors.amber,
          height: 100,
          child: Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Nama Product : " + items.name),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Harga Product : " + items.price.toString())
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
