import 'package:flutter/material.dart';
import 'package:review_page/utilities/size_config.dart';

import '../utilities/constants.dart';
import '../widgets/rating_bar.dart';

class Statistics extends StatelessWidget {
  const Statistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      flex: 2,
      child: Container(
        margin: containerMargin,
        padding: containerPadding,
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: getPropScreenWidth(90.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RatingBar(
                    rating: 5.0,
                    itemSize: fourteenFontSize,
                  ),
                  RatingBar(
                    rating: 4.0,
                    itemSize: fourteenFontSize,
                  ),
                  RatingBar(
                    rating: 3.0,
                    itemSize: fourteenFontSize,
                  ),
                  RatingBar(
                    rating: 2.0,
                    itemSize: fourteenFontSize,
                  ),
                  RatingBar(
                    rating: 1.0,
                    itemSize: fourteenFontSize,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '100%',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0%',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0%',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0%',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0%',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5 отзывов',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0 отзывов',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0 отзывов',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0 отзывов',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '0 отзывов',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
