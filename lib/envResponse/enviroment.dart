
import 'package:coolapp/envResponse/layouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class EvnPlaform extends StatelessWidget {
  final WebviewEvn;
  final MObileviewEvn;
  const EvnPlaform( {Key? key, 
      required this.WebviewEvn,
       required this.MObileviewEvn,
       }): super(key: key);

  static const mobilesize=800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:((context, constraints) {
      if (constraints.maxWidth>mobilesize) {
        //shows weblayout
        return WebviewEvn;
      }
      //shows moblielayout
      return MObileviewEvn;


      
    }));
  }
}
