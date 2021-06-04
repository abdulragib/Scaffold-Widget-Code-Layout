import 'package:flutter/material.dart';
import './ui/Home.dart';
main()
{
  runApp(
    new MaterialApp(
      title: "Scaffold",
      home: new Home(),
    )

  );
}


// BuildContext used to locate a widget in widget tree and every widget have their own buildcontext.