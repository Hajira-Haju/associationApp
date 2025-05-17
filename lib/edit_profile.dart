import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'generated/assets.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(

              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  color: Colors.orange.shade200,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // Go back to previous screen
                    },
                  ),
                ),
                Positioned(
                  bottom: -100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(Assets.assetsImgPerson, width: 150)
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Change Picture",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  buildBoxedTextFormField('Change your name', 'Name'),
                  SizedBox(height: 16),
                  buildBoxedTextFormField('Change your email', 'Email'),
                  SizedBox(height: 16),
                  buildBoxedTextFormField('Change your number', 'Phone Number'),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300, // Background color
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 2,
              ),
              onPressed: () {

              },
              child: Text(
                'Update',
                style: TextStyle(color: Colors.black),
              ),
            )

          ],
        ),
      ),
    );
  }
}
 Widget buildBoxedTextFormField(String hint, String label) {
   return Container(
     decoration: BoxDecoration(
       color: Colors.grey.shade100,
       borderRadius: BorderRadius.circular(12),
       border: Border.all(color: Colors.grey.shade400),
       boxShadow: [
         BoxShadow(
           color: Colors.grey.withOpacity(0.1),
           blurRadius: 4,
           offset: Offset(0, 2),
         ),
       ],
     ),
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 12),
       child: TextFormField(
         decoration: InputDecoration(
           labelText: label,
           hintText: hint,
           border: InputBorder.none,
         ),
       ),
     ),
   );
 }

