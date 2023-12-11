import 'package:app_delivery/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
 

   LoginController con = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
         ),
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          Column(children: [
            _imageCover(),
            _textAppName(),
          ],)
        ],
      )
    );
  }


  Widget _boxForm(BuildContext context){
    return Container(
      
      height:  MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33, left: 40, right: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
          color: Colors.black54,
          blurRadius: 15,
          offset: Offset(0,0.75),
          )
        ]
      ),
      child:SingleChildScrollView(
        child: Column(children: [
          _textYoutInfo(),
          _textFieldEmail(),
          _textFieldPassword(),
          _buttonLogin(),
        ],),
      )
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
        child: Text(
          'LOGIN', 
          style: TextStyle(
            color: Colors.black,
          )),
        onPressed: (){}, 
        ),
    );
  }

  Widget _textYoutInfo(){
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 20),
      child: Text(
        'EFETUAR LOGIN',
        style: TextStyle(color: Colors.black54),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: Icon(Icons.email) 
        )
      ),
    );
  }

 Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(Icons.lock) 
        )
      ),
    );
  }

  Widget _backgroundCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.42,
      color: Colors.amber,
    );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Não tem uma conta?',
        style: TextStyle(color: Colors.black)),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () => con.goToRegisterPage(),
        child: const Text(
          'Registre-se aqui...',
          style: TextStyle(color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          ),
          ),
          ),
    ],);
  }

  Widget _textAppName(){
    return const Text(
      'DELIVERY APP', 
       style: TextStyle( 
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
        ), 
      );
  }

  Widget _imageCover(){
    return SafeArea(
      child: Container(
         margin: EdgeInsets.only(top: 20, bottom: 15),
         alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/img/delivery.png',
          width: 130,
          height: 130,
        )
      ),
    );
  }

  

  
}