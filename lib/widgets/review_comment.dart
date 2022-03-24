import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
import '../utilities/constants.dart';
import '../widgets/rating_bar.dart';

class ReviewComment extends StatelessWidget {
  const ReviewComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: getPropScreenWidth(18.0),
              backgroundImage: const NetworkImage(
                'https://img4.goodfon.ru/original/1920x1080/1/2a/ansel-elgort-baby-driver-ensel-elgort-malysh-na-draive-paren.jpg',
              ),
            ),
            sizedBoxWidth(10.0),
            SizedBox(
              width: getPropScreenWidth(274.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Амир',
                        style: TextStyle(
                          fontSize: fourteenFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '23.03.2022',
                        style: TextStyle(
                          fontSize: twelveFontSize,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  RatingBar(
                    rating: 5.0,
                    itemSize: getPropScreenWidth(12.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        sizedBoxHeight(9.1),
        Text(
          'The itemBuilder and separatorBuilder callbacks should always return a non-null widget.',
          style: TextStyle(
            fontSize: fourteenFontSize,
          ),
        ),
        sizedBoxHeight(5.4),
      ],
    );
  }
}
