import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/textStyle.dart';
import '../functions/linearRegressionApi.dart';
import '../models/linearModel.dart';
import '../widgets/inputField.dart';

class LinearRegressionScreen extends StatefulWidget {
  const LinearRegressionScreen({super.key});

  @override
  State<LinearRegressionScreen> createState() => _LinearRegressionScreenState();
}

class _LinearRegressionScreenState extends State<LinearRegressionScreen> {
  // String result = '';
  double? result;
  late FocusNode ageFocus;
  late FocusNode bmiFocus;
  late FocusNode hbFocus;
  late FocusNode cycleFocus;
  late FocusNode marriageFocus;
  late FocusNode abortionFocus;
  late FocusNode fshFocus;
  late FocusNode lhFocus;
  late FocusNode thsFocus;
  late FocusNode amhFocus;
  late FocusNode vitFocus;
  late FocusNode prgFocus;
  late FocusNode sugarFocus;
  late FocusNode bpFocus;
  late FocusNode endFocus;
  late FocusNode buttonFocus;
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
  bool isHover = false;
  bool buttonFocused = false;

  int getItemCountPerRow(BuildContext context) {
    double minTileWidth = 400; //in your case
    double availableWidth = MediaQuery.of(context).size.width;

    int i = availableWidth ~/ minTileWidth;
    return i;
  }

  @override
  void initState() {
    ageFocus = FocusNode();
    bmiFocus = FocusNode();
    hbFocus = FocusNode();
    cycleFocus = FocusNode();
    marriageFocus = FocusNode();
    abortionFocus = FocusNode();
    fshFocus = FocusNode();
    lhFocus = FocusNode();
    thsFocus = FocusNode();
    amhFocus = FocusNode();
    vitFocus = FocusNode();
    prgFocus = FocusNode();
    sugarFocus = FocusNode();
    bpFocus = FocusNode();
    endFocus = FocusNode();
    buttonFocus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: WebColors.appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 25),
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                        color: WebColors.headingTextColor,
                      )),
                ),
                Container(
                  height: h * 0.2,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: WebColors.appBar,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      Strings.linearRegression,
                      style: WebTextStyle.montserratStyle(
                          color: WebColors.headingTextColor, fontSize: 40),
                    ),
                  ),
                ),
              ],
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
                    fName: ageFocus,
                    currentFocus: ageFocus,
                    nextFocus: bmiFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.bmi,
                    textEditingController: textEditingControllerBmi,
                    fName: bmiFocus,
                    currentFocus: bmiFocus,
                    nextFocus: hbFocus,
                  ),
                  InputField(
                    textEditingController: textEditingControllerHb,
                    inputFieldName: Strings.hb,
                    fName: hbFocus,
                    currentFocus: hbFocus,
                    nextFocus: cycleFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.cycleLength,
                    textEditingController: textEditingControllerCycle,
                    fName: cycleFocus,
                    currentFocus: cycleFocus,
                    nextFocus: marriageFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.marriageStatus,
                    textEditingController: textEditingControllerMarriage,
                    fName: marriageFocus,
                    currentFocus: marriageFocus,
                    nextFocus: abortionFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.noOfAbortion,
                    textEditingController: textEditingControllerAbortion,
                    fName: abortionFocus,
                    currentFocus: abortionFocus,
                    nextFocus: fshFocus,
                  ),
                  InputField(
                    textEditingController: textEditingControllerFsh,
                    inputFieldName: Strings.fsh,
                    fName: fshFocus,
                    currentFocus: fshFocus,
                    nextFocus: lhFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.lh,
                    textEditingController: textEditingControllerLh,
                    fName: lhFocus,
                    currentFocus: lhFocus,
                    nextFocus: thsFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.ths,
                    textEditingController: textEditingControllerThs,
                    fName: thsFocus,
                    currentFocus: thsFocus,
                    nextFocus: amhFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.amh,
                    textEditingController: textEditingControllerAmh,
                    fName: amhFocus,
                    currentFocus: amhFocus,
                    nextFocus: vitFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.vit,
                    textEditingController: textEditingControllerVit,
                    fName: vitFocus,
                    currentFocus: vitFocus,
                    nextFocus: prgFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.prg,
                    textEditingController: textEditingControllerPrg,
                    fName: prgFocus,
                    currentFocus: prgFocus,
                    nextFocus: sugarFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.sugar,
                    textEditingController: textEditingControllerSugar,
                    fName: sugarFocus,
                    currentFocus: sugarFocus,
                    nextFocus: bpFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.bp,
                    textEditingController: textEditingControllerBp,
                    fName: bpFocus,
                    currentFocus: bpFocus,
                    nextFocus: endFocus,
                  ),
                  InputField(
                    inputFieldName: Strings.endometrium,
                    textEditingController: textEditingControllerEndometrium,
                    fName: endFocus,
                    currentFocus: endFocus,
                    nextFocus: buttonFocus,
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
                  InkWell(
                    onFocusChange: (value) {
                      buttonFocused = value;
                      setState(() {});
                    },
                    focusNode: buttonFocus,
                    onHover: (hover) {
                      setState(() {
                        isHover = hover;
                      });
                    },
                    onTap: () {
                      final LinearModel linear = LinearModel(
                        Age: textEditingControllerAge.text,
                        bmi: textEditingControllerBmi.text,
                        hb: textEditingControllerHb.text,
                        cycleLength: textEditingControllerCycle.text,
                        marriageStatus: textEditingControllerMarriage.text,
                        noOfAbortion: textEditingControllerAbortion.text,
                        fsh: textEditingControllerFsh.text,
                        lh: textEditingControllerLh.text,
                        ths: textEditingControllerThs.text,
                        amh: textEditingControllerAmh.text,
                        vit: textEditingControllerVit.text,
                        prg: textEditingControllerPrg.text,
                        sugar: textEditingControllerSugar.text,
                        bp: textEditingControllerBp.text,
                        endometrium: textEditingControllerEndometrium.text,
                      );

                      final LinearModel linearTest = LinearModel(
                          Age: '28',
                          bmi: '20.3',
                          hb: '10.48',
                          cycleLength: '5',
                          marriageStatus: '20',
                          noOfAbortion: '0',
                          fsh: '10.95',
                          lh: '3.67',
                          ths: '0.68',
                          amh: '2.07',
                          vit: '17.1',
                          prg: '0.57',
                          sugar: '92',
                          bp: '92',
                          endometrium: '8.5');

                      LinearRegression()
                          .postLinearRegression(linear)
                          .then((value) {
                        // result = value.toString();
                        setState(() {
                          result = double.tryParse(value.toString());
                          if (result != null) {
                            result = result! * 100; // converting to percentage
                          }
                        });
                      });
                    },
                    child: Container(
                      width: w * 0.2,
                      height: h * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: buttonFocused
                                  ? Colors.black
                                  : Colors.transparent),
                          color: isHover
                              ? WebColors.headingTextColor
                              : WebColors.background),
                      child: Center(
                        child: Text(
                          "Calculate And Review",
                          style: WebTextStyle.headerTextStyle(
                            color: WebColors.appBar,
                          ),
                        ),
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
                      result != null
                          ? "The probability of you being infertile based on the data provided: ${result!.toStringAsFixed(2)}%"
                          : "Waiting for calculation...",
                      // "The probability of you being infertile based on the data provided :-$result",
                      style: WebTextStyle.headerTextStyle(
                          color: WebColors.background, fontSize: 25),
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