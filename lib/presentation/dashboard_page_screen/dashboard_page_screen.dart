import 'package:oga_artisan/presentation/job_posts_page_1_screen/job_posts_page_1_screen.dart';

import '../dashboard_page_screen/widgets/dashboardpage_item_widget.dart';
import '../dashboard_page_screen/widgets/frametwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_bottom_bar.dart';
import 'package:oga_artisan/widgets/custom_icon_button.dart';
import 'package:oga_artisan/widgets/custom_search_view.dart';

class DashboardPageScreen extends StatelessWidget {
  DashboardPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        drawer: _buildDrawer(context),
        body: Container(
            width: double.maxFinite,
            //  padding: EdgeInsets.symmetric(vertical: 21.v),
            height: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Good Morning ",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "Lucy",
                              style: CustomTextStyles.titleLargePrimary_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      right: 25.h,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        // filled: true,
                        // fillColor: const Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 183, 183, 183)!),
                          // Greyish border color
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 183, 183, 183)!),
                          // Greyish border color
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 183, 183, 183)!),
                          // Greyish border color
                        ),

                        suffixIcon: Container(
                          width: 20.0,
                          height: 20.0,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              // size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.v),
                  _buildFrameTwo(context),
                  SizedBox(height: 46.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: _buildSuggestedJob(
                      context,
                      suggestedJob: "Top Companies",
                    ),
                  ),
                  SizedBox(height: 37.v),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: _buildFrameThree(context),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: _buildSuggestedJob(
                      context,
                      suggestedJob: "Suggested Job",
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildDashboardPage(context),
                ],
              ),
            )),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgJamMenuIcon,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup119,
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 100, // Example width
            height: 50, // Example height
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => JobPostsPage1Screen()),
                );
              }),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Post A Job",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 60, 60, 60),
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              "Your Applicants",
              style: TextStyle(
                color: const Color.fromARGB(255, 60, 60, 60),
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 2,
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Apple",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 44, 44, 44),
                            )),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "AI Job Vacancy",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 77, 77, 77)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Salary: 300K",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 107, 106, 106)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Remote",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 107, 106, 106)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.h, vertical: 20.h),
                  ),
                  child: Text('Show All',
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
              ],
            )));
  }

  /// Section Widget
  Widget _buildDashboardPage(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 42.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 9.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return DashboardpageItemWidget();
          },
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 50),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHomePrimary,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 1 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBriefcase,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "All Assigned Applicants",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSend,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "My Jobs",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMessageSquare,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Messages",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Chang Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "View Profile",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserplus,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Update User",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogOut,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 54, 53, 53),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            onTap: () {
              // Add your item 2 functionality here
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.brown[800], // Set deep brown color
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      currentIndex: 0,
      onTap: (int index) {},
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.refresh),
          label: 'Refresh',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }

  /// Common widget

  /// Common widget
  Widget _buildSuggestedJob(
    BuildContext context, {
    required String suggestedJob,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            suggestedJob,
            style: CustomTextStyles.titleMediumSemiBold18.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSolarMenuDotsBold,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
