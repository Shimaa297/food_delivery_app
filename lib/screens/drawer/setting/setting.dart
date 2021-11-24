import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/drawer/setting/change_password.dart';
import 'package:food_delivery_app/screens/drawer/setting/change_phone.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Security',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10,),
            helpContainerShadow(
              ListTile(
                onTap: ()
                {
                  helpNavigateTo(context, ChangePhone());
                },
                leading: Icon(Icons.phone_android, color: Colors.grey,),
                title: Text('Change Phone Number',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subtitle: Text('+965215454123',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
            SizedBox(height: 5,),
            helpContainerShadow(
              ListTile(
                onTap: ()
                {
                  helpNavigateTo(context, ChangePassword());
                },
                leading: Icon(Icons.lock, color: Colors.grey,),
                title: Text('Change Password',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subtitle: Text('********',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
