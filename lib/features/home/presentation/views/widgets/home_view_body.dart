import 'package:flutter/material.dart';
import 'package:reading/core/utils/styles.dart';
import 'package:reading/features/home/presentation/views/widgets/sliver_appbar.dart';
import 'bestsellersliverlist.dart';
import 'featuredbookslistview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      slivers: [
        const CustomSliverAppBar(),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeaturedBooksListView(
                height: height,
                width: width,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle20,
                ),
              ),
            ],
          ),
        ),
        NewestBooksSliverList(height: height, width: width)
      ],
    );
  }
}
