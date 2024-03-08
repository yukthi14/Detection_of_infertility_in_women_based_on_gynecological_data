import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/textStyle.dart';
import '../widgets/inputField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textEditingControllerAge =
      TextEditingController();
  final TextEditingController textEditingControllerBmi =
      TextEditingController();
  final TextEditingController textEditingControllerHb = TextEditingController();
  final TextEditingController textEditingControllerCycle =
      TextEditingController();
  final TextEditingController textEditingControllerMarriage =
      TextEditingController();
  final TextEditingController textEditingControllerAbortion =
      TextEditingController();
  final TextEditingController textEditingControllerFsh =
      TextEditingController();
  final TextEditingController textEditingControllerLh = TextEditingController();
  final TextEditingController textEditingControllerThs =
      TextEditingController();
  final TextEditingController textEditingControllerAmh =
      TextEditingController();
  final TextEditingController textEditingControllerVit =
      TextEditingController();
  final TextEditingController textEditingControllerPrg =
      TextEditingController();
  final TextEditingController textEditingControllerSugar =
      TextEditingController();
  final TextEditingController textEditingControllerBp = TextEditingController();
  final TextEditingController textEditingControllerEndometrium =
      TextEditingController();

  int getItemCountPerRow(BuildContext context) {
    double minTileWidth = 400; //in your case
    double availableWidth = MediaQuery.of(context).size.width;

    int i = availableWidth ~/ minTileWidth;
    return i;
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: WebColors.bodyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.2,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: WebColors.heading,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  Strings.heading,
                  style: WebTextStyle.montserratStyle(
                      color: WebColors.headingTextColor, fontSize: 50),
                ),
              ),
            ),
            SizedBox(
              width: w,
              height: h * 0.8,
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: getItemCountPerRow(context),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  InputField(
                    inputFieldName: Strings.Age,
                    textEditingController: textEditingControllerAge,
                  ),
                  InputField(
                    inputFieldName: Strings.bmi,
                    textEditingController: textEditingControllerBmi,
                  ),
                  InputField(
                    textEditingController: textEditingControllerHb,
                    inputFieldName: Strings.hb,
                  ),
                  InputField(
                    inputFieldName: Strings.cycleLength,
                    textEditingController: textEditingControllerCycle,
                  ),
                  InputField(
                    inputFieldName: Strings.marriageStatus,
                    textEditingController: textEditingControllerMarriage,
                  ),
                  InputField(
                    inputFieldName: Strings.noOfAbortion,
                    textEditingController: textEditingControllerAbortion,
                  ),
                  InputField(
                    textEditingController: textEditingControllerFsh,
                    inputFieldName: Strings.fsh,
                  ),
                  InputField(
                    inputFieldName: Strings.lh,
                    textEditingController: textEditingControllerLh,
                  ),
                  InputField(
                    inputFieldName: Strings.ths,
                    textEditingController: textEditingControllerThs,
                  ),
                  InputField(
                    inputFieldName: Strings.amh,
                    textEditingController: textEditingControllerAmh,
                  ),
                  InputField(
                    inputFieldName: Strings.vit,
                    textEditingController: textEditingControllerVit,
                  ),
                  InputField(
                    inputFieldName: Strings.prg,
                    textEditingController: textEditingControllerPrg,
                  ),
                  InputField(
                    inputFieldName: Strings.sugar,
                    textEditingController: textEditingControllerSugar,
                  ),
                  InputField(
                    inputFieldName: Strings.bp,
                    textEditingController: textEditingControllerBp,
                  ),
                  InputField(
                    inputFieldName: Strings.endometrium,
                    textEditingController: textEditingControllerEndometrium,
                  )
                ],
              ),
            ),
            Container(
              width: w,
              height: h * 0.4,
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      width: w * 0.2,
                      height: h * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: WebColors.heading),
                      child: const Center(
                        child: Text("Calculate And Review"),
                      ),
                    ),
                  ),
                  Container(
                    width: w * 0.6,
                    height: h * 0.4,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: WebColors.inputFieldBox),
                    child: Text(
                      "Results",
                      style: WebTextStyle.headerTextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
