// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:contact_application/contact_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'contact_models.dart';

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
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Recent',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  )),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ContactView(
                              contact: Contact(
                            name: "Agyei Francis",
                            phone: "+2335415421541",
                            email: "stonenana52@gmail.com",
                            country: "Ghana",
                            region: "Eastern Region",
                          ));
                        },
                      ));
                    },
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
              GroupedListView<Map<String, String>, String>(
                  shrinkWrap: true,
                  elements: data,
                  groupBy: (element) =>
                      element['name'].toString().substring(0, 1),
                  groupSeparatorBuilder: (String groupByValue) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            groupByValue,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                  itemBuilder: (context, Map<String, String> element) {
                    Contact contact = Contact.fromJson(element);
                    return Column(children: [
                      ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ContactView(contact: contact);
                            }
                            )
                            );
                          },
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('aaset/africa.jpg'),
                          ),
                          title: Text(
                            '${element["name"]}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('${element["phone"]}')),
                      const Divider(),
                    ]);
                  },
                  itemComparator: (item1, item2) =>
                      item1['name']!.compareTo(item2['name']!),
                  order: GroupedListOrder.ASC)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {},
          backgroundColor: Colors.black,
        ));
  }
}
