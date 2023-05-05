import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/calalog.dart';
import 'package:flutter_catalog/utils/MyDrawer.dart';

import '../item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final dumylist = List.generate(1000, (index) => CatalogModel.items[0]);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.blue),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.blue,
          ),
          title: const Text(
            "Catalog App",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dumylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dumylist[index],
              );
            },
          ),
        ));
  }
}
