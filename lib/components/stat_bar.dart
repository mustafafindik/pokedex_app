import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pokedex_app/constants.dart';

class StatBar extends StatefulWidget {
  const StatBar({Key? key, required this.statRatio}) : super(key: key);
  final double statRatio;

  @override
  State<StatBar> createState() => _StatBarState();
}

class _StatBarState extends State<StatBar> {
  final GlobalKey _globalKey = GlobalKey();
  double width = 0.0;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      width = _globalKey.currentContext!.size!.width;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            key: _globalKey,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kLightTextColor.withOpacity(0.3),
            ),
          ),
          Positioned(
            child: Container(
              height: 3,
              width: width * widget.statRatio,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: widget.statRatio > 0.6 ? Colors.green : Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
