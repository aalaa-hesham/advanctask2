import 'package:flutter/material.dart';

import 'login.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.lightBlue,
              Colors.cyanAccent,
              Colors.blue,
            ],
          )),
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 30,
          color: Colors.indigoAccent,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,

            children: [
              Text("Don't have an account?")
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: page()),
      ),
    );
  }

  Widget page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
            const SizedBox(height: 50),
            _other(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: new ExactAssetImage('assets/wave.jpg'),
          fit: BoxFit.cover,
        ),
          border: Border.all(color: Colors.cyanAccent, width: 30,),
          shape: BoxShape.circle),
      child: const Icon(Icons.manage_history_rounded, color: Colors.transparent, size: 200),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.black));

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(Icons.lens_blur_sharp),
        fillColor: Colors.black,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {},
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign up ",selectionColor: Colors.white,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return LoginPage();
        }));
      },
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
        ),
      ),
    );
  }
}
Widget _other() {
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.blueAccent.shade700,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),
      ),
      Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.blueAccent.shade700,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(Icons.apple,color: Colors.white,size: 40,),
      ),
      Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.blueAccent.shade700,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(Icons.facebook,color: Colors.white,size: 40,),
      ),
    ],
  );
}