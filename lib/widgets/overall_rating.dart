import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
import '../utilities/constants.dart';
import '../widgets/rating_bar.dart';

class OverallRating extends StatelessWidget {
  const OverallRating({
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
        height: getPropScreenWidth(120.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: getPropScreenWidth(36.0),
                  backgroundImage: const NetworkImage(
                    'https://img4.goodfon.ru/original/1920x1080/1/2a/ansel-elgort-baby-driver-ensel-elgort-malysh-na-draive-paren.jpg',
                  ),
                ),
                sizedBoxWidth(10.0),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Амир',
                      style: TextStyle(
                        fontSize: getAdaptiveFontSize(20.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '5.0 ',
                          style: TextStyle(
                            fontSize: getAdaptiveFontSize(16.0),
                            fontWeight: FontWeight.bold,
                            color: kMyColor,
                          ),
                        ),
                        RatingBar(
                          rating: 5.0,
                          itemSize: getPropScreenWidth(16.0),
                        ),
                      ],
                    ),
                    Text(
                      '5 отзывов',
                      style: TextStyle(
                        fontSize: fourteenFontSize,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Дата регистрации: ',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  'янв. 2021',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                Text(
                  'Поездки: ',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                  ),
                ),
                Text(
                  '4',
                  style: TextStyle(
                    fontSize: fourteenFontSize,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
