import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(children: [
          //AVAILABLE
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_available.png'))),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),

          //SELECTED
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(left: 10, right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'))),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),

          //UNAVAILABLE
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(left: 10, right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'))),
          ),
          Text(
            'Unavailable',
            style: blackTextStyle,
          )
        ]),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          children: [
            //SEAT INDICATORS
            Row(
              children: [
                Expanded(
                    child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Text(
                    '',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                )),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat()],
      ),
    );
  }
}
