import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.only(top: 25, left: 100, right: 100),
      padding: EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Rectangle.png',
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffEC9B76),
            offset: Offset(0, 5),
            blurRadius: 20.0,
            spreadRadius: -10,
          ),
          BoxShadow(
            color: Color(0xffE177AB).withOpacity(0.4),
            offset: Offset(0, 20),
            blurRadius: 50.0,
            spreadRadius: -5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 35,
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/chip.svg',
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width: 26,
                    height: 26,
                    color: Color(0xffF9E8F8),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'WPayme',
                  style: GoogleFonts.solway(
                    textStyle: TextStyle(
                      color: Color(0xffF9E8F8),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '4563     6748     3754     1773',
            style: GoogleFonts.solway(
              textStyle: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            child: Row(
              children: [
                Text(
                  '\$ 8,453.00',
                  style: GoogleFonts.solway(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        child: SvgPicture.asset(
                          'assets/icons/mastercad.svg',
                        ),
                      ),
                      Text(
                        'Mastercard',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
