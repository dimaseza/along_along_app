part of 'widgets.dart';

class FieldForm extends StatelessWidget {
  final String hintLabel;
  final String errorText;
  final TextInputType inputType;
  final Widget icon;
  final String prefixText;
  final TextEditingController controller;
  final int maxLength;

  FieldForm(
    this.hintLabel,
    this.errorText,
    this.inputType,
    this.icon,
    this.prefixText,
    this.controller,
    this.maxLength,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintLabel,
          labelText: hintLabel,
          prefixIcon: icon,
          prefixText: prefixText,
        ),
        maxLength: maxLength,
        keyboardType: inputType,
        validator: (value) {
          if (value.isEmpty) {
            return errorText;
          }
          return null;
        },
      ),
    );
  }
}
