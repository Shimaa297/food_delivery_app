import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/home_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgetPasswordScreen  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Forget Password ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'please enter your phone number You will receive a link to create a new password via phone.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey, fontWeight: FontWeight.w600, height: 1.5),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Your Phone',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (phone) {
                      print('تم تغيير رمز البلد إلى: ' + phone.countryCode);
                    },
                  ),
                ),
                SizedBox(height: 50,),
                buttonsMainCategory(
                  function: ()
                  {
                    helpNavigateTo(context, HomePage());
                  },
                  height: 50,
                  colorText: Colors.white,
                  color: defaultColor,
                  fontSize: 20,
                  text: 'Send',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
