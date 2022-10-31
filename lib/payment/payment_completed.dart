import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funku/dashboard.dart';
import 'package:funku/payment/place_order.dart';
import 'package:funku/pd_birthday.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentComplete extends StatefulWidget {
  const PaymentComplete({Key? key}) : super(key: key);

  @override
  State<PaymentComplete> createState() => _PaymentCompleteState();
}

class _PaymentCompleteState extends State<PaymentComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodyy(),
    );
  }
}

class Bodyy extends StatefulWidget {
  const Bodyy({Key? key}) : super(key: key);

  @override
  State<Bodyy> createState() => _BodyyState();
}

class _BodyyState extends State<Bodyy> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyApp()));
                },
                icon: Icon(Icons.arrow_back_ios_outlined)),
            elevation: 0,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 28, right: 28, top: 10, bottom: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Payment Completed",
                        style: GoogleFonts.merriweather(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.054,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Thank you for your order!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Order Number is: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    Text("948576943856",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Icon(
                  Icons.square,
                  size: 225,
                  color: Colors.white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Wrap(
                  children: [
                    Text(
                        "You will receive an email confirmation shortly at username@email.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    SvgPicture.asset("assets/payment/fileInvoice.svg"),
                    SizedBox(
                      width: 17,
                    ),
                    Text("Detailed Order Receipt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                        "assets/payment/arrowLeftCurvedCircle.svg"),
                    SizedBox(
                      width: 14,
                    ),
                    Text("Return Policy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                Spacer(),

                //         SizedBox(
                //   height: MediaQuery.of(context).size.height*0.17,
                //  ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(60),
                      // side: BorderSide(width: 2,),
                      shape: StadiumBorder(),
                      primary: Colors.white,
                      onSurface: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlaceOrder()));
                    },
                    child: Text("Back to Home",
                        style: TextStyle(
                            color: Color.fromARGB(255, 32, 9, 99),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
