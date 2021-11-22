import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: Text('My Contact',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('aaset/africa.jpg'),
                radius: 30.0,
              ),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search by name or number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ))),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Recent',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                )),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('aaset/africa.jpg'),
              ),
              title: Text('Francis Agyei'),
              subtitle: Text('+233 54 151 9532'),
              trailing: Icon(Icons.more_horiz),
            )
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('aaset/africa.jpg'),
              ),
              title: Text('Francis Agyei'),
              subtitle: Text('+233 54 151 9532'),
              trailing: Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }
}
