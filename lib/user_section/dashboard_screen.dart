import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        backgroundColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ticket_fill),
            label: 'My Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_solid),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone_fill),
            label: 'Contact Us',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.bars,
                      ),
                    ),
                  ),
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.noRepeat,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Hello, Sam !',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const TextField(
                style: TextStyle(
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: 'Location..',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 150.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink.image(
                        image: const NetworkImage(
                            'https://static.toiimg.com/thumb/msid-90946619,imgsize-190588,width-400,resizemode-4/90946619.jpg'),
                        width: 260.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink.image(
                        image: const NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6VZe62cKjEj597wX8EPewhi5tUlagVWHKAw&usqp=CAU'),
                        width: 260.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink.image(
                        image: const NetworkImage(
                            'https://static.toiimg.com/thumb/msid-90946619,imgsize-190588,width-400,resizemode-4/90946619.jpg'),
                        width: 260.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Places',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('see more'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 250.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 4,
                      // Change this
                      shadowColor: Colors.black,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 170.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/photo1.jpg'),
                                  fit: BoxFit.cover,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Kedarnath',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Rudraprayag district",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16.0,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      // Change this
                      shadowColor: Colors.black,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 170.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/img_three.jpg'),
                                  fit: BoxFit.cover,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Kedarnath',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Rudraprayag district",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16.0,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      // Change this
                      shadowColor: Colors.black,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 170.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/img_three.jpg'),
                                  fit: BoxFit.cover,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Kedarnath',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Rudraprayag district",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16.0,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      // Change this
                      shadowColor: Colors.black,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 170.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/img_three.jpg'),
                                  fit: BoxFit.cover,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Kedarnath',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Rudraprayag district",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16.0,
                                      color: Color(0XFF304352),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
