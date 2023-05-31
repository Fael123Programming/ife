import 'package:flutter/material.dart';

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
              // backgroundImage: AssetImage(''),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
          ListTile(
            title: const Text('Meu Perfil'),
            leading: const Icon(Icons.person),
            onTap: () => Navigator.pushNamed(context, '/home/my_profile'),
          ),
          ListTile(
            title: const Text('Meus Favoritos'),
            leading: const Icon(
              Icons.favorite,
            ),
            onTap: () => Navigator.pushNamed(context, '/home/my_favorites'),
          ),
          ListTile(
            title: const Text('Meus Anúncios'),
            leading: const Icon(Icons.assignment_returned),
            onTap: () => Navigator.pushNamed(context, '/home/my_publications')
          ),
          ListTile(
            title: const Text('Cadastrar Anúncio'),
            leading: const Icon(Icons.campaign_sharp),
            onTap: () => Navigator.pushNamed(context, '/home/create_publication'),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          ListTile(
            title: const Text('Política de Privacidade'),
            onTap: () => Navigator.pushNamed(context, '/home/privacy_policy')
            ,
          ),
          ListTile(
            title: const Text('Termos de Serviço'),
            onTap: () => Navigator.pushNamed(context, '/home/service_terms'),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          ListTile(
            title: const Text('Relatar um problema'),
            onTap: () => Navigator.pushNamed(context, '/home/report_a_problem'),
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () => Navigator.pushNamed(context, '/home/about'),
          ),
        ],
      ),
    );
  }
}
