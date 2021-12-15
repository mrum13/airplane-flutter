import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Howdy,\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6,),
                  Text('Where to fly today ?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:AssetImage(
                    'assets/image_profile.png'
                  ))
              ),
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
      ],
    );
  }
}