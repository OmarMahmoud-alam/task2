import 'package:flutter/material.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class Custominputfield extends StatefulWidget {
  final IconData prefixicon;
  final String hintText;
  final bool isPassword;

  const Custominputfield({
    super.key,
    required this.prefixicon,
    this.isPassword = false,
    required this.hintText,
  });

  @override
  State<Custominputfield> createState() => _CustominputfieldState();
}

class _CustominputfieldState extends State<Custominputfield> {
  bool isPasswordVisible = false;

  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          //  color: Colors.white,
          boxShadow: [
            if (isFocused)
              BoxShadow(
                color: Colors.brown.withOpacity(0.5), // Shadow color
                blurRadius: 4,
                offset: const Offset(4, 8), // Offset in the x, y directions
              ),
          ],
        ),
        child: Theme(
          data: themeData.copyWith(
              inputDecorationTheme: themeData.inputDecorationTheme.copyWith(
            prefixIconColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) {
                return TColor.primaryblue;
              }
              if (states.contains(MaterialState.error)) {
                return Colors.red;
              }
              return Colors.grey;
            }),
          )),
          child: TextFormField(
            obscureText: widget.isPassword && !isPasswordVisible,
            decoration: InputDecoration(
              hintStyle: safeGoogleFont(
                'Poppins',
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.normal,
                color: TColor.textsemiappear,
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    )
                  : null,
              filled: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: TColor.primaryblue, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              prefixIcon: Icon(
                widget.prefixicon,
              ),
              hintText: widget.hintText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: TColor.offwhite, width: 1.0),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
