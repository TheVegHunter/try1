import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle RubikMedium15 = new TextStyle(
      /*fontSize: 15,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
        color: Color(0xff4A4A4A)*/

      fontFamily: 'fonts/Rubik-Regular',
      fontSize: 16.0,
      color: Color(0xff4A4A4A),
    );

    TextStyle RubikMedium20 = new TextStyle(
        fontSize: 20,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w700,
        color: Color(0xff4A4A4A));

    return Scaffold(
      /*  appBar: AppBar(
      title:  Text(
      "Settings",
      style: TextStyle(
        fontFamily: 'Poppins-Bold',
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 30,

      ),
    ),
    elevation: 0.0,
    backgroundColor: Colors.white,


    // backgroundColor: Colors.white.withOpacity(1.0),

    ),*/

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 18.0),
          child: Align(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text('Legal Policy',
                        textAlign: TextAlign.left, style: RubikMedium20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(
                      '1. We use your data for our volunteering arrangements.                        ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '2. We use a valid authentication process for Authorization of paymnet process                     ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '3. We use SSH to secure your data which is highly secured and encrypted                 ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text('Licences and Acknowledgments',
                        textAlign: TextAlign.left, style: RubikMedium20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(
                      '1.Rubik \nGoogle fonts copyrights reserved, 2018.                         ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '2.Poppins \nGoogle fonts copyrights reserved, 2015.                         ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '3. Razorpay Payment Gateway \nRazorpay Team, copyrights reserved, 2014.                         ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text('Permissions',
                        textAlign: TextAlign.left, style: RubikMedium20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(
                      '1. We access your gallery for publishing photos.                 ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '2. We use push-notifications to alert users about news.         ',
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Text(
                      '3. We read/write your external storages.                                                      ',
                      textAlign: TextAlign.left,
                      style: RubikMedium15),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                  RaisedButton(
                    child: Text(
                      'I agree',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      onPressed:() {
                        Navigator.pop(context);
                      },

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
