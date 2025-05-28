import 'package:firstapp/screens/simple_notification.dart';
import 'package:firstapp/widgets/home_bottom_bar.dart';
import 'package:firstapp/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomeeScreen extends StatefulWidget {
  const HomeeScreen({super.key});

  @override
  State<HomeeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildNebBarDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: ( ) {
                        Navigator.push( context,
                        MaterialPageRoute(
          
        builder: (context) => SimpleNotificationPage()),
    );

                      },
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a Great Day for Cake",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your Cake",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: Color(0xFFE57734),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xFFE57734),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Vanilla Cake"),
                  Tab(text: "Chocolate Cake"),
                  Tab(text: "Theme Cake"),
                  Tab(text: "Customize Cake"),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }

  Widget _buildNebBarDrawer() {
    return Drawer(
      backgroundColor: Color(0xFF212325),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFE57734),
            ),
            child: Text(
              'Nafi Cake Bakery',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildDrawerItem(Icons.person, 'Nafisa Hussain'),
          _buildDrawerItem(Icons.phone, 'Contact: 01309847753'),
          _buildDrawerItem(Icons.email, 'Email: nafi_cake_baker@gmail.com'),
          _buildDrawerItem(Icons.account_balance, 'Bank: 1234 5678 9012'),
          _buildDrawerItem(Icons.cake, 'Specialty: Wedding Cakes, Birthday Cakes'),
          _buildDrawerItem(Icons.star, 'Rating: 4.9/5.0'),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}