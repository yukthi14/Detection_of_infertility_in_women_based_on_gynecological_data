import 'package:flutter/material.dart';

import '../constants/colors.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.inputFieldName,
      required this.textEditingController});
  final String inputFieldName;
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
              child: Text(inputFieldName),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: inputFieldName,
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
