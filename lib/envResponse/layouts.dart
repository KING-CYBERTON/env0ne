import 'package:flutter/material.dart';

class Webview extends StatelessWidget {
  const Webview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Center(child: Text('this is web'),)
      ); 
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(child: Text('this is mobile'),),
    );
  }
}