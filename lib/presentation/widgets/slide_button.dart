import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';

class SlideButton extends StatefulWidget {
  const SlideButton({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.label,
    this.trailing,
    required this.onMove,
  });
  final double? width;
  final double? height;
  final Color? color;
  final Widget label;
  final Widget? trailing;
  final Function(DragEndDetails) onMove;

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: 500.milliseconds);
    _offsetAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(1, 0)).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));
    _opacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0, // Fade out
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) async {
        await _animationController.forward();
        widget.onMove(details);
      },
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
            16.widthBox,
            SlideTransition(
              position: _offsetAnimation,
              child: FadeTransition(
                opacity: _opacityAnimation,
                child: widget.label,
              ),
            ),
            const Spacer(),
            if (widget.trailing != null) widget.trailing!,
            5.widthBox,
          ],
        ),
      ),
    );
  }
}
