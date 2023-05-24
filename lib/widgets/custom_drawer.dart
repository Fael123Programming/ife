import 'package:flutter/material.dart';
import 'package:ife/views/favorites/my_favorites_screen.dart';
import 'package:ife/views/home/home_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFFB20F),
            ),
            accountName: Text('Mark Johson'),
            accountEmail: Text('mark.johson@marketing.io'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(''),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          const ListTile(
            title: Text('Meu Perfil'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: const Text('Favoritos'),
            leading: const Icon(
              Icons.favorite,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyFavoritesScreen(),
                ),
              );
            },
          ),
          const ListTile(
            title: Text('Meus Anúncios'),
            leading: Icon(Icons.assignment_returned),
          ),
          const ListTile(
            title: Text('Cadastrar Anúncio'),
            leading: Icon(Icons.campaign_sharp),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          const ListTile(
            title: Text('Politica de Privacidade'),
          ),
          const ListTile(
            title: Text('Termos de Serviço'),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          const ListTile(
            title: Text('Relatar um problema'),
          ),
          const ListTile(
            title: Text('Sobre'),
          ),
        ],
      ),
    );
  }
}
