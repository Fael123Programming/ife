import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ife/widgets/custom_drawer.dart';
import 'package:ife/widgets/custom_list_view_favorite.dart';
import 'package:ife/widgets/custom_sized_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Meus Favoritos',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: CustomSizedBox(),
              ),
              const Divider(
                color: Colors.black,
                height: 5,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 5, bottom: 15),
                child: Text(
                  'Anúncios',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ),
              const Flexible(
                child: CustomListViewFavorite(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
