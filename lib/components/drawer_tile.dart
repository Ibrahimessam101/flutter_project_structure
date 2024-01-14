import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectstruc/utils/text_size.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final Widget leading;
  final void Function()? onTap;

  const DrawerTile({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.varela(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        textScaler: TextScaler.linear(ScaleSize.textScaler(context)),
      ),
      leading: leading,
      onTap: onTap,
    );
  }
}
