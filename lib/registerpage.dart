import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
      RegisterScreen({super.key});

   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPsdController = TextEditingController();
  @override
  void dispose() {
    // Dispose the controllers to free up resources
    emailController.dispose();
    passwordController.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 10, 31, 222),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Create so you can explore all the',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                  ),
                ),
                const Text(
                  'existing services',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true, // Enables the background color
                      fillColor: Colors.grey[200], // Sets the gray background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 10, 31, 222) )
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true, // Enables the background color
                      fillColor: Colors.grey[200], // Sets the gray background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 10, 31, 222) )
                      )
                    ),
                  ),
                ),
                 const SizedBox(height: 20),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'confirm password',
                      filled: true, // Enables the background color
                      fillColor: Colors.grey[200], // Sets the gray background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 10, 31, 222) )
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
               Padding(padding: EdgeInsets.symmetric(horizontal: 25),
               child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 31, 222),
                  borderRadius: BorderRadius.circular(8)
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Sign up',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),),
                  ],
                )
               ),
               ),
               SizedBox(height: 20,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Already have an account" ,style: TextStyle(fontFamily: 'roboto',fontSize: 12,color: const Color.fromARGB(255, 116, 115, 115)),)
               ],),
          SizedBox(height: 50,),
          Text('Or continue with',style: TextStyle(fontWeight:FontWeight.bold,fontFamily: 'roboto',fontSize: 12,color:const Color.fromARGB(255, 16, 34, 193)),),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 50,
              decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.g_mobiledata),
            ),
            SizedBox(width: 8,),
            Container(
              height: 45,
              width: 50,
              decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.facebook_rounded),
            ),
            SizedBox(width: 8,),
            Container(
              height: 45,
              width: 50,
              decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.apple_sharp),
            )
          ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}