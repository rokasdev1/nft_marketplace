import 'package:flutter/material.dart';

class SlideButton extends StatefulWidget {
  const SlideButton({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.label,
    this.trailing,
  });
  final double? width;
  final double? height;
  final Color? color;
  final Widget label;
  final Widget? trailing;

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {},
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: ShapeDecoration(
          color: widget.color,
          shape: const StadiumBorder(),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.label,
            const Spacer(),
            if (widget.trailing != null) widget.trailing!,
          ],
        ),
      ),
    );
  }
}
