import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onpressed,
    super.key,
    required this.child,
  });
  final Function onpressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: OutlinedButton(
          onPressed: onpressed(),
          style: OutlinedButton.styleFrom(
            foregroundColor:
                Theme.of(context).colorScheme.primary, // Text color
            side: BorderSide(
                color: Theme.of(context).colorScheme.onSurface), // Border color
            backgroundColor: Theme.of(context)
                .colorScheme
                .onSurface
                .withOpacity(0.5), // Background color
          ),
          child: child),
    );
  }
}
