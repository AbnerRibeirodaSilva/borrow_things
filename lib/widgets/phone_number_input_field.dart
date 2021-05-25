import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberInputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String initialValue;
  final Function(String) onSaved;

  const PhoneNumberInputField({
    Key key,
    this.icon,
    this.label,
    this.initialValue,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      initialValue: initialValue,
      onSaved: onSaved,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: label,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        TelefoneInputFormatter(),
      ],
    );
  }
}
