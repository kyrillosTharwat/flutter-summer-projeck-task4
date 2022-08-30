import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '_room.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const room(),
    );
  }
}

class room extends StatefulWidget {
  const room({Key? key}) : super(key: key);

  @override
  State<room> createState() => _roomState();
}

class _roomState extends State<room>{
  List<Room> room = [
  new Room('single room', 'a room for one person','https://cdn.discordapp.com/attachments/993237828072915015/1013778371496394763/unknown.png'),
  new Room('double room', 'a room for two person','https://www.italianbark.com/wp-content/uploads/2018/01/hotel-room-design-trends-italianbark-interior-design-blog.jpg'),
  new Room('vip room', 'a room for vip person','https://www.cgarchitect.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBc0paIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0b6487b64124d0d6e50224370bfcbdea1484cc8f/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQWxZRk1Eb0tjMkYyWlhKN0Jqb01jWFZoYkdsMGVXbGsiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a140f81341e053a34b77dbf5e04e777cacb11aff/b8d6af25.jpg'),
  new Room('extra room', 'a room for extra person','https://inkhotels.com/melbourne-southbank/wp-content/uploads/sites/4/2019/11/the-extra-2.jpg'),
  new Room('king room', 'a room for king person', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn9ohTg9Lt4snUzyaVrgtiklDHg96VYNUV9w&usqp=CAU'),
  new Room('family room', 'a room for family',  'https://cdn.discordapp.com/attachments/993237828072915015/1013778163186274435/unknown.png')
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rooms'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              elevation: 8,
              color: Colors.white,
              child: Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                             room [currentIndex].image ,
                              height: 100),
                          Text(
                            room [currentIndex].name ,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          const Icon(Icons.arrow_drop_up_sharp),
                        ],
                      ),
                    ),
                    Text(room [currentIndex].details,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              color: Colors.white,
              child: Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                              room [currentIndex+1].image ,
                              height: 100),
                          Text(
                            room [currentIndex+1].name ,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          const Icon(Icons.arrow_drop_up_sharp),
                        ],
                      ),
                    ),
                    Text(room [currentIndex+1].details ,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: OutlinedButton(
                  onPressed: (){
                    setState (() {
                      if(currentIndex < 3)
                        currentIndex= currentIndex + 2;
                      else
                        currentIndex = 0;
                    });
                  },
                  child: const Text(
                    'Next',
                    style:  TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),)),
            )
          ],
        ),
      ),
    );;
  }
}



