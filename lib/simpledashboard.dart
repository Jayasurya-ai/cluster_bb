import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:usb_serial/transaction.dart';
import 'package:usb_serial/usb_serial.dart';
import 'package:intl/intl.dart';

class Dashboard_s extends StatefulWidget {
  const Dashboard_s({ Key? key }) : super(key: key);

  @override
  State<Dashboard_s> createState() => _Dashboard_sState();
}

class _Dashboard_sState extends State<Dashboard_s> {

String consolelog="No event";
 bool _leftindicator=false;
          bool _rightindicator=false;
          bool _headlight=false;
          bool _sidestand=false;
          double _soc=0;
          double _speed=0;
          bool flicker=false;
          bool reconnect=false;
          double _distance=0.0;
          bool _reverce=false;
          String _mode="ECO";
          bool _power=true;
          String _rdata="";
bool darkmode=false;
  @override
  Widget build(BuildContext context) {
    return _power?Scaffold(




      backgroundColor: Colors.white,






body: Stack(
  children: [
     Positioned(
              top: 10,
              right: 50,
              child: Container(
               
                child: Image.asset(
                  
                    
                                'assets/logot.png',
                                // semanticsLabel: 'vector6',
                                // color: _headlight?CupertinoColors.activeGreen:Colors.grey,
                                height: 125,
                                // width: 35,
                              ),
              ),
            ),
 Positioned(
              top: 50,
              left: 150,
              child: CupertinoSwitch(value: darkmode, onChanged: (value){
                setState(() {
                  darkmode=value;
                });

              })
            ),
 Positioned(
              top: 50,
              left: 50,
              child: Container(
               
                child: SvgPicture.asset(
                  
                    
                                'assets/light_straight.svg',
                                semanticsLabel: 'vector6',
                                color: _headlight?CupertinoColors.activeGreen:Colors.grey,
                                height: 35,
                                width: 35,
                              ),
              ),
            ),
    

    

        Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
      children: [
    
    
    SizedBox(height: 30,),
    
    Center(
      
      child: Container(
        
        child: Row(
    
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
    
        mainAxisSize: MainAxisSize.min,
        children: [
    
    
    
           
    
    /// mode widget
    Padding(
      padding: EdgeInsets.fromLTRB(0  , 0, 20, 0),
      child:   Container(
        
        decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(-9,5),
                                blurRadius: 3
                            )],
      
      borderRadius: BorderRadius.only(
      
      topLeft: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      
      )
        ),
        height: 73,
        width: 178,
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
      
            Text(_mode, textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: Colors.black,
      fontSize: 23
      
      
              )
              
            )),
         SizedBox(width: 20,),
      
            SvgPicture.asset(
      
                            'assets/vector7.svg',
                            semanticsLabel: 'vector6',
                            color: _mode=="ECO"?CupertinoColors.activeGreen:_mode=="SPORT"?CupertinoColors.activeBlue:CupertinoColors.systemRed,
                          ),
                          SizedBox(width: 30,),
      
        ]),
      ),
    ),
    
    
    /// range and power
    
    
    Container(
      height: 100,
      // height: 100,
      child:   Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
        children: [
              Row(
            children: [
      Text('${_soc*0.6}', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: Colors.black,
      fontSize: 37
      
      
              )
              
            )),
            SizedBox(width: 10,),
            
            Text('KM', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: Color(0xff808080).withOpacity(0.5),
      fontSize: 35
      
      
              )
              
            )),
      
          
              
            ],
          ),
      Text('${_soc.round()}'+"%", textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
                height: 1.0,
          
          color: _soc<20?CupertinoColors.systemRed:_soc>90?CupertinoColors.activeGreen:Colors.black,
          fontSize: 37
          
          
              )
              
            )),
          
        ],
      ),
    ),
    
    
    
    
    /// reverse widget
    
    
    Padding(
     padding: EdgeInsets.fromLTRB(20  , 0, 0, 0),
      child:   Container(
        decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(9,5),
                                blurRadius: 3
                            )],
      
      borderRadius: BorderRadius.only(
      
      topRight: Radius.circular(20),
      bottomRight: Radius.circular(20),
      
      )
        ),
        height: 73,
        width: 178,
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
      
            Text('D', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: _reverce==true?Colors.black:Colors.grey,
      fontSize: 35
      
      
              )
              
            )),
      
      
      
      
      
      
      Text('R', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: _reverce==false?Colors.black:Colors.grey,
      fontSize: 35
      
      
              )
              
            )),
      
          
        ]),
      ),
    ),
    
    
    
    
    
    
      ],)),
    ),
    
   
    
    
    ////   part 2
    
    
    
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
            Column(
    
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(9,5),
                                        blurRadius: 3
                                    )],
          
          borderRadius: BorderRadius.only(
          
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          
          )
                ),
                height: 73,
                width: 250,
          
                
                child: Center(
                  child: Text('23°C | RAINY', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: Colors.black,
      fontSize: 15
      
      
              )
              
            )),
                ) ,





          ),
          SizedBox(
            height: 20,
          ),
           Container(
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(9,5),
                                        blurRadius: 3
                                    )],
          
          borderRadius: BorderRadius.only(
          
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          
          )
                ),
                height: 73,
                width: 250,
    
                child:  Center(
                  child: Text('200 M ABOVE', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
      
      color: Colors.black,
      fontSize: 15
      
      
              )
              
            )),
                ),
          
                
          ),
              ],
            ),



            /// indicator left
            
  Padding(
    padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
    child: Row(
      
      children: [
             
      Container(
        height: 90,
        width: 90,
        // color: Colors.green,
        child: SvgPicture.asset(
        
                              'assets/arrow_left.svg',
                              semanticsLabel: 'vector6',
                              
                            color: _leftindicator?Colors.green:Colors.grey
                            ) ,
      ),
      

      SizedBox(width: 60,),
      
      //////////////////////////////////////////////////////////////////
      ///  spped kmph
      
    
     Column(
          children: [
                Text(_speed.round().toString(), textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                      textStyle: TextStyle(
              
              color: _speed.round()>80?Colors.red:Colors.black,
              fontSize: 120
              
              
                      )
                      
                    )),
        
                     Text('KMPH', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                      textStyle: TextStyle(
              height: 0.3,
              color: Color(0xffBFBFBF),
              fontSize: 30
              
              
                      )
                      
                    )),
          ],
        ),
      
       SizedBox(width: 60,),
      
          Container(
        height: 90,
        width: 90,
        // color: Colors.green,
        child: SvgPicture.asset(
        
                              'assets/arrow_right.svg',
                              semanticsLabel: 'vector6',
                              color: _rightindicator?Colors.green:Colors.grey
                            ),
      ),
      
      
      
    ],),
  ),
            // ////////////??/??????//////////////////////
    
    
    
    
    
    
    
    
    
    
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
    
                Container(
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(-9,5),
                                        blurRadius: 3
                                    )],
          
          borderRadius: BorderRadius.only(
          
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          
          )
                ),
                height: 73,
                width: 250,
          
                
                child: Row(children: [
    
    
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     Padding(
       padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
       child: Text(_distance.toString(), textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                textStyle: TextStyle(
        
        color: Colors.black,
        fontSize: 15
        
        
                )
                
              )),
     ),
    Text('   KM',  style: GoogleFonts.fugazOne(
              textStyle: TextStyle(
                height: 0.9,
      
      color: Colors.grey,
      fontSize: 15
      
      
              )
              
            )),
    ],),
    
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child:   Text('TOTAL \nDISTANCE', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                textStyle: TextStyle(
                  height: 1.4,
        
        color: Colors.grey,
        fontSize: 15
        
        
                )
                
              )),
    ),
    
                ],
                )
          ),
      
      
          SizedBox(
            height: 20,
          ),
            Container(
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(-9,5),
                                        blurRadius: 3
                                    )],
          
          borderRadius: BorderRadius.only(
          
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          
          )
                ),
                height: 73,
                width: 250,
          
                
                child: Row(children: [
    
    
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     Padding(
       padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
       child: Text('2.8 ', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                textStyle: TextStyle(
        
        color: Colors.black,
        fontSize: 15
        
        
                )
                
              )),
     ),
    
    ],),
    
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child:   Text('CURRENT \nTEMP', textAlign: TextAlign.left, style: GoogleFonts.fugazOne(
                textStyle: TextStyle(
                  height: 1.4,
        
        color: Colors.grey,
        fontSize: 15
        
        
                )
                
              )),
    ),
    
                ],
                )
          ),
      
           
              ],
            ),
     
      ],
    ),
    
    
    
    
    
    
    
    
      ],
    ),



Container(
  height: 50,
  color: Colors.red,
  width: MediaQuery.of(context).size.width,
  child:Center(child: Text(consolelog))
)



  ],
),



    ):Container(
      color: Colors.black,
    );
  }


  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
connectboard();
// incri();
incri();
blink();

  }

  void blink(){
Future.delayed(Duration(milliseconds: 500)).then((value) {
  setState(() {
  flicker=!flicker;
});
blink();
});
  }


  void incri(){
    Future.delayed(Duration(milliseconds:30 )).then((value)  {
     setState(() {
       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
     });
     incri();
    });
  }


  Future<void> connectboard() async {
    setState(() {
      consolelog="connection started";
    });

           try{
             if(reconnect=true){

              
               List<UsbDevice> devices = await UsbSerial.listDevices();
               print({

                 "type":"device_detaks",
                 "pid":devices[0].pid,
                 "vendorid":devices[0].vid,
                 "did":devices[0].deviceId,
                 // "devicedta":devices[0]./

               });

               UsbPort? port;
               if (devices.length == 0) {
                  setState(() {
                 consolelog="NO PORT FOUND";
               });

                 print("port Not found");
                 return;

               }
               else{
                 print("port  found NO of ports = ${devices.length}");
 setState(() {
                 consolelog="PORT FOUND ${devices.length}";
               });
                 port = await devices[0].create();
               }


               bool openResult = await port!.open();
               if ( !openResult ) {
                 setState(() {
                 consolelog="Failed to open port";
               });
                 print("Failed to open");
                 return;
               }

               await port!.setDTR(true);
               await port!.setRTS(true);

               port.setPortParameters(115200, UsbPort.DATABITS_8,
                   UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);

               // print first result and close port.
               // port.inputStream?.listen((Uint8List event) {
               //   print(event);
               //   // port.close();
               // });
               final portinputStream = port!.inputStream!;
               var _transaction = Transaction.stringTerminated(
                 portinputStream,
                 Uint8List.fromList(
                   [13, 10],
                 ),
               );

               _transaction!.stream.listen((String line) {
                 print(jsonDecode(line));
                 setState(() {
                    
                 consolelog="GETTING DATA";
             
                   // dataModel = displayDataModelFromJson(line);
                   // _serialData.add(Text(line));
                   // if (_serialData.length > 20) {
                   //   _serialData.removeAt(0);
                   // }
                   // jsonDecode(line)["speed"]

                   if(jsonDecode(line)["LI"]!=null){
                     if(jsonDecode(line)["LI"]==0){
                       _leftindicator=false;

                     }
                     else if(jsonDecode(line)["LI"]==1){
                       _leftindicator=true;
                     }
                     else{

                     }
                   }




                   /// about ri

                   if(jsonDecode(line)["RI"]!=null){
                     if(jsonDecode(line)["RI"]==0){
                       _rightindicator=false;

                     }
                     else if(jsonDecode(line)["RI"]==1){
                       _rightindicator=true;
                     }
                     else{

                     }
                   }
                   /// about hi

                   if(jsonDecode(line)["HL"]!=null){
                     if(jsonDecode(line)["HL"]==0){
                       _headlight=false;

                     }
                     else if(jsonDecode(line)["HL"]==1){
                       _headlight=true;
                     }
                     else{

                     }
                   }
// about speed



                   if(jsonDecode(line)["SS"]!=null){
                     if(jsonDecode(line)["SS"]==0){
                       _sidestand=false;

                     }
                     else if(jsonDecode(line)["SS"]==1){
                       _sidestand=true;
                     }
                     else{

                     }
                   }


                   /// about soc

                   if(jsonDecode(line)["Soc"]!=null){

                     _soc=jsonDecode(line)["Soc"]+0.0;

                   }
                   ///


                   // speed

                   if(jsonDecode(line)["Sp"]!=null){

                     _speed=jsonDecode(line)["Sp"]+0.0;

                   }

                   /// distance

                   if(jsonDecode(line)["Dist"]!=null){

                     _distance=jsonDecode(line)["Dist"]+0.0;

                   }


//

                   if(jsonDecode(line)["rev"]!=null){
                     if(jsonDecode(line)["rev"]==0){
                       _reverce=false;

                     }
                     else if(jsonDecode(line)["rev"]==1){
                       _reverce=true;
                     }
                     else{

                     }
                   }




                   if(jsonDecode(line)["mode"]!=null){
                     if(jsonDecode(line)["mode"]=="E"){
                       _mode="ECO";

                     }
                     else if(jsonDecode(line)["mode"]=="S"){
                       _mode="SPORT";
                     }
                     else if(jsonDecode(line)["mode"]=="W"){
                       _mode="WARP";
                     }
                     else{

                     }

                   }


                   /// power

                   if(jsonDecode(line)["power"]!=null){
                     if(jsonDecode(line)["power"]==0){
                       _power=false;

                     }
                     else if(jsonDecode(line)["power"]==1){
                       _power=true;
                     }
                     else{

                     }
                   }







                 });
               });
             }
             else{}

           }
           catch(e){
             setState(() {
               consolelog="RECONNECT TEST";
             });
             connectboard();
           }

    // await port.write(Uint8List.fromList([0x10, 0x00]));
  }




  


}