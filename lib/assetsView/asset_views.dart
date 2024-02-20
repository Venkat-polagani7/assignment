import 'package:flutter/material.dart';
import 'package:assignment_0/images/image_list.dart';


class AssetView extends StatefulWidget {
  const AssetView(void setImageType, {super.key});

  @override
  State<AssetView> createState() => _AssetViewState();
}

class _AssetViewState extends State<AssetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets Display'),),
      body: ImageList(),
    );
  }
}
