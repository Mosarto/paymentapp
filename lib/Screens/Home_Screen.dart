import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paymentapp/Database/database.dart';
import 'package:paymentapp/Widgets/Card_Widget.dart';
import 'package:paymentapp/Widgets/Menu_Widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD6D6D6),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            MenuWidget(),
            SingleChildScrollView(
              child: Container(
                width: 500,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 60,
                      bottom: 20,
                      left: 30,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 210,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 30,
                            right: 30,
                            bottom: 30,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Balance',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: Colors.black54,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        '₹',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$ 8,453.00',
                                style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/up.svg',
                                      height: 20,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '+\$ 2431.00',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff4D4D4D),
                                      ),
                                    ),
                                    SizedBox(width: 35),
                                    SvgPicture.asset(
                                      'assets/icons/down.svg',
                                      height: 20,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '-\$ 526.00',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff4D4D4D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 220,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 30,
                            right: 30,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Information',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 27,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: Colors.black54,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/information.svg',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              for (final buttondata
                                  in informationiconsdatamain) ...[
                                Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  height: 30,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: SvgPicture.asset(
                                          'assets/icons/${buttondata.icon}',
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 25,
                                        width: 75,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '${buttondata.name}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            height: 1.0,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ':',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.0,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        '${buttondata.data}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        Container(
                          height: 220,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 30,
                            right: 30,
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Security',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      'assets/icons/more.svg',
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 45,
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 15),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/2xa.svg',
                                        color: Colors.white,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                    Text(
                                      '2X A Enabled',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 55,
                                      height: 26,
                                      padding: EdgeInsets.only(
                                        top: 4,
                                        bottom: 4,
                                        left: 2,
                                        right: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 22,
                                            width: 22,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 45,
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 15),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xffECECEC),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/key.svg',
                                        color: Colors.black,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                    Text(
                                      'Key',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 100,
                                      height: 26,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffBFBFBF),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Change',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: 500,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 60,
                          bottom: 40,
                          left: 20,
                          right: 20,
                        ),
                        padding: EdgeInsets.only(
                          top: 195,
                          left: 40,
                          right: 40,
                          bottom: 30,
                        ),
                        height: 692,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 22,
                              alignment: Alignment.center,
                              child: Text(
                                'Transactions',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              height: 50,
                              padding: EdgeInsets.only(
                                top: 4,
                                bottom: 4,
                                left: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        'Send',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Apply',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 35),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 14,
                              child: Text(
                                'Pay to',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                top: 2,
                                bottom: 2,
                                left: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                '0213 - 1413 - 2242 - 5735 - 4634 - 3655',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff393939),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Please enter the Wallet ID or Destination email',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff808080),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 35),
                            Container(
                              height: 90,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Amount',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 40,
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xffEFEFEF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '\$ 400',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Spacer(),
                                                SvgPicture.asset(
                                                  'assets/icons/updown.svg',
                                                  height: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 14,
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Commission',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff404040),
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$5',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff404040),
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Reason',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 40,
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xffEFEFEF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Shopping',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 14,
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Total',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff404040),
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$405',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff404040),
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color(0xffD800A8),
                                    Color(0xffFF007A),
                                  ],
                                  tileMode: TileMode.mirror,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/send.svg',
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: CardWidget(),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: 230,
                height: 722,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 30,
                  top: 60,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    for (final servicedata in servicedatamain) ...[
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5,
                              right: 5,
                              bottom: 15,
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/${servicedata.image}',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${servicedata.name}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
