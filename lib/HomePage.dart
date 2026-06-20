import 'package:flutter/material.dart';
import 'package:food_app/Details.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePage_State() ;

}

// ignore: camel_case_types
class HomePage_State extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {

    List Catgories = 
      [
        {
          "Item" : "All" ,
          "backgroundcolor" : Color.fromRGBO(162, 12, 22, 1),
          "textcolor" : Colors.white ,
        },

        {
          "Item" : "Pizza" ,
          "backgroundcolor" : Colors.white,
          "textcolor" : Colors.black ,
        },

        {
          "Item" : "Burger" ,
          "backgroundcolor" : Colors.white,
          "textcolor" : Colors.black ,
        },

        {
          "Item" : "Sandwich" ,
          "backgroundcolor" : Colors.white,
          "textcolor" : Colors.black ,
        },

      ];

      List Cards =
      [
        {
          "Image": "assets/Hambuger Sandwich.png",
          "title": "Hamburger",
          "Subtitle": "Burger" ,
          "Price": "250.0" ,
          "Description": "A hamburger is a sandwich with a beef patty, served between two soft buns, and topped with various condiments such as cheese, lettuce, and ketchup. It's a popular fast food meal loved by many people."
        },

        {
          "Image": "assets/Pepperoni Pizza.png",
          "title": "Pepperoni Pizza",
          "Subtitle": "Pizza" ,
          "Price": "350.0" ,
          "Description": "Pepperoni pizza is a delicious Italian-style pizza topped with melted cheese, spicy pepperoni slices, and rich tomato sauce. It's one of the most popular pizzas around the world and loved for its smoky flavor."
        },

        {
          "Image": "assets/Cheese Sandwich.png",
          "title": "Cheese Sandwich",
          "Subtitle": "Sandwich" ,
          "Price": "200.0" , 
          "Description": "A cheese sandwich is a simple and tasty snack made with fresh bread and layers of creamy cheese. It's soft, flavorful, and perfect for a quick and satisfying meal anytime."
        },

      ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: Stack(
          children: [
          Padding(
            padding: EdgeInsets.all(20) ,
          child: ListView(
          scrollDirection: Axis.vertical,
          children: 
          [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
              [
              
                  ClipOval(
                  child: Image.asset(
                  "assets/Man Face Photo.jpg" ,
                  width: 65,
                  height: 65,
                  ),
                  ),

                IconButton(
                  onPressed: () 
                  {
                    
                  }, 
                  icon: Icon(
                    Icons.notifications_none ,
                    size: 35,
                    )
                  ),

              ],
            ),

            const SizedBox(height: 15) ,
            Text("Choose", style: TextStyle(
                fontSize: 25 ,
                fontWeight: FontWeight.bold
                )
                ),
              
                Row(
                  children: 
                  [
                    Text("Your Favorite", style: TextStyle(
                    fontSize: 25 ,
                    fontWeight: FontWeight.bold
                    )),

                    Text(" Food", style: TextStyle(
                    color: Color.fromRGBO(162, 12, 22, 1),
                    fontSize: 25 ,
                    fontWeight: FontWeight.w500 ,
                    )),
                  ],
                ),
                
                const SizedBox(height: 25) ,

                Row(
                  children: 
                  [
                    Expanded(
                        child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          fillColor: Colors.white ,
                          filled: true ,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                            ),
                          hintText: "Search" ,
                          hintStyle: TextStyle(
                            fontSize: 20 , 
                            color: Color.fromRGBO(148, 148, 148, 1)
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none ,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none ,
                        )
                        ),
                      ),
                      ),
                
                      Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(159, 8, 12, 1),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Material(
                          color: Colors.transparent,
                          shape: CircleBorder(),

                        child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              
                            },
                        
                            child: Icon(Icons.tune, color: Colors.white),
                          ),
                        )
                      ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 25) ,
                
              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Catgories.length,
                  itemBuilder: (context, index) 
                  {
                            return Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Container(
                              width: 120,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Catgories[index]["backgroundcolor"],
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: Text(
                                Catgories[index]["Item"],
                                style: TextStyle(
                                  color: Catgories[index]["textcolor"],
                                  fontSize: 20 ,
                                  fontWeight: FontWeight.bold
                                  )
                                ),
                            ),
                            );
                  }
                  ),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [
                    const Text("Popular Food",
                    style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                    )),
                    const Text("See All",
                    style: TextStyle(
                    color: Color.fromRGBO(162, 12, 22, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                    )
                    ),
                ],
              ),
                const SizedBox(height: 5),

                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Cards.length,
                    itemBuilder: (context, index) 
                    {
                      return FoodCard(data: Cards[index]) ;
                    },
                    ),
                ),

                const SizedBox(height: 25),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [
                    const Text("Nearest",
                    style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                    )),
                    const Text("See All",
                    style: TextStyle(
                    color: Color.fromRGBO(162, 12, 22, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                    )
                    ),
                ],
              ),
                
                const SizedBox(height: 5),

                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Cards.length,
                    itemBuilder: (context, index) 
                    {
                      return FoodCard(data: Cards[index]) ;
                    },
                    ),
                )
                  ],
                ),
            ),

            Positioned(
            bottom: 30,
            right: 25,
            left: 25,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color.fromRGBO(162, 12, 22, 1),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: 
                [
                  Icon(Icons.home,color: Colors.white),
                  Icon(Icons.favorite_border_outlined,color: Colors.white),
                  Icon(Icons.shopping_cart_outlined,color: Colors.white),
                  Icon(Icons.person_outlined,color: Colors.white),                  
                ],
              ),
            )
            )
          ]
            ),
        );
        
  }
  
}

class FoodCard extends StatelessWidget
{
  final Map data;

  const FoodCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                            padding: EdgeInsets.only(top:10 , right:10),
                            child: InkWell(
                            borderRadius: BorderRadius.circular(25),
                            onTap: () {
                              Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Details(data: data)));
                            },
                            child: Card(
                              color: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),

                              child: Container(
                                width: 230,
                                padding: EdgeInsets.all(15),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            data["Image"],
                                            width: 180,
                                            height: 180,
                                            fit: BoxFit.contain,
                                          ),
                                        ),

                                        Positioned(
                                          top:0,
                                          right:0,
                                          child: Icon(
                                          Icons.favorite_border,
                                          color: const Color.fromRGBO(184, 96, 112, 1),
                                          size: 30,
                                          )
                                          ),
                                      ],
                                    ),

                                    const SizedBox(height: 5),

                                    Text(
                                      data["title"],
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  const SizedBox(height: 5),

                                    Text(
                                      data["Subtitle"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  const SizedBox(height: 15),

                                  Row(
                                    children: [
                                      Text(
                                      "RS. ",
                                      style: TextStyle(
                                        fontSize: 22 ,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Text(
                                      data["Price"],
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),

                                      const Spacer(),
                                      
                                      Material(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(10),
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(10),
                                          onTap: () {
                                            Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context)=> Details(data: data)));
                                          },

                                          child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color.fromRGBO(162, 12, 22, 1),
                                            ),
                                            child: Icon(Icons.add,color: Colors.white),
                                          ),
                                        ),
                                        )
                                    ]
                                  )

                                  ]

                                )
                              )
                              )
                            )
    );
                            
  }
  
}