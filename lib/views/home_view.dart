import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/widget/category_card.dart';
import 'package:newsapp/widget/category_list_view.dart';
import 'package:newsapp/widget/news_list_view.dart';
import 'package:newsapp/widget/news_tile.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     const SizedBox(height: 32),
        //     const Expanded(
        //       child: NewListView(),
        //     ),
        //   ],
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            const SliverToBoxAdapter(
              child: NewListView(),
            )
          ],
        ),
      ),
    );
  }
}
