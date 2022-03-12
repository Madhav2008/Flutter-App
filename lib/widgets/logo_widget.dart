import 'package:fashion_shop_app/config/style.dart';
import 'package:fashion_shop_app/widgets/logo_image_widget.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;
  final bool animate;
  final double? blur;
  final double? spread;
  final int? duration;
  final bool debugBanner;

  LogoWidget({
    this.blur,
    this.spread,
    this.duration,
    this.size = 90,
    this.animate = false,
    this.debugBanner = true,
  });

  @override
  Widget build(BuildContext context) {
    return animate
        ? AnimationLogo(
            size: size,
            blur: blur,
            spread: spread,
            duration: duration,
            debugBanner: debugBanner,
          )
        : LogoImageWidget(size, debugBanner);
  }
}

class AnimationLogo extends StatefulWidget {
  final double size;
  final double? blur;
  final double? spread;
  final int? duration;
  final bool? debugBanner;

  AnimationLogo({
    required this.size,
    this.blur,
    this.spread,
    this.duration,
    this.debugBanner,
    Key? key,
  }) : super(key: key);

  @override
  _AnimationLogoState createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<AnimationLogo>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: widget.duration ?? 2));
    _animationController.repeat(reverse: true);

    _animation = Tween(
            begin: widget.blur ?? widget.size * 0.02,
            end: widget.spread ?? widget.size * 0.15)
        .animate(_animationController)
          ..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 27, 28, 30),
          boxShadow: [
            BoxShadow(
                color: Style.primarySwatch.shade200,
                blurRadius: _animation.value,
                spreadRadius: _animation.value)
          ],
        ),
        child: LogoImageWidget(widget.size, widget.debugBanner!),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
