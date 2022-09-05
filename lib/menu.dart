
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int number = 0;
  
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
      "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcf-images.us-east-1.prod.boltdns.net%2Fv1%2Fstatic%2F1033249144001%2F7d24d0c0-dbfa-419b-b3f1-f0c431e5c237%2Ff90cf1ae-f1c4-472c-86c6-a168900bc333%2F1280x720%2Fmatch%2Fimage.jpg",
      "Hot dog",
      300
    ],
    [
      "https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=face&url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1556744250%2Fthe-ultimate-veggie-sandwich-1905.jpg%3Fitok%3DrAOvFAhQ",
      "Sandwich",
      "300"
    ],
    [
      "https://media-cdn.tripadvisor.com/media/photo-s/11/07/b7/2e/chelsea-burger-applewood.jpg",
      "Burger",
      "300"
    ],
    [
      "https://media-cdn.tripadvisor.com/media/photo-s/11/8d/c5/a9/vegetarian-pizza.jpg",
      "Pizza",
      "300"
    ],
    [
      "https://s.isanook.com/he/0/rp/rc/w670h402/yatxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hlLzAvdWQvMy8xOTk5My9jb2ZmZWUuanBn.jpg",
      "Coffee",
      "300"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzYD3fzBdT3VpyUzJp0gBJMdH3-pco5VZ7Qg&usqp=CAU",
      "Ice cream",
      "300"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    print("$number");
  
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


                    //รูปอาหาร
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




                            // ชื่ออาหาร
                            Text(
                              "${foodLists[index][1]}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),



                            // ราคา
                            Text(
                              "${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                              ),
                            )
                          ]),
                    ))
                  ],
                ),


                //ตระกร้า
                Expanded(

                child: 
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  alignment: Alignment.bottomRight,
                  
                  child: 
                  
                    FloatingActionButton.extended(
                      backgroundColor: Color.fromARGB(255, 250, 107, 97),
                  
                  onPressed: (){
                    setState(() {
                      number++;
                    });
                  },
                    
                  


                  label: Icon(Icons.add_shopping_cart) 

                )
                  ,
                )),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment:  Alignment.topRight,
                  child: Column(
                    children: [
                      Text("All Orders : "+ number.toString())
                    ],
                  ),
                ),
                
                Expanded(

                child: 
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  alignment: Alignment(0.55, 1),
                  child : FloatingActionButton.extended(
                    backgroundColor: Colors.grey,
                    onPressed: (){
                      setState(() {
                        number--;
                      });
                    },
                    label: Icon(Icons.exposure_minus_1)
                  )))

                  

                // ตะกร้า
                /*Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.add_shopping_cart),
                  /*Chip(
                    backgroundColor: Colors.grey,
                    label: Text("Order Now",
                        style: TextStyle(
                          fontSize: 11,
                        )),
                    labelPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                  ),*/
                ),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
