import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/colors.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/const_sized_box.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/strings.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/textStyle.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/screens/homePage.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/screens/kMeans.dart';
import 'package:flutter/material.dart';

import 'linearRegressionScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.appBar,
      appBar: AppBar(
        backgroundColor: WebColors.appBar,
        toolbarHeight: 90,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  Strings.heading,
                  style: WebTextStyle.headerTextStyle(
                      color: WebColors.headingTextColor),
                ),
                const Spacer(),
                SizedBox(
                  height: 30,
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    width: 95,
                    duration: const Duration(milliseconds: 200),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LinearRegressionScreen()));
                      },
                      child: Text(
                        Strings.supervised,
                        style: WebTextStyle.headerTextStyle(
                          color: WebColors.headingTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Constants.sizedBox(width: 30),
                SizedBox(
                  height: 30,
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    width: 150,
                    duration: const Duration(milliseconds: 200),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KMeansScreen()));
                      },
                      child: Text(
                        Strings.unsupervised,
                        style: WebTextStyle.headerTextStyle(
                          color: WebColors.headingTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: const HomeScreen(),
    );
  }
}
