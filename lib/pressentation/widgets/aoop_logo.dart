import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/pressentation/utlis/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsPath.logo,
      width: 120,
      fit: BoxFit.scaleDown,
    );
  }
}
