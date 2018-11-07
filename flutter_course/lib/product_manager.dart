import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[ProductManager Widget] ctor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] ctor');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
    print('[ProductManager State] initState');
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[ProductManager State] didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build');
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).accentColor,
          child: Text('Add Product'),
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
