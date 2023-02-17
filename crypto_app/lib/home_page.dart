import 'dart:convert';

import 'package:crypto_app/data/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES) as List;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto App'),
      ),
      body: ListView.separated(
        itemCount: exchanges.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image(
              image: NetworkImage(exchanges[index]["image"]),
            ),
            trailing: CircleAvatar(
                backgroundColor: Colors.grey[500],
                child: Text(
                  "${exchanges[index]["trust_score"]}",
                  style: TextStyle(color: Colors.white),
                )),
            title: Text("${exchanges[index]["name"]}"),
            subtitle: Text(
                "${exchanges[index]["country"]} \n${exchanges[index]["year_established"]}"),
          );
        },
      ),
    );
  }
}
