import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú de widgets"),
        backgroundColor: Colors.purple
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/contador"),
            title: const Text("Contador"),
            leading: const Icon(Icons.tag, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple,),
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/container"),
            title: const Text("Container"),
            leading: const Icon(Icons.contact_mail, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/card"),
            title: const Text("Card"),
            leading: const Icon(Icons.card_giftcard, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/stack"),
            title: const Text("Stack"),
            leading: const Icon(Icons.stacked_bar_chart, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/listview"),
            title: const Text("List View"),
            leading: const Icon(Icons.list, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/form"),
            title: const Text("Form"),
            leading: const Icon(Icons.note_alt, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/menu-controller"),
            title: const Text("Menu controller"),
            leading: const Icon(Icons.menu, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/figura"),
            title: const Text("Figura"),
            leading: const Icon(Icons.circle, color: Colors.purple),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple)
          )
        ],
      ),
    );
  }
}