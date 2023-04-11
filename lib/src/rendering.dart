// part of custom_textfield;


// class CustomTextField extends StatefulHookConsumerWidget {
//   final TextEditingController controller;
//   final String? hintText;
//   final IconData? prefixIcon;
//   final IconData? suffixIcon;
//   final bool obscureText;
//   final TextInputType keyboardType;
//   final FormFieldValidator<String>? validator;
//   final Color? focusedBorderColor;
//   final Color? normalBorderColor;
//   final Color? errorBorderColor;
//   final double? borderRadius;
//   final String? labelText;
//   final String? subLabelText;
//   final ValueChanged<String>? onChanged;
//   final int? maxLength;
//   final List<TextInputFormatter>? inputFormatters;
//   final Iterable<String>? autofillHints ;

//   const CustomTextField({
//     Key? key,
//     required this.controller,
//     this.hintText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.keyboardType = TextInputType.text,
//     this.validator,
//     this.onChanged,
//     this.focusedBorderColor,
//     this.normalBorderColor,
//     this.errorBorderColor,
//     this.borderRadius,
//     this.labelText,
//     this.subLabelText,
//     this.inputFormatters,
//     this.maxLength,
//     this.autofillHints,
//   }) : super(key: key);

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _CustomTextFieldState();
// }

// class _CustomTextFieldState extends ConsumerState<CustomTextField> {
//   late bool _isPasswordVisible;
//   bool _isValid = true;

//   @override
//   void initState() {
//     super.initState();
//     _isPasswordVisible = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).textTheme;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (widget.labelText != null)
//           SelectableText(
//             widget.labelText ?? "",
//             style: theme.bodyMedium!.copyWith(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               height: 2.8,
//             ),
//           ),
//         if (widget.subLabelText != null)
//           Column(
//             children: [
//               SelectableText(
//                 widget.subLabelText ?? "",
//                 style: theme.bodyMedium!.copyWith(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.grey.shade700,
//                   height: 1.25,
//                 ),
//               ),
//               const SizedBox(height: 7)
//             ],
//           ),
//         SizedBox(
//           height: widget.validator != null && !_isValid ? 70 : 45,
//           child: TextFormField(
//             controller: widget.controller,
//             obscureText: widget.obscureText,
//             keyboardType: widget.keyboardType,
//             inputFormatters: widget.inputFormatters,
//             autofillHints: widget.autofillHints,
//             maxLength: widget.maxLength,
//             decoration: InputDecoration(
//               hintText: widget.hintText,
//               counterText: "",
//               prefixIcon:
//                   widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
//               suffixIcon:
//                   widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
//               suffix: _buildSuffixIcon(),
//               focusedBorder: _buildBorder(
//                 borderColor: widget.focusedBorderColor ?? Colors.grey.shade900,
//               ),
//               enabledBorder: _buildBorder(
//                 borderColor: widget.normalBorderColor ?? Colors.grey.shade500,
//               ),
//               errorBorder: _buildBorder(
//                 borderColor: widget.errorBorderColor ?? Colors.red,
//               ),
//               border: _buildBorder(
//                 borderColor: widget.normalBorderColor ?? Colors.grey.shade500,
//               ),
//             ),
//             validator: (value) {
//               setState(() {
//                 _isValid = widget.validator?.call(value) == null;
//               });
//               return widget.validator?.call(value);
//             },
//             onChanged: widget.onChanged,
//           ),
//         ),
//       ],
//     );
//   }

//   OutlineInputBorder _buildBorder({required borderColor}) {
//     return OutlineInputBorder(
//       borderSide: BorderSide(color: borderColor),
//       borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
//     );
//   }

//   Widget? _buildSuffixIcon() {
//     if (widget.obscureText) {
//       return IconButton(
//         icon:
//             Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility),
//         onPressed: () {
//           setState(() {
//             _isPasswordVisible = !_isPasswordVisible;
//           });
//         },
//       );
//     } else {
//       return null;
//     }
//   }
// }
