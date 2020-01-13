import 'package:flutter/material.dart';


class ResumeState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Padding intraField = new Padding(padding: const EdgeInsets.only(top: 7));
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title:  Text(
                "Resume",
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              elevation: 0.0,
              backgroundColor: Colors.lightBlueAccent
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            Text(
              "Education",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff4A90E2),
              ),
            ),
            intraField,
            TextFormField(

              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter Name here",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(4.0),
                  )),

            ),
          ],
        ),
      ),

    );

  }



  Widget FormVol() {
    return Scaffold(


      body: ListView(children: <Widget>[
        //---------------------------------------------------------------------------------------------
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(

                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Enter name here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),

              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(

                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter email here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),

              ),
            ],
          ),
        ),

        //---------------------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------------------
        Container(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Contact",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter contact here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),
              ),
            ],
          ),
        ),

        //---------------------------------------------------------------------------------------------

        //---------------------------------------------------------------------------------------------
        Container(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Age",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter age here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),
              ),
            ],
          ),
        ),

        //---------------------------------------------------------------------------------------------

        //---------------------------------------------------------------------------------------------
        Container(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Preferred Location(s)",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Enter preferred location(s) here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),
              ),
            ],
          ),
        ),

        //---------------------------------------------------------------------------------------------

        //---------------------------------------------------------------------------------------------
        Container(
          padding:
          const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Aadhar Card/PAN Card",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A90E2),
                ),
              ),


              //padding between Title and Field

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Enter aadhar card/PAN card here",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    )),

              ),
            ],
          ),
        ),


        SizedBox(
          height: 40,
        ),


        Padding(
          padding: EdgeInsets.all(8.0),
        ),

      ]),
    );
  }

}