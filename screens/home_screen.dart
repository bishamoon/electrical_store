import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/constants.dart';

import '../widgets/home/home_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('مرحبا بكم بمتجر الالكترونيات',
          style: GoogleFonts.getFont('Almarai')),
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
