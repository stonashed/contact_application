import 'dart:html';

import 'package:contact_application/contact_view.dart';
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
                    fontWeight: FontWeight.w600)
                    ),
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
              const Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Recent',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  )),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('aaset/africa.jpg'),
                    ),
                    title: Text(
                      'Nana Kwasi',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('+233 54 151 9532'),
                    trailing: Icon(
                      Icons.more_horiz,
                      size: 20,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 3,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('Contact',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600))),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('A',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600))),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ContactView();
                        }));
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('aaset/africa.jpg'),
                      ),
                      title: Text(
                        'Francis Agyei',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('+233 54 151 9532'),
                      trailing: Icon(
                        Icons.more_horiz,
                        size: 20,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 8,
                    );
                  },
                  itemCount: 2)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {},
          backgroundColor: Colors.black,
        ));
  }
}
