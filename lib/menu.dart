import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://scontent.fbkk12-5.fna.fbcdn.net/v/t1.15752-9/297260321_3327142617575489_7119123197133263077_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFESTaYc-8HOm67oINP2ccbOH4TFlY_pRg4fhMWVj-lGN99IWll0dzfvHOklKH5WM6z2fkGOy2SGQQznP2pVoc_&_nc_ohc=aePhMUFLHcoAX--R3cE&_nc_ht=scontent.fbkk12-5.fna&oh=03_AVJQ9z0dXyytxzkydhBNOMqRRnYbGOWSh2iDyiuN3pX5bg&oe=63391229",
      "Chicken fire",
      300
    ],
    [
      "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.15752-9/262687902_317144316898438_6655931912411821858_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHX18lu0xLONVTXNQbfwY5SKprn4JEhp1kqmufgkSGnWebHkr1SDLpDLJZsvCqTpirnu3JPReEpIT9J6QWGBCK-&_nc_ohc=3TKqsEJkHCUAX8uAgHG&_nc_ht=scontent.fbkk13-2.fna&oh=03_AVLPa3jfATkUokJ_CIVsOb-UsdKrjSxEuw570FR8Je3AHg&oe=633A54C1",
      "French Fries",
      300
    ],
    [
      "https://scontent.fbkk9-2.fna.fbcdn.net/v/t1.15752-9/247596454_1211120092742953_1746534572989937785_n.png?stp=dst-png_s2048x2048&_nc_cat=109&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFvr3lvJLyxAKHc451d-nMXAc1-ePKDRsYBzX548oNGxip-i9zy-MKd5CCWmRmNzZfWKVDaWMKoatrCFPRx2QNV&_nc_ohc=Af2gPXqnhHkAX_Qt9AM&_nc_ht=scontent.fbkk9-2.fna&oh=03_AVLiyjBwGKHWuB9Mnj0EIpnPpV1vGNhWD5Jo33Gx1QqaBA&oe=6338D2D7",
      "Hot dog",
      300
    ],
    [
      "https://scontent.fbkk13-1.fna.fbcdn.net/v/t1.15752-9/273707055_1573970866306188_4086316708992751994_n.png?_nc_cat=108&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeF1uhsTDQzG_h9sJ8rghEvW2ClWwhd9pyjYKVbCF32nKJeuJBdCZ8eFsrb6pe1EAbwOBSNxDlbBkdNU8PWQkEgz&_nc_ohc=dB_i1KTgAQcAX-Pb9Yv&tn=vqKb6maqWirdVNT9&_nc_ht=scontent.fbkk13-1.fna&oh=03_AVIOJEm0v6OABCDQMU1Iftkyow7Lp6MtC-lbJ69CYAjvgw&oe=6339C6E5",
      "Sandwich",
      "300"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 150,
                    ),
                    Expanded(
                        child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "${foodLists[index][1]}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5,),
                        Text("${foodLists[index][2]} ฿",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),)
                      ]),
                    ))
                  ],
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.grey,
                    label: Text("Order Now",style: TextStyle(
                      fontSize: 11,
                    ),),
                  ),)
              ],
            ),
          ),
        );
      },
    );
  }
}
