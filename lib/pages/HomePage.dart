import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/calalog.dart';
import 'package:flutter_catalog/utils/MyDrawer.dart';

import '../item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dumylist = List.generate(10, (index) => CatalogModel.items[0]);

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
          child: GridView.builder(
            itemCount: dumylist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dumylist[index],
              );
            },
          ),
        ));
  }
}
