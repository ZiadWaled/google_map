import 'package:flutter/material.dart';

class MainTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;
  final TextStyle? style;
  final TextInputType keyboardType;
  final int maxLines;
  final int? maxInputLength;
  final bool enable;
  final bool obscureText;
  final bool isDense;
  final Color? filledColor;
  final Color? borderColor;
  final EdgeInsets? contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmit;

  const MainTextField({
    Key? key,
    this.hint = '',
    this.controller,
    this.style,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.maxInputLength,
    this.enable = true,
    this.obscureText = false,
    this.isDense = true,
    this.filledColor,
    this.borderColor,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.suffix,
    this.validator,
    this.onChanged,
    this.onSubmit,
  }) : super(key: key);

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      maxLines: widget.maxLines,
      maxLength: widget.maxInputLength,
      keyboardType: widget.keyboardType,
      enabled: widget.enable,
      obscureText: widget.obscureText,
      style: widget.style,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmit,
      validator: widget.validator,
      decoration: InputDecoration(
        isDense: widget.isDense,
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        suffix: widget.suffix,
        fillColor: widget.filledColor,
        filled: true,
        border: _border(color: widget.borderColor ?? Colors.grey),
        enabledBorder: _border(color: widget.borderColor ?? Colors.grey),
        focusedBorder: _border(color: Colors.blue),
      ),
    );
  }

  OutlineInputBorder _border({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0), // Adjust based on your design
      borderSide: BorderSide(color: color),
    );
  }
}
