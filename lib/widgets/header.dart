import 'package:flutter/material.dart';
import 'package:login_ui/utils/constants.dart';
import 'package:login_ui/utils/fade_slide_transition.dart';
import 'package:login_ui/utils/my_theme.dart';




class Header extends StatelessWidget {
  final Animation<double> animation;
  final bool isLogin;
  
 const  Header({
    required this.animation,
    required this.isLogin,
 
  }) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
         const SizedBox(height: 50),
          Card(
            clipBehavior: Clip.antiAlias,
            color: MyTheme.themeColorFive,
            shape: RoundedRectangleBorder(
              side:const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 10,
            shadowColor: MyTheme.themeColorFive,
            child:
               Image.asset(
                        'assets/logo.png',
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
          ),
          const SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Center(
              child:
                  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome To',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              ' NLogin',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: MyTheme.themeColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                     
                 
            ),
          ),
          const SizedBox(height: kSpaceS),
        ],
      ),
    );
  }
}
