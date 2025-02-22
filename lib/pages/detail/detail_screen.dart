import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../components/asset_creation.dart';
import '../../components/user_creation.dart';
import '../../config/constansts.dart';
import '../../domains/asset_repository/src/asset_model.dart';
import '../../domains/user_repository/src/user_model.dart';
import '../../providers/main_screen_provider.dart';
import 'components/header.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
      builder: (_, MainScreenProvider val, __) => Scaffold(
        body: <Widget>[
          const Header(),
          val.currentCategory.maybeWhen(
            empty: () => Container(),
            orElse: () => const Divider(thickness: 1),
          ),
          val.currentCategory.maybeWhen(
            creation: (_, Widget content) =>
                content.padding(all: kDefaultPadding),
            asset: (Asset file) {
              return AssetCreation(data: file);
            },
            user: (User user) => UserCreation(
              data: user,
            ),
            orElse: () => Container(),
          ),
        ].toColumn().scrollable(
              controller: controller,
            ),
      ),
    );
  }
}
