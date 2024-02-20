import 'package:assignment_0/assetsView/asset_views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data_provider/DataProvider.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, _) => PopupMenuButton(
        onSelected: (imageType) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AssetView(
                dataProvider.setImageType(imageType),
              ),
            ),
          );
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              value: 'preview',
              child: Text('Preview'),
            ),
            const PopupMenuItem(
              value: 'small_thumb',
              child: Text('Small Thumb'),
            ),
            const PopupMenuItem(
              value: 'large_thumb',
              child: Text('Large Thumb'),
            ),
            const PopupMenuItem(
              value: 'mosaic',
              child: Text('Mosaic'),
            ),
            const PopupMenuItem(
              value: 'preview_1000',
              child: Text('Preview 1000'),
            ),
            const PopupMenuItem(
              value: 'preview_1500',
              child: Text('Preview 1500'),
            ),
            const PopupMenuItem(
              value: 'huge_thumb',
              child: Text('Huge Thumb'),
            ),
          ];
        },
      ),
    );
  }
}
