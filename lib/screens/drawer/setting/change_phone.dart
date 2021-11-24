import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';

class ChangePhone extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Phone'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Current Phone Number',
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                  suffixIcon: Icon(Icons.phone_android)
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'New Phone Number',
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                  suffixIcon: Icon(Icons.phone_android)
              ),
            ),
            SizedBox(height: 100,),
            buttonsMainCategory(
              text: 'Change Phone',
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
