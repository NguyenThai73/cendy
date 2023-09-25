import 'package:flutter/material.dart';

import '../../app/setting.dart';

class BorderTextField extends StatefulWidget {
  final String title;
  final String placeholder;
  final int? minLine;
  final int? maxLines;
  final bool? isPassword;
  const BorderTextField({
    super.key,
    required this.title,
    required this.placeholder,
    this.minLine,
    this.maxLines,
    this.isPassword,
  });

  @override
  State<BorderTextField> createState() => _BorderTextFieldState();
}

class _BorderTextFieldState extends State<BorderTextField> {
  bool showpass = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTheme.black16n700,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(10),
          height: 40,
          decoration: BoxDecoration(
            color: AppTheme.grey1,
            border: Border.all(width: 1, color: AppTheme.grey2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLine ?? 1,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: AppTheme.gray15n500,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(bottom: 13),
              suffixIcon: (widget.isPassword == true)
                  ? IconButton(
                      icon: Icon(
                        showpass ? Icons.visibility : Icons.visibility_off,
                        color: AppTheme.black,
                        size: 22,
                      
                      ),
                        padding: const EdgeInsets.only(bottom: 15),
                      onPressed: () {
                        setState(() {
                          showpass = !showpass;
                        });
                      },
                    )
                  : const Text(""),
            ),
          ),
        ),
      ],
    );
  }
}
