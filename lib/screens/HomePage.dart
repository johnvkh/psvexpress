import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/Responsive.dart';
import 'package:psvexpress/controllers/MenuController.dart';
import 'package:psvexpress/models/UserLoginModel.dart';
import 'package:psvexpress/models/UserModel.dart';
import 'package:psvexpress/screens/dashboard/components/ProfileCard.dart';
import 'package:psvexpress/screens/dashboard/components/RecentFiles.dart';
import 'package:psvexpress/screens/dashboard/components/StarageDetails.dart';
import 'package:psvexpress/screens/dashboard/dashboard_screen.dart';
import 'package:psvexpress/screens/main/components/SideMenu.dart';
import 'package:psvexpress/utility/Constants.dart';
import 'package:psvexpress/screens/dashboard/components/MyFiles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
      // body:
      // SafeArea(
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Expanded(
      //         // It takes 5/6 part of the screen
      //         flex: 5,
      //         child: SingleChildScrollView(
      //           padding: EdgeInsets.all(defaultPadding),
      //           child: Column(
      //             children: [
      //               //Header(),
      //               Row(
      //                 children: [
      //                   //if (!Responsive.isDesktop(context))
      //                     IconButton(
      //                       icon: Icon(Icons.menu),
      //                       onPressed: () =>
      //                           _scaffoldKey.currentState?.openDrawer(),
      //                     ),
      //                   if (!Responsive.isMobile(context))
      //                     Text("Dashboard",
      //                         style: Theme.of(context).textTheme.headline6),
      //                   if (!Responsive.isMobile(context))
      //                     Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
      //                   Expanded(child: SearchField()),
      //                   ProfileCard()
      //                 ],
      //               ),
      //               SizedBox(height: defaultPadding),
      //               Row(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Expanded(
      //                     flex: 5,
      //                     child: Column(
      //                       children: [
      //                         MyFiles(),
      //                         SizedBox(height: defaultPadding),
      //                         RecentFiles(),
      //                         if (Responsive.isMobile(context))
      //                           SizedBox(height: defaultPadding),
      //                         if (Responsive.isMobile(context))
      //                           StarageDetails(),
      //                       ],
      //                     ),
      //                   ),
      //                   if (!Responsive.isMobile(context))
      //                     SizedBox(width: defaultPadding),
      //                   if (!Responsive.isMobile(context))
      //                     Expanded(
      //                       flex: 2,
      //                       child: StarageDetails(),
      //                     ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: ScreenTypeLayout(
        desktop: DesktopWidget(scaffoldKey: _scaffoldKey),
        tablet: MobileTabletWidget(scaffoldKey: _scaffoldKey),
        mobile: MobileTabletWidget(scaffoldKey: _scaffoldKey),
      ),
    );
  }
}

class MobileTabletWidget extends StatelessWidget {
  const MobileTabletWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<UserLoginModel>(
        builder: (context, userLoginModel, child) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("userName=${userLoginModel.userName}"),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () =>
                              _scaffoldKey.currentState?.openDrawer(),
                        ),
                        Expanded(
                          child: SearchField(),
                        ),
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
                              SizedBox(height: defaultPadding),
                              StarageDetails(),
                            ],
                          ),
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

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () =>
                            _scaffoldKey.currentState?.openDrawer(),
                      ),
                      Text("Dashboard",
                          style: Theme.of(context).textTheme.headline6),
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
                          ],
                        ),
                      ),
                      SizedBox(width: defaultPadding),
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
    );
  }
}
