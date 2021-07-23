import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/Database/database.dart';

class MenuWidget extends StatefulWidget {
  MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: 235,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            height: double.infinity,
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 5),
                              blurRadius: 2.0,
                              spreadRadius: -2,
                            ),
                          ],
                        ),
                        child: LinearGradientMask(
                          child: SvgPicture.asset(
                            'assets/icons/logo.svg',
                            width: 28,
                            height: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'WPayme',
                        style: GoogleFonts.solway(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            shadows: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 5),
                                blurRadius: 2.0,
                                spreadRadius: -2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                for (final buttondata in iconsButtonsMain) ...[
                  InkWell(
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        select(
                          int.parse('${buttondata.index}'),
                        );
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 265),
                      curve: Curves.easeInSine,
                      height: selected[int.parse('${buttondata.index}')] == true
                          ? 40
                          : 30,
                      margin: EdgeInsets.only(
                        bottom:
                            selected[int.parse('${buttondata.index}')] == true
                                ? 20
                                : 2,
                        top: selected[int.parse('${buttondata.index}')] == true
                            ? 10
                            : 2,
                      ),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 265),
                            curve: Curves.easeInSine,
                            right: selected[int.parse('${buttondata.index}')] ==
                                    true
                                ? 0
                                : 15,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 265),
                              curve: Curves.easeInSine,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 230
                                      : 215,
                              height:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 40
                                      : 30,
                              decoration: BoxDecoration(
                                color: selected[
                                            int.parse('${buttondata.index}')] ==
                                        true
                                    ? Color(0xff000000)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    child: SvgPicture.asset(
                                      'assets/icons/${buttondata.icon}',
                                      color: selected[int.parse(
                                                  '${buttondata.index}')] ==
                                              true
                                          ? Colors.white70
                                          : Color(0xff404040),
                                      height: 15,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '${buttondata.name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selected[int.parse(
                                                  '${buttondata.index}')] ==
                                              true
                                          ? Color(0xffFFFFFF)
                                          : Color(0xff404040),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Spacer(),
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? Icon(
                                          Icons.arrow_right,
                                          color: Color(0xffFFFFFF),
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 265),
                              curve: Curves.easeInOut,
                              width:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 6
                                      : 0,
                              height:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 40
                                      : 0,
                              decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 45),
                  width: 210,
                  height: 1,
                  color: Colors.black45,
                ),
                SizedBox(height: 15),
                for (final buttondata in iconsButtonSecound) ...[
                  InkWell(
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        select(
                          int.parse('${buttondata.index}'),
                        );
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 265),
                      curve: Curves.easeInSine,
                      height: selected[int.parse('${buttondata.index}')] == true
                          ? 40
                          : 30,
                      margin: EdgeInsets.only(
                        bottom:
                            selected[int.parse('${buttondata.index}')] == true
                                ? 20
                                : 2,
                        top: selected[int.parse('${buttondata.index}')] == true
                            ? 10
                            : 2,
                      ),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 265),
                            curve: Curves.easeInSine,
                            right: selected[int.parse('${buttondata.index}')] ==
                                    true
                                ? 0
                                : 15,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 265),
                              curve: Curves.easeInSine,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 230
                                      : 215,
                              height:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 40
                                      : 30,
                              decoration: BoxDecoration(
                                color: selected[
                                            int.parse('${buttondata.index}')] ==
                                        true
                                    ? Color(0xff000000)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    child: SvgPicture.asset(
                                      'assets/icons/${buttondata.icon}',
                                      color: selected[int.parse(
                                                  '${buttondata.index}')] ==
                                              true
                                          ? Colors.white70
                                          : Color(0xff404040),
                                      height: 15,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    '${buttondata.name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selected[int.parse(
                                                  '${buttondata.index}')] ==
                                              true
                                          ? Color(0xffFFFFFF)
                                          : Color(0xff404040),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Spacer(),
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? Icon(
                                          Icons.arrow_right,
                                          color: Color(0xffFFFFFF),
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 265),
                              curve: Curves.easeInOut,
                              width:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 6
                                      : 0,
                              height:
                                  selected[int.parse('${buttondata.index}')] ==
                                          true
                                      ? 40
                                      : 0,
                              decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                Spacer(),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 30, right: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 15,
                        padding: EdgeInsets.only(
                          top: 2,
                          bottom: 2,
                          left: 1,
                        ),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color(0xffC9C9C9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Clear',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff3300FF),
            Color(0xffFF007A),
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
