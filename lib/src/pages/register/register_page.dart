import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
         _imageUser(),
         _buttonBack(),
        ],
      )
    );
  }


  Widget _boxForm(BuildContext context){
    return Container(
      
      height:  MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.30, left: 40, right: 40),
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
          _textFieldName(),
          _textFieldLastName(),
          _textFieldPhone(),
          _textFieldPassword(),
          _textFieldConfirmPassword(),
          _buttonRegister(),
        ],),
      )
    );
  }

 Widget _buttonBack(){
  return SafeArea(
    child: Container(
      margin: EdgeInsets.only(top: 10, left: 20),
      child: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
           size: 30,
           color: Colors.white, 
          ),
       
        ),
    ));
 }

 Widget _buttonRegister(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
        child: Text(
          'REGISTRAR-SE', 
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
        'Cadastro',
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


  Widget _textFieldName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Nome',
          prefixIcon: Icon(Icons.person) 
        )
      ),
    );
  }

   Widget _textFieldLastName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'LastName',
          prefixIcon: Icon(Icons.person_outline) 
        )
      ),
    );
  }

   Widget _textFieldPhone(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Tel',
          prefixIcon: Icon(Icons.phone) 
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
          hintText: 'Senha',
          prefixIcon: Icon(Icons.lock) 
        )
      ),
    );
  }


 Widget _textFieldConfirmPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirmar Senha',
          prefixIcon: Icon(Icons.lock_outline) 
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


  Widget _imageUser(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/user_profile.png'),
            radius: 60,
            backgroundColor: Colors.white,
          )
        ),
      ),
    );
  }
  
}