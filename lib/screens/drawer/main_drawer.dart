import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/drawer/profile_screen.dart';
import 'package:food_delivery_app/screens/drawer/setting/setting.dart';
import 'package:food_delivery_app/screens/registeration/welcom_screen.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Goin',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: defaultColor, fontWeight: FontWeight.bold, fontSize: 40, height: 1.2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, bottom: 30),
              child: Text(
                'Delivery',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: defaultColor, fontWeight: FontWeight.bold, fontSize: 40, height: 1.2),
              ),
            ),
            expandedSetting(
              function: (){},
              icon: Icons.sports_basketball_outlined,
              text: 'Country & Language',
            ),
            expandedSetting(
              function: ()
              {
                helpNavigateTo(context, ProfileScreen());
              },
              icon: Icons.person,
              text: 'Profile',
            ),
            expandedSetting(
              function: ()
              {
                helpNavigateTo(context, SettingScreen());
              },
              icon: Icons.settings,
              text: 'Setting',
            ),
            expandedSetting(
              function: (){},
              icon: Icons.policy,
              text: 'Privacy & Policy',
            ),
            expandedSetting(
              function: (){},
              icon: Icons.person,
              text: 'Terms & Conditions',
            ),
            SizedBox(height: 80,),
            ListTile(
              onTap: ()
              {
                helpNavigateTo(context, WelcomeScreen());
              },
              leading: Icon(Icons.logout, color: Colors.grey,),
              title: Text(
                'Sign out',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}