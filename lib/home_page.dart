import 'dart:html';

import 'package:contact_application/contact_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Map<String, String>> data = [
    {
      "name": "Bright Agyei",
      "phone": "+23324856532",
      'email': "brightkwaku52@gmail.com",
      "country": "india",
      "region": "Mumbai"
    },
    {
      "name": "Esther yaa",
      "phone": "+2335982454514",
      'email': "agyei2010@gmail.com",
      "country": "Japan",
      "region": "Tokyo"
    },
    {
      "name": "Mariama Ama",
      "phone": "+233205878954",
      'email': "stonenana52@gmail.com",
      "country": "Togo",
      "region": "Lome"
    },
    {
      "name": "Kwakye Nomah",
      "phone": "+233544145421",
      'email': "nana2@gmail.com",
      "country": "Ghana",
      "region": "Eastern"
    },
    {
      "name": "Dennis Opoku",
      "phone": "+233245144244",
      'email': "stone@gmail.com",
      "country": "canada",
      "region": "toronto"
    },
    {
      "name": "Yaw Agyei",
      "phone": "+23358985475",
      'email': "stonena@gmail.com",
      "country": "germany",
      "region": "duseldolf"
    }
  ];

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
