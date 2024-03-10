import 'package:animate_do/animate_do.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/textStyle.dart';
import 'package:flutter/material.dart';

import '../constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return buildHomePersonalInfo(size);
  }

  Row buildHomePersonalInfo(Size size) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
                duration: const Duration(milliseconds: 1200),
                child: Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Text(
                    Strings.projectName,
                    style: WebTextStyle.montserratStyle(
                        color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
