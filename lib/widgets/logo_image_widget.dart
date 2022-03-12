import 'package:fashion_shop_app/config/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoImageWidget extends StatelessWidget {
  final bool debugBanner;
  final double size;

  LogoImageWidget(this.size, this.debugBanner);

  @override
  Widget build(BuildContext context) {
    return debugBanner
        ? Stack(
            children: [
              _getImage(),
              Positioned(
                bottom: size / 2 - 6,
                right: 0,
                left: 0,
                child: Container(
                  height: 12,
                  width: size,
                  color: Color(0xA0B71C1C),
                  padding: EdgeInsets.only(top: 1),
                  child: Center(
                    child: Text(
                      'DEBUG',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12 * 0.85,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : _getImage();
  }

  Widget _getImage() {
    return Assets.isSvg(Assets.icon)
        ? (Assets.isLocal(Assets.icon)
            ? SvgPicture.asset(
                Assets.icon,
                width: size,
                height: size,
              )
            : SvgPicture.network(
                Assets.icon,
                width: size,
                height: size,
              ))
        : (Assets.isLocal(Assets.icon)
            ? Image.asset(
                Assets.icon,
                width: size,
                height: size,
              )
            : Image.network(
                Assets.icon,
                width: size,
                height: size,
              ));
  }
}
