import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text('Contacts',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600)),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(children: [
          CircleAvatar(
            backgroundImage: AssetImage('aaset/africa.jpg'),
            radius: 75,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Francis Agyei',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600)),
          ),
          Center(
            child: Text('Accra Ghana',
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: const Color(0xfF9AADBE),
            child: Column(children: [
              ListTile(
                title: Text(
                  'Mobile',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('+23354151782'),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.chat,
                      color: Colors.black,
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder()),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder()),
                  ),
                ]),
              ),
              ListTile(
                title: Text(
                  'E-mail',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  'stonenana52@gmail.com',
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder()),
                  ),
                ]),
              ),
              ListTile(
                title: Text(
                  'Group',
                  style: TextStyle(fontSize: 20),
                  
                ),
                subtitle: Text('Liverpool Fans'),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              ' Account Linked',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            color: const Color(0xfF9AADBE),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Telegram',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  trailing: Image.asset('aaset/telegram.png'),
                ),
                const SizedBox(height: 10,),
                ListTile(
                  title: Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  trailing: Image.asset('aaset/whatsapp.png'),
                )
              ],
              
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              ' More Optins\',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ])
        );
  }
}
