import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lec/constants/color_constant.dart';
import 'package:lec/models/card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class LecScreen extends StatefulWidget {
  @override
  _LecScreenState createState() => _LecScreenState();
}

class _LecScreenState extends State<LecScreen> {
  // Current selected
  int current = 0;

  // Handle Indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              // Custom AppBar
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    Container(
                      height: 15,
                      width: 59,
                    )
                  ],
                ),
              ),

              // Card Section
              SizedBox(
                height: 5,
              ),

              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Good Luck',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor),
                    ),
                    Text(
                      'Student',
                      style: GoogleFonts.inter(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    )
                  ],
                ),
                
              ),

              Container(
                height: 550,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 199,
                      width: 344,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child:
                                SvgPicture.asset(cards[index].cardElementTop),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                cards[index].cardElementBottom),
                          ),
                          Positioned(
                            left: 18,
                            top: 48,
                            child: Text(
                              cards[index].cardNumber,
                              style: GoogleFonts.inter(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: kTenBlackColor),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            top: 85,
                            child: Text(
                            cards[index].cardContant,
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: kWhiteColor,) 
                            ),
                          ),
                          
                          
                          
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
