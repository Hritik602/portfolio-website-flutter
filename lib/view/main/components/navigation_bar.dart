import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../widget/responsive.dart';
import '../../intro/components/side_menu_button.dart';
import 'connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset('assets/images/triange_icon.png')
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
