
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/ui/home_details/overview_screen.dart';
import 'package:get/get.dart';

class TermsAccept extends StatefulWidget {
  const TermsAccept({Key? key}) : super(key: key);

  @override
  _TermsAcceptState createState() => _TermsAcceptState();
}

class _TermsAcceptState extends State<TermsAccept> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.02,),

              Row(
                children: [
                  IconButton(
                      color: whiteColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: blackColor,
                      )),

                  SizedBox(width: screenSize.width * 0.1,),
                  Container(
                    height: 100,
                      width: 200,
                      child: Image.asset('assets/images/logo.png', fit: BoxFit.fill,)),
                ],
              ),

              SizedBox(height: screenSize.height * 0.03,),

              Container(
                padding: EdgeInsets.all(20),
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: Colors.black26,
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('Sign in the given space or use Right Thumb impression:',
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),)
                      ],
                    ),

                   SizedBox(height: screenSize.height * 0.55,),


                   InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                          onTap: ()  {
                            Get.toNamed('/overview');

                      },
                      child: Container(
                        height: 35,
                        width: 115,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue,
                        ),
                        child: Text(
                          'Verify',
                          style: TextStyle(color: Colors.white,fontSize: 18),
                        ),
                      ),
                             )

                  ],) ,

              ),
            ],

          ),
        ),
      ),
    );
  }
}
