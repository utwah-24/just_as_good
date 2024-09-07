import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFFA500),
      child: Column(children: <Widget>[
        AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFFFA500),
          title: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            CircleAvatar(
              radius: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  'assets/images/aiMe.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Hello,Utwah',
            )
          ]),
          automaticallyImplyLeading: false,
          toolbarHeight: 200,
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            size: 35,
            Icons.shopping_basket,
            color: Colors.black,
          ),
          title: const Text(
            'Shop',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            size: 35,
            Icons.receipt,
            color: Colors.black,
          ),
          title: const Text('Orders', style: TextStyle(fontSize: 20)),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            size: 35,
            Icons.pin_drop_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Track delivery',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            size: 35,
            Icons.shopping_cart,
            color: Colors.black,
          ),
          title: const Text(
            'My cart',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            size: 35,
            Icons.question_mark,
            color: Colors.black,
          ),
          title: const Text(
            'Help & FAQ\'s',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const SizedBox(
          height: 70,
        ),
        const Divider(
          color: Color(0xFFFFA500),
        ),
        ListTile(
          title: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Text('Become supplier'),
            onPressed: () {},
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
      ]),
    );
  }
}
