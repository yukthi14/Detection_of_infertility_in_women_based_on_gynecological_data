import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/const_sized_box.dart';
import 'package:detection_of_infertility_in_women_based_on_gynecological_data_using_supervised_and_unsupervised_method/constants/textStyle.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.inputFieldName,
    required this.textEditingController,
    required this.fName,
    required this.currentFocus,
    required this.nextFocus,
    required this.example,
  });
  final String example;
  final String inputFieldName;
  final FocusNode fName;
  final FocusNode currentFocus;
  final FocusNode nextFocus;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: WebColors.inputFieldBox,
      ),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 25,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                inputFieldName,
                style:
                    WebTextStyle.headerTextStyle(color: WebColors.background),
              ),
            ),
          ),
          Constants.sizedBox(height: 30),
          TextFormField(
            style: WebTextStyle.headerTextStyle(color: WebColors.background),
            autofocus: true,
            focusNode: fName,
            onFieldSubmitted: (value) {
              currentFocus.unfocus();
              FocusScope.of(context).requestFocus(nextFocus);
            },
            decoration: InputDecoration(
              hintText: '$inputFieldName $example',
              hintStyle: const TextStyle(color: WebColors.background),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            keyboardType: TextInputType.number,
            controller: textEditingController,
          ),
        ],
      ),
    );
  }
}
