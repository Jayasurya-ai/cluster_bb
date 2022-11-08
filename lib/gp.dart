//         import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:usb_serial/transaction.dart';
//         import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;
//         import 'package:usb_serial/usb_serial.dart';
//         import 'dart:convert' show jsonDecode, jsonEncode, utf8;
// import 'package:flutter_svg/flutter_svg.dart';
        
//         class Group2Widget extends StatefulWidget {

//         @override
//         _Group2WidgetState createState() => _Group2WidgetState();
//         }
        
//         class _Group2WidgetState extends State<Group2Widget> {
//           bool _leftindicator=false;
//           bool _rightindicator=false;
//           bool _headlight=false;
//           bool _sidestand=false;
//           double _soc=0;
//           double _speed=0;
//           bool reconnect=false;
//           double _distance=0.0;
//           bool _reverce=false;
//           String _mode="ECO";
//           bool _power=false;
//           String _rdata="";

//           @override
//         Widget build(BuildContext context) {



//         // Figma Flutter Generator Group2Widget - GROUP
        
//         return Scaffold(
//         backgroundColor : Colors.white,
//           body: Container(

//         width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,

//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(0, 0,0, 00),
//         child: Stack(




//             children: <Widget>[









//               Positioned(
//             top: 0,
//             left: 0,
//             child: Container(
//         width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//             color:Colors.white,
//               // color: Colors.red
//   ),
//         child: Stack(
//             children: <Widget>[
//         //     Positioned(
//         //
//         //
//         //
//         //     top: 28.5,
//         //     left: 680,
//         //     child: Container(
//         //       decoration: BoxDecoration(
//         //         borderRadius: BorderRadius.circular(20),
//         //         boxShadow : [BoxShadow(
//         //             color: Color.fromRGBO(0, 0, 0, 0.25),
//         //             offset: Offset(12,2),
//         //             blurRadius: 13
//         //         )],
//         //       ),
//         //       child: SvgPicture.asset(
//         //
//         //       'assets/vector14.svg',
//         //       semanticsLabel: 'vector5',
//         //       color: Colors.white,
//         //
//         // ),
//         //     ),
//         //
//         // ),

//               Positioned(
//                 top: 28.5,
//                     left: 680,
//                 child: Transform.rotate(
//                   angle: 180 * (math.pi / 180),
//                   child: Container(

//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [BoxShadow(
//                           color: Color.fromRGBO(0, 0, 0, 0.25),
//                           offset: Offset(-12,-9),
//                           blurRadius: 3
//                       )],
//                     ),
//                     child: SvgPicture.asset(

//                       'assets/vector6.svg',
//                       semanticsLabel: 'vector6',
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),

//         // Positioned(
//         //     top: 41,
//         //     left: 720,
//         //     child: Text('N', textAlign: TextAlign.left, style: TextStyle(
//         //     color: Colors.grey,
//         //     fontFamily: 'Inter',
//         //     fontSize: 47,
//         //     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//         //     fontWeight: FontWeight.normal,
//         //     height: 1
//         // ),)
//         // ),

//               Positioned(
//             top: 41,
//             left: 743,
//             child: Text('D', textAlign: TextAlign.left, style: TextStyle(
//             color:  _reverce==true?Colors.black:Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',
//             fontSize: 47,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: _reverce==true?FontWeight.bold:FontWeight.normal,
//             height: 1
//         ),)
//         ),Positioned(
//             top: 41,
//             left: 810,
//             child: Text('R', textAlign: TextAlign.left, style: TextStyle(
//  color: _reverce==false?Colors.black:Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',

//             fontSize: 47,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: _reverce==false?FontWeight.bold:FontWeight.normal,
//             height: 1
//         ),)
//         ),


//         // Positioned(
//         //     top: -2.5,
//         //     left: 670,
//         //     child: SvgPicture.asset(
//         //     'assets/vector4.svg',
//         //     semanticsLabel: 'vector4'
//         // ),
//         // ),

//         Positioned(
//             top: 7,
//             left: 450,
//             child: Text("${_soc*0.6}"+' KM', textAlign: TextAlign.left, style: TextStyle(
//             color: Colors.black,
//             fontFamily: 'Impact',
//             fontSize: 60,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.bold,
//             height: 1
//         ),)
//         ),

//         Positioned(
//             top: 90,
//    left: 480,
//             child: Text('${_soc}%', textAlign: TextAlign.left, style: TextStyle(
//             color: Colors.grey,
//             fontFamily: 'Inter',
//             fontSize: 47,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),


//         Positioned(
//             top: 33,
//             left: 196,
//             child: Container(

//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                   boxShadow: [BoxShadow(
//                       color: Color.fromRGBO(0, 0, 0, 0.25),
//                       offset: Offset(-12,9),
//                       blurRadius: 3
//                   )],
//               ),
//               child: SvgPicture.asset(

//               'assets/vector6.svg',
//               semanticsLabel: 'vector6',
//                 color: Colors.white,
//         ),
//             ),
//         ),


//         Positioned(
//             top: 59,
//             left: 350,
//             child: SvgPicture.asset(
//             'assets/vector7.svg',
//             semanticsLabel: 'vector7'
//         ),
//         ),

//         Positioned(
//             top: 164,
//                 left: 370.5,
//             child: SvgPicture.asset(
//             'assets/vector8.svg',
//             semanticsLabel: 'vector8',
//             color: Color(0xff63A0F9),
//         ),
//         ),

//         Positioned(
//             top: 169.27166748046875,
//               left: 700.5,
//             child: RotationTransition(
//            turns: new AlwaysStoppedAnimation(7),
//             child: SvgPicture.asset(
//             'assets/vector9.svg',
//             semanticsLabel: 'vector9',
//               color: Color(0xff63A0F9),
//         ),
//         )
//         ),

//         Positioned(
//             top: 251,
//              left: 440.5,
//             child: Text('${_speed}', textAlign: TextAlign.left, style: TextStyle(
//             color: Colors.black,
//             fontFamily: 'Impact',
//             fontSize: 159,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.w600,
//             height: 1
//         ),)
//         ),

//         Positioned(
//             top: 429,
//           left: 480.5,
//             child: Text('KMPH', textAlign: TextAlign.left, style: TextStyle(
//             color: Color(0xffb2beb5),
//             fontFamily: 'Inter',
//             fontSize: 39,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),),
//         ),



//         // Positioned(
//         //     top: 203,
//         //     left: 0,
//         //     child: SvgPicture.asset(
//         //     'assets/vector10.svg',
//         //     semanticsLabel: 'vector10'
//         // ),
//         // ),

//         // Positioned(
//         //     top: 297,
//         //     left: 1512,
//         //     child: Transform.rotate(
//         //     angle: 180 * (math.pi / 180),
//         //     child: SvgPicture.asset(
//         //     'assets/vector12.svg',
//         //     semanticsLabel: 'vector12'
//         // ),
//         // )
//         // ),
//         // Positioned(
//         //     top: 307,
//         //     right: 0,
//         //     child: SvgPicture.asset(
//         //     'assets/ec.svg',
//         //     semanticsLabel: 'ec'
//         // ),
//         // ),

//         // Positioned(
//         //     top: 401,
//         //     left: 1512,
//         //     child: Transform.rotate(
//         //     angle: 180 * (math.pi / 180),
//         //     child: SvgPicture.asset(

//         //     'assets/vector13.svg',
//         //     semanticsLabel: 'vector13'
//         // ),
//         // )
//         // ),

//         // Positioned(
//         //     top: 341,
//         //     left: 1274,
//         //     child: Text('CURRENTTEMP', textAlign: TextAlign.left, style: TextStyle(
//         //     color: Color.fromRGBO(128, 128, 128, 1),
//         //     fontFamily: 'Inter',
//         //     fontSize: 19,
//         //     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//         //     fontWeight: FontWeight.normal,
//         //     height: 1
//         // ),)
//         // ),

