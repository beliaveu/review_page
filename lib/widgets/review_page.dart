import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
import '../utilities/constants.dart';
import '../widgets/overall_rating.dart';
import '../widgets/review_comment.dart';
import '../widgets/statistics.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0.0,
        title: const Icon(
          Icons.arrow_back_ios_new,
          color: kMyColor,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const OverallRating(),
              divider,
              const Statistics(),
              divider,
              sizedBoxHeight(11.2),
              Flexible(
                fit: FlexFit.loose,
                flex: 6,
                child: Container(
                  margin: containerMargin,
                  padding: containerPadding,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ReviewComment();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
