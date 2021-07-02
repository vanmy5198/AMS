import 'dart:io';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:styled_widget/styled_widget.dart';

import '../config/constansts.dart';
import '../config/extensions.dart';
import '../config/responsive.dart';
import '../providers/main_screen_provider.dart';
import 'side_menu_item.dart';
import 'tags.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Consumer<MainScreenProvider>(
        builder: (_, MainScreenProvider val, __) => ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            children: <Widget>[
              _renderLogo(context),
              const SizedBox(height: kDefaultPadding),
              _renderAddAssetsBtn(),
              const SizedBox(height: kDefaultPadding),
              _renderAddUserBtn(),
              const SizedBox(height: kDefaultPadding * 2),
              ..._renderSideMenuItems(val),
              const SizedBox(height: kDefaultPadding * 2),
              const Tags(),
            ],
          ),
        ),
      ),
    )
        .padding(
          top: Platform.isLinux || Platform.isWindows ? kDefaultPadding : 0,
        )
        .height(double.infinity)
        .backgroundColor(kBgLightColor);
  }

  Container _renderAddAssetsBtn() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 40),
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: kPrimaryColor,
      ),
      onPressed: () {},
      icon: LineIcon.edit(size: 16),
      label: const Text(
        'Add asset',
        style: TextStyle(color: Colors.white),
      ),
    ).addNeumorphism(
      topShadowColor: Colors.white,
      bottomShadowColor: const Color(0xFF234395).withOpacity(0.2),
    );
  }

  Container _renderAddUserBtn() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
        ),
        primary: kBgDarkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(double.infinity, 40),
        onPrimary: kPrimaryColor,
      ),
      onPressed: () {},
      icon: LineIcon.user(
        size: 16,
        color: kTextColor,
      ),
      label: const Text(
        'Add user',
        style: TextStyle(color: kTextColor),
      ),
    ).addNeumorphism();
  }

  Widget _renderLogo(BuildContext context) => <Widget>[
        const FlutterLogo(
          size: 120,
          style: FlutterLogoStyle.horizontal,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 5),
          textColor: kTextColor,
        ),
        if (!Responsive.isDesktop(context)) ...const <Widget>[
          Spacer(),
          CloseButton()
        ],
      ].toRow(mainAxisAlignment: MainAxisAlignment.center);

  List<SideMenuItem> _renderSideMenuItems(MainScreenProvider val) =>
      <SideMenuItem>[
        SideMenuItem(
          press: () {
            val.menuItem = 'Assets';
          },
          title: 'Assets',
          iconSrc: LineIcons.otter,
          isActive: val.menuItem == 'Assets',
          itemCount: 3,
        ),
        SideMenuItem(
          press: () {
            val.menuItem = 'Users';
          },
          title: 'Users',
          iconSrc: LineIcons.userAstronaut,
          isActive: val.menuItem == 'Users',
        ),
      ];
}
