import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/Responsive.dart';
import 'package:psvexpress/controllers/MenuController.dart';
import 'package:psvexpress/screens/dashboard/components/header.dart';
import 'package:psvexpress/screens/dashboard/components/recent_files.dart';
import 'package:psvexpress/screens/dashboard/components/storage_details.dart';
import 'package:psvexpress/screens/dashboard/dashboard_screen.dart';
import 'package:psvexpress/screens/main/components/SideMenu.dart';
import 'package:psvexpress/utility/Constants.dart';
import 'package:psvexpress/screens/dashboard/components/my_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        color: Colors.blue,
        child: SideMenu(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    //Header(),
                    Row(
                      children: [
                        if (!Responsive.isDesktop(context))
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () =>
                                _scaffoldKey.currentState?.openDrawer(),
                          ),
                        if (!Responsive.isMobile(context))
                          Text(
                            "Dashboard",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        if (!Responsive.isMobile(context))
                          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                        Expanded(child: SearchField()),
                        ProfileCard()
                      ],
                    ),
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              MyFiles(),
                              SizedBox(height: defaultPadding),
                              RecentFiles(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))
                                StarageDetails(),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: StarageDetails(),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
