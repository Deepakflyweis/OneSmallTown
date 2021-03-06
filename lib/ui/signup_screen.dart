


import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/bankdetails_screen.dart';
import 'package:training_app/ui/login_screen.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _firstName = TextEditingController();
  final _secondName = TextEditingController();
  final _lastName = TextEditingController();
  final _dob = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: whiteColor,
        leading: IconButton(
            color: whiteColor,
            onPressed:() {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: blackColor,)),
      ),

      body: SingleChildScrollView(
            child: Center(
            child: Form(
                key: _form,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: screenSize.height * 0.01),

                      //Login & SignUp button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: ()  {
                              Get.toNamed('/loginScreen');
                            },
                            child: Container(
                              height: 36,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.black54,)
                              ),
                              child: Text(
                                'Login',
                                style: ButtonTextStyle,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()  {
                              Get.toNamed('/signupScreen');
                            },
                            child: Container(
                              height: 36,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.black54,)
                              ),
                              child: Text(
                                'Signup',
                                style: ButtonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Row(
                        children:  [
                        Text('Fill Your Personal details marked with ', style: ButtonTextLight,),
                        Text('*', style: TextStyle(color: Colors.red),),
                      ],),
                      SizedBox(height: screenSize.height * 0.01),

                      //Title
                      Padding(
                        padding:  EdgeInsets.all(15.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _title,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration:  const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Title',
                              suffixText: '*',
                              suffixStyle: TextStyle(
                                color: Colors.red,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //First name
                      Padding(
                        padding:  EdgeInsets.all(15.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _firstName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(12.0),
                              hintText: 'First Name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),


                      //Second name
                      Padding(
                        padding:  EdgeInsets.all(15.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _secondName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(12.0),
                              hintText: 'Second Name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Last name
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Last Name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Date of birth
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _dob,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Date of Birth ' + '*',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Gender
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _dob,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Please specify Your Gender',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Upload ID Proof
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Upload Id Proof',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          SizedBox(width: screenSize.width * 0.01),
                          Text('Fill Your Address Details marked with ', style: ButtonTextLight,),
                          Text('*', style: TextStyle(color: Colors.red),),
                        ],),

                      SizedBox(height: screenSize.height * 0.01),


                      //Physical Address
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          width: 500,
                          height: 150,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Physical Address',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),


                      //Zip Code
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Postal Code/Zip Code',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Town/City
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Postal Code/Zip Code',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //State/Province
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'State/Province',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      //Upload Address Proof
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Upload Address Proof',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenSize.height * 0.01),


                      Text('Please upload your Resume, if available        ', style: ButtonTextLight,),

                      SizedBox(height: screenSize.height * 0.01),


                     //upload resume
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(width: 0.3, color: Colors.black54),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: _lastName,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Upload resume',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: screenSize.height * 0.02),

                      //Continue button
                      InkWell(
                        borderRadius: BorderRadius.circular(5.0),
                        onTap: ()  {
                          Get.toNamed('/bankDetails');
                        },
                        child: Container(
                          height: 40,
                          width: 340,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: MyAppTheme.borderblue,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Continue',
                                style: TextStyle(color: Colors.white,fontSize: 18),
                              ),
                              Icon(Icons.arrow_forward,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),



                    ],

                  ),
                ))
           )
      ),
    );
  }
}
