import 'package:flutter/material.dart';
import 'package:o74isk/generated/i18n.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(S.of(context).o74isk_appName),
            centerTitle: true,
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.network(
                      'https://www.eve-wallpaper.com/public/uploads/preview/pi-industry-51546029819ol03kyquh8.jpg'),
                )
              ],
            ),
            floating: false,
            pinned: true,
            snap: false,
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container();
              },
              childCount: 5,
            ),
          ),
        ],
      );
}
