import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:lsv_ams/domains/user_repository/src/user_model.dart';
import 'package:provider/provider.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../config/constansts.dart';
import '../../../config/responsive.dart';
import '../../../domains/asset_repository/src/asset_model.dart';
import '../../../domains/asset_type_repository/asset_type_repository.dart'
    as ats;
import '../../../domains/asset_type_repository/src/asset_type_model.dart';
import '../../../providers/main_screen_provider.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Provider.of<MainScreenProvider>(context)
        .currentCategory
        .maybeWhen(
          asset: (Asset asset) => _renderAssetHeader(context, asset),
          creation: (String title, _) => _renderCreationHeader(context, title),
          user: (User user) => _renderUserHeader(context, user),
          orElse: () => Container(),
        )
        .padding(all: kDefaultPadding);
  }

  Widget _renderAssetHeader(BuildContext context, Asset asset) => <Widget>[
        if (Responsive.isMobile(context)) const BackButton(),
        IconButton(
          icon: LineIcon.trash(size: 24),
          onPressed: () {},
        ),
        IconButton(
          icon: LineIcon.upload(size: 24),
          onPressed: () {},
        ),
        const Spacer(),
        FutureBuilder<AssetType?>(
          future: ats.get(asset.typeId),
          builder: (_, AsyncSnapshot<AssetType?> snapshot) {
            if (snapshot.hasData) {
              final AssetType tmp = snapshot.data!;

              return ListTile(
                trailing: LineIcon.bookmarkAlt(size: 24),
                title: Text(
                  tmp.typeName,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ).flexible();
            } else {
              return LineIcon.bookmarkAlt(size: 24);
            }
          },
        ),
        IconButton(
          icon: LineIcon.print(size: 24),
          onPressed: () {},
        ),
        IconButton(
          icon: LineIcon.verticalEllipsis(size: 24),
          onPressed: () {},
        ),
      ].toRow();

  Widget _renderCreationHeader(BuildContext context, String title) => <Widget>[
        if (Responsive.isMobile(context))
          const BackButton()
        else
          Text(
            title,
            style: Responsive.isMobile(context)
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kTitleTextColor),
          ).padding(all: 5)
      ].toRow();

  Widget _renderUserHeader(BuildContext context, User user) => <Widget>[
        if (Responsive.isMobile(context)) const BackButton(),
        IconButton(
          icon: LineIcon.trash(size: 24),
          onPressed: () {},
        ),
        const Spacer(),
        IconButton(
          icon: LineIcon.print(size: 24),
          onPressed: () {},
        ),
        IconButton(
          icon: LineIcon.verticalEllipsis(size: 24),
          onPressed: () {},
        ),
      ].toRow();
}
