import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
         padding: const EdgeInsets.only(top:50,bottom: 20,),
         child: Column(
           children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child:Image.asset("asset/pregnant.png",)
                ),
              ),
            ),
            const SizedBox(height:50),
            Container(
              child: const Column(
                children: [
                   Text(
                    "Descover Your" ,textAlign:TextAlign.center,style: TextStyle(fontFamily:'Roboto',fontSize:36,fontWeight:FontWeight.bold ,color:Color(0xFF3A19F9),wordSpacing: 2)),
                  
                     Text(
                    "Dream Here" ,textAlign:TextAlign.center,style: TextStyle(fontFamily:'Roboto',fontSize:36,fontWeight:FontWeight.bold ,color:Color(0xFF3A19F9),wordSpacing: 2)),
                    SizedBox(height: 20),
                    Text("Explore all service based on your interest and fainancial capabilities",textAlign: TextAlign.center,style: TextStyle(fontFamily:'Roboto',fontSize: 12,color: Colors.grey,wordSpacing: 2),)
                ],
              )),
              SizedBox(height:50),
              Padding(padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/login");},style:ElevatedButton.styleFrom(backgroundColor: Color(0xFF3A19F9)), child: const Text("Login",style:TextStyle(color: Colors.white)),),
                  TextButton(onPressed: (){Navigator.pushNamed(context,'/register');}, child: Text('Register',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)))
                ],
              ),),
           ],
         ),
         
      ),
    );
  }
}