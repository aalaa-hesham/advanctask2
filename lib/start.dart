import 'dart:async';

import 'package:advanctask2/signUp.dart';
import 'package:advanctask2/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){
   Get.to( Signup());
      }
    );
    return Scaffold(
      backgroundColor: Globalcolor.main,
      body: const Center(
        child: Text('Your Market',
        style: TextStyle(color: Colors.white,
        fontSize: 44, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
