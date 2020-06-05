import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/model/restaurant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../restaurant_detail/restaurant_detail_screen.dart';

class RestaurantWidget extends StatelessWidget {

  const RestaurantWidget({
    Key key,
    @required this.context,
    @required this.restaurant,
  }) : super(key: key);

  final BuildContext context;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return restaurant!=null?Container(
      margin: EdgeInsets.only(right: 35),
      child: Transform.translate(
        offset: Offset(0.0, 110.0),
        child:
        // Adobe XD layer: 'Near you' (group)
        Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0.0, 36.0),
              child:
              // Adobe XD layer: 'Food infor 1' (group)
              Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(16.0, 8.0),
                    child:
                    // Adobe XD layer: 'Rectangle' (shape)
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          print("On tap");
                          Navigator.push(
                              context,
                              new CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                  new RestaurantDetailScreen(restaurant: restaurant,)));
                        },
                        child: Container(
                          width: 168.0,
                          height: 190.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x1a000000),
                                offset: Offset(8, 16),
                                blurRadius: 32,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(136.0, 16.0),
                    child:
                    // Adobe XD layer: 'Like' (group)
                    Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Rectangle' (shape)
                        Container(
                          width: 40.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(2.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: const Color(0xff99adff),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(8.0, 4.0),
                          child:
                          // Adobe XD layer: 'Heart' (group)
                          Stack(
                            children: <Widget>[
                              // Adobe XD layer: 'Shape' (shape)
                              SvgPicture.string(
                                _svg_qqrib0,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Adobe XD layer: 'twenty20_3998e4bc-f…' (group)
                  Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Mask' (shape)
                      Container(
                        width: 105.0,
                        height: 105.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(restaurant.featuredImage),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(52.5, 52.5)),
                          color: const Color(0xffd8d8d8),
                        ),
                      ),
                      // Adobe XD layer: 'twenty20_3998e4bc-f…' (group)
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(35.0, 113.0),
                    child:
                    // Adobe XD layer: 'Infor' (group)
                    Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0.0, 43.0),
                          child:
                          // Adobe XD layer: 'Fresh hamburger with' (text)
                          SizedBox(
                            width: 131.0,
                            height: 26.0,
                            child: Text(
                              restaurant.cuisines,
                              style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 10,
                                color: const Color(0xff656565),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        // Adobe XD layer: '$30.00' (text)
                        Text(
                          "Starting from \$"+restaurant.priceRange,
                          style: TextStyle(
                            fontFamily: 'Montserrat-SemiBold',
                            fontSize: 14,
                            color: const Color(0xff365eff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 20.0),
                          child:
                          // Adobe XD layer: 'Chicken Hamburger' (text)
                          Text(
                            restaurant.name,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: const Color(0xff373737),
                            ),
                            textAlign: TextAlign.left,
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
      ),
    ):Container(
      margin: EdgeInsets.only(right: 35),
      child: Transform.translate(
        offset: Offset(0.0, 110.0),
        child:
        // Adobe XD layer: 'Near you' (group)
        Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0.0, 36.0),
              child:
              // Adobe XD layer: 'Food infor 1' (group)
              Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(16.0, 8.0),
                    child:
                    // Adobe XD layer: 'Rectangle' (shape)
                    Container(
                      width: 168.0,
                      height: 190.0,
                      alignment: Alignment.center,
                      child: Container(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x1a000000),
                            offset: Offset(8, 16),
                            blurRadius: 32,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
const String _svg_qqrib0 =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(3.0, 4.5)" d="M 13.5 0 C 11.89000034332275 0 10.00800037384033 1.825000047683716 9 3 C 7.992000102996826 1.825000047683716 6.110000133514404 0 4.5 0 C 1.651000022888184 0 0 2.221999883651733 0 5.050000190734863 C 0 8.182999610900879 3 11.5 9 15 C 15 11.5 18 8.25 18 5.25 C 18 2.421999931335449 16.34900093078613 0 13.5 0 Z" fill="#365eff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

