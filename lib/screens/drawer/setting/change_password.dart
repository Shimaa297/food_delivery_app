import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';

class ChangePassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Current Password',
                labelStyle: Theme.of(context).textTheme.bodyText2,
                suffixIcon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                  suffixIcon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 100,),
            buttonsMainCategory(
              text: 'Change Password',
              fontSize: 22,
              color: defaultColor,
              height: 50,
              colorText: Colors.white,
              function: (){},
            ),
          ],
        ),
      ),
    );
  }
}
