import 'package:flutter/material.dart';
import 'package:ife/views/favorites/my_favorites_screen.dart';
import 'package:ife/views/home/home_screen.dart';
import 'package:ife/views/profile/profile_screen.dart';
import 'package:ife/views/announcements/my_announcements.dart';

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
          ListTile(
            title: const Text('Meu Perfil'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
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
          ListTile(
            title: const Text('Meus Anúncios'),
            leading: const Icon(Icons.assignment_returned),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyAnnouncements(),
                ),
              );
            },
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
