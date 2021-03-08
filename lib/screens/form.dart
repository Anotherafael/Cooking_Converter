import 'package:cooking_converter/components/selectbox.dart';
import 'package:cooking_converter/models/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {

  String productValue;
  final productController = Controller();
  List listItem = [
    "Item 1", "Item 2", "Item 3", "Item 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("Cooking Converter"),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget> [
                    SizedBox(
                      child: SelectBox(
                        controller: productController,
                        label: 'Produto',
                        value: productValue,
                        list: listItem,
                      )
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Converter de"
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Quantidade"
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Converter para"
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Observer(
                      builder: (_) {
                        return Text('${productController.transaction}');
                      } 
                    ),
                  ],
                  ),
              ),
            ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              // ignore: deprecated_member_use
              title: Text("Conversor"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              // ignore: deprecated_member_use
              title: Text("Favoritos"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rate_review_rounded),
              // ignore: deprecated_member_use
              title: Text("Avalie-nos"),
            ),
          ],
        ),
    );
  }
}
