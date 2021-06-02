import 'package:flutter/material.dart';
import 'package:wheels2go/constants/colors.dart';
import 'package:wheels2go/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheels2go/bike_widget.dart';
import 'package:wheels2go/dealer_widget.dart';
import 'package:wheels2go/available_bikes.dart';
import 'package:wheels2go/book_bike.dart';
import 'package:wheels2go/models/Bike.dart';

class Showroom extends StatefulWidget {
  @override
  _ShowroomState createState() => _ShowroomState();
}

class _ShowroomState extends State<Showroom> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  NavigationItem selectedItem;

  List<Bike> bikes = getBikeList();
  List<Dealer> dealers = getDealerList();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black, size: 28),
        title: Text(
          "Wheels 2 Go",
          style: GoogleFonts.muli(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("User Name or Email",
                        style: GoogleFonts.muli(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              )),
          ListTile(
            leading: Icon(
              Icons.account_box,
              size: 24,
            ),
            title: Text(
              "My Account",
              style: GoogleFonts.muli(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contact_support, size: 24),
            title: Text(
              "Contact Us",
              style: GoogleFonts.muli(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.details,
              size: 24,
            ),
            title: Text(
              "About",
              style: GoogleFonts.muli(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 24),
            title: Text(
              "Settings",
              style: GoogleFonts.muli(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout",
              style: GoogleFonts.muli(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.only(
                    left: 30,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 24.0, left: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP DEALS",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "view all",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 280,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDeals(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AvailableBikes()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          padding: EdgeInsets.all(24),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Available Bikes",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Long term and short term",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP DEALERS",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "view all",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDealers(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildDeals() {
    List<Widget> list = [];
    for (var i = 0; i < bikes.length; i++) {
      list.add(GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookBike(bike: bikes[i])),
            );
          },
          child: buildBike(bikes[i], i)));
    }
    return list;
  }

  List<Widget> buildDealers() {
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i));
    }
    return list;
  }

  List<Widget> buildNavigationItems() {
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
        });
      },
      child: Container(
        width: 50,
        child: Stack(
          children: <Widget>[
            selectedItem == item
                ? Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColorShadow,
                      ),
                    ),
                  )
                : Container(),
            Center(
              child: Icon(
                item.iconData,
                color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