//         Positioned(
//             top: 236,
//             left: 104,
//             child: Text('23 ° C | RAINY', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',
//             fontSize: 19,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),

//         Positioned(
//             top: 340,
//             left: 104,
//             child: Text('200 M ABOVE', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',
//             fontSize: 19,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),

//         Align(
//      alignment: Alignment(0.187,1),

//             child: SvgPicture.asset(
//             'assets/rectangle2.svg',
//             semanticsLabel: 'rectangle2'
//         ),
//         ),


//         Align(
//            alignment: Alignment(0.18,1),
//             child: Text('10 : 50 AM', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(255, 255, 255, 1),
//             fontFamily: 'Inter',
//             fontSize: 29,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),


//         Positioned(
//             top: 232,
//             left: 1274,
//             child: Text('TOTAL DISTANCE', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(128, 128, 128, 1),
//             fontFamily: 'Inter',
//             fontSize: 19,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),


//         Positioned(
//             top: 341,
//             left: 1196,
//             child: Text('2.6', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',
//             fontSize: 19,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),

//         Positioned(
//             top: 237,
//             left: 1196,
//             child: Text('108.4', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(0, 0, 0, 1),
//             fontFamily: 'Inter',
//             fontSize: 19,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),


//         Positioned(
//             top: 364,
//             left: 1202,
//             child: Text('KM', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(128, 128, 128, 1),
//             fontFamily: 'Inter',
//             fontSize: 10,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),

//         Positioned(
//             top: 260,
//             left: 1214,
//             child: Text('KM', textAlign: TextAlign.left, style: TextStyle(
//             color: Color.fromRGBO(128, 128, 128, 1),
//             fontFamily: 'Inter',
//             fontSize: 10,
//             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//             fontWeight: FontWeight.normal,
//             height: 1
//         ),)
//         ),



//     //
//     // Positioned(
//     //       top: -1.5,
//     //            left: 400.5,
//     //
//     //       child: SvgPicture.asset(
//     //       'assets/vector3.svg',
//     //       semanticsLabel: 'vector3'
//     //   ),
//     //   ),


//    Container(


//      child: Positioned(
//               top: 54,
//               left: 220,
//               child: Text('${_mode}', textAlign: TextAlign.left, style: TextStyle(

//               color: Color.fromRGBO(0, 0, 0, 1),
//               fontFamily: 'Inter',
//               fontSize: 29,
//               letterSpacing: 0 /*ƒpercentages not used in flutter. defaulting to zero*/,
//               fontWeight: FontWeight.w600,
//               height: 1
//           ),)
//           ),
//    ),



//               // Opacity(
//               //   opacity: 0.1,
//               //   child: Container(
                  
//               //     child: Image.asset("assets/tabscreen.png",)),
//               // ),

                





//             ]
//         )
//     )
//         ),





//             ]
//         ),
//       )
//     ),
//         );
//         }

//         @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

//     getstades();
//     testconnection();
//   }

//   Future<void> testconnection() async {

//     List<UsbDevice> devices = await UsbSerial.listDevices();
//             if(devices.length>0){

//   setState(() {
//     reconnect=false;
//   });
//             }
//             else{
//               setState(() {
//                 reconnect=true;
//               });
//               getstades();

//             }
//     Future.delayed(Duration(milliseconds: 800)).then((value) {
//       testconnection();
//     });
//   }

//   Future<void> connectboard() async {

//            try{
//              if(reconnect=true){

//                List<UsbDevice> devices = await UsbSerial.listDevices();
//                print({

//                  "type":"device_detaks",
//                  "pid":devices[0].pid,
//                  "vendorid":devices[0].vid,
//                  "did":devices[0].deviceId,
//                  // "devicedta":devices[0]./

//                });

//                UsbPort? port;
//                if (devices.length == 0) {
//                  print("port Not found");
//                  return;

//                }
//                else{
//                  print("port  found");

//                  port = await devices[0].create();
//                }


//                bool openResult = await port!.open();
//                if ( !openResult ) {
//                  print("Failed to open");
//                  return;
//                }

//                await port!.setDTR(true);
//                await port!.setRTS(true);

//                port.setPortParameters(115200, UsbPort.DATABITS_8,
//                    UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);

//                // print first result and close port.
//                // port.inputStream?.listen((Uint8List event) {
//                //   print(event);
//                //   // port.close();
//                // });
//                final portinputStream = port!.inputStream!;
//                var _transaction = Transaction.stringTerminated(
//                  portinputStream,
//                  Uint8List.fromList(
//                    [13, 10],
//                  ),
//                );

//                _transaction!.stream.listen((String line) {
//                  print(jsonDecode(line));
//                  setState(() {
//                    // dataModel = displayDataModelFromJson(line);
//                    // _serialData.add(Text(line));
//                    // if (_serialData.length > 20) {
//                    //   _serialData.removeAt(0);
//                    // }
//                    // jsonDecode(line)["speed"]

//                    if(jsonDecode(line)["LI"]!=null){
//                      if(jsonDecode(line)["LI"]==0){
//                        _leftindicator=false;

//                      }
//                      else if(jsonDecode(line)["LI"]==1){
//                        _leftindicator=true;
//                      }
//                      else{

//                      }
//                    }




//                    /// about ri

//                    if(jsonDecode(line)["RI"]!=null){
//                      if(jsonDecode(line)["RI"]==0){
//                        _rightindicator=false;

//                      }
//                      else if(jsonDecode(line)["RI"]==1){
//                        _rightindicator=true;
//                      }
//                      else{

//                      }
//                    }
//                    /// about hi

//                    if(jsonDecode(line)["HL"]!=null){
//                      if(jsonDecode(line)["HL"]==0){
//                        _headlight=false;

//                      }
//                      else if(jsonDecode(line)["HL"]==1){
//                        _headlight=true;
//                      }
//                      else{

//                      }
//                    }
// // about speed



//                    if(jsonDecode(line)["SS"]!=null){
//                      if(jsonDecode(line)["SS"]==0){
//                        _sidestand=false;

//                      }
//                      else if(jsonDecode(line)["SS"]==1){
//                        _sidestand=true;
//                      }
//                      else{

//                      }
//                    }


//                    /// about soc

//                    if(jsonDecode(line)["Soc"]!=null){

//                      _soc=jsonDecode(line)["Soc"]+0.0;

//                    }
//                    ///


//                    // speed

//                    if(jsonDecode(line)["Sp"]!=null){

//                      _speed=jsonDecode(line)["Sp"]+0.0;

//                    }

//                    /// distance

//                    if(jsonDecode(line)["Dist"]!=null){

//                      _distance=jsonDecode(line)["Dist"]+0.0;

//                    }


// //

//                    if(jsonDecode(line)["rev"]!=null){
//                      if(jsonDecode(line)["rev"]==0){
//                        _reverce=false;

//                      }
//                      else if(jsonDecode(line)["rev"]==1){
//                        _reverce=true;
//                      }
//                      else{

//                      }
//                    }




//                    if(jsonDecode(line)["mode"]!=null){
//                      if(jsonDecode(line)["mode"]=="E"){
//                        _mode="ECO";

//                      }
//                      else if(jsonDecode(line)["mode"]=="S"){
//                        _mode="SPORT";
//                      }
//                      else if(jsonDecode(line)["mode"]=="W"){
//                        _mode="WARP";
//                      }
//                      else{

//                      }

//                    }


//                    /// power

//                    if(jsonDecode(line)["power"]!=null){
//                      if(jsonDecode(line)["power"]==0){
//                        _power=false;

//                      }
//                      else if(jsonDecode(line)["power"]==1){
//                        _power=true;
//                      }
//                      else{

//                      }
//                    }







//                  });
//                });
//              }
//              else{}

//            }
//            catch(e){
//              connectboard();
//            }

//     // await port.write(Uint8List.fromList([0x10, 0x00]));
//   }



//         }
        