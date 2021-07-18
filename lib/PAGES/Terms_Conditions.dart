import 'package:animations/animations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:live_location_tracker/PAGES/login_page.dart';
import 'package:live_location_tracker/dialogs/policy_dialog.dart';
import 'package:live_location_tracker/dialogs/Terms_dialog.dart';

class TermsOfUse extends StatelessWidget{
  const TermsOfUse({
    Key key,
}): super(key: key);

  @override
  Widget build(BuildContext context){
      return Container(
        padding: const EdgeInsets.only(left: 40.0, top: 20.0),
          child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "By creating an account, you are agreeing to our\n",
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                text: "Terms & Conditions",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()..onTap = (){
                  showModal(context: context,
                      configuration: FadeScaleTransitionConfiguration(),
                      builder: (context){
                    return PolicyDialog(
                        mdFileName: 'terms_and_conditions.md',
                    );
                  },
                  );
                },
              ),
              TextSpan(
              text:" and "),
              TextSpan(
                text: "Privacy Policy!",

                  style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = (){
                      showDialog(context: context, builder: (context){
                        return PolicyDialog(mdFileName: 'privacy_policy.md');
                      });
                  },
              ),
              ]
          ),
        ),
          ),
      );

  }
}