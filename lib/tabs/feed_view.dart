import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: MasonryGridView.builder(
        itemCount: 32,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4.0),
          // ignore: prefer_interpolation_to_compose_strings
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20), child: Image.asset(
                  // ignore: prefer_interpolation_to_compose_strings
                  'lib/img/image' + (index + 1).toString() + '.jpg')),
        ),
      ),
    );
  }
}
