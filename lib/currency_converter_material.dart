//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _CurrencyConverterMaterialpageState extends State {
  double result = 0;

  final TextEditingController texteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //use colors for names else color for code{color!=colors}
      backgroundColor: Color.fromARGB(199, 179, 164, 164),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 179, 164, 164),
        title: Text(
          "currency converter",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: //ColoredBox(
      //   color: Color.fromRGBO(200, 17, 56, 1),
      //   child:
      Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result.toString()}",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            //padding or container
            Container(
              padding: const EdgeInsets.all(50),

              child: TextField(
                controller: texteditingcontroller,
                style: TextStyle(color: Color.fromRGBO(76, 56, 54, 1)),
                decoration: InputDecoration(
                  //label: Text('please enter your opinion'), //this will stay there even when entering data
                  hintText: (("Enter currency in USD")), //"bata k byee byee"

                  hintStyle: TextStyle(color: Colors.blue),

                  prefixIcon: Icon(Icons.monetization_on_rounded),

                  filled: true, //needed to fill color else is def set to false
                  fillColor: Colors.white,

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),

                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: const Color.fromARGB(255, 75, 67, 40),
                    ),
                  ),
                ),

                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = 81 * double.parse(texteditingcontroller.text);
                    texteditingcontroller.clear();
                  });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(45),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.yellow),
                  fixedSize: WidgetStatePropertyAll(Size(100000, 50)),
                ),
                child: Text(
                  "convert",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 25),
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State createState() {
    return _CurrencyConverterMaterialpageState();
  }
}



// comment{
// class CurrencyConverterMaterialpagee extends StatelessWidget {
//   const CurrencyConverterMaterialpagee({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//       //use colors for names else color for code{color!=colors}
//       backgroundColor: Color.fromARGB(199, 179, 164, 164),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(199, 179, 164, 164),
//         title: Text(
//           "currency converter",
//           style: TextStyle(
//             color: Colors.black87,
//             fontSize: 50,
//             fontWeight: FontWeight.w900,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: //ColoredBox(
//       //   color: Color.fromRGBO(200, 17, 56, 1),
//       //   child:
//       Center(
//         child: (Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),

//             //padding or container
//             Container(
//               padding: const EdgeInsets.all(50),

//               child: TextField(
//                 controller: texteditingcontroller,
//                 style: TextStyle(color: Color.fromRGBO(76, 56, 54, 1)),
//                 decoration: InputDecoration(
//                   //label: Text('please enter your opinion'), //this will stay there even when entering data
//                   hintText: (("Enter currency in USD")), //"bata k byee byee"

//                   hintStyle: TextStyle(color: Colors.blue),

//                   prefixIcon: Icon(Icons.monetization_on_rounded),

//                   filled: true, //needed to fill color else is def set to false
//                   fillColor: Colors.white,

//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),

//                     borderSide: BorderSide(
//                       color: Colors.black,
//                       width: 2,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(width: 5, color: const Color.fromARGB(255, 75, 67, 40)),
//                   ),
//                 ),

//                 keyboardType: TextInputType.numberWithOptions(
//                   signed: true,
//                   decimal: true,
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (kDebugMode) {
//                     // result =(double)
//                     print(double.parse(texteditingcontroller.text));
//                   }
//                 },
//                 style: ButtonStyle(
//                   elevation: WidgetStatePropertyAll(45),
//                   backgroundColor: WidgetStatePropertyAll(Colors.black),
//                   foregroundColor: WidgetStatePropertyAll(Colors.yellow),
//                   fixedSize: WidgetStatePropertyAll(Size(100000, 50)),
//                 ),
//                 child: Text(
//                   "convert",
//                   style: TextStyle(color: Colors.deepOrange, fontSize: 25),
//                 ),
//               ),
//             ),
//           ],
//         )),
//       ),
//     ));
//   }
// }
// }