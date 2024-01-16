import 'package:flutter/material.dart';
import 'package:newsapp/widget/news_tile.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(),
        );
      },
    );
  }
}
