import 'package:flutter/material.dart';
import 'package:flutter_peacedev/widgets/widgets.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 180,),
        ListProducts(),
        OfferLists(),
        CategoriesTrendings(),
      ],
    );
  }
}

