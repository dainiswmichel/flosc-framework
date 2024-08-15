// File: lib/pages/widgets/flosc_app_nav.dart

import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class FloscAppNav extends StatefulWidget {
  @override
  _FloscAppNavState createState() => _FloscAppNavState();
}

class _FloscAppNavState extends State<FloscAppNav> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ThemeSelectorWidget(
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
              // TODO: Implement theme change logic here
            });
          },
        ),
        PageTitleText(),
        ProfileMenu(),
      ],
    );
  }
}

class ThemeSelectorWidget extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  ThemeSelectorWidget({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: [value],
      max: 2,
      min: 0,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        onChanged(lowerValue);
      },
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Icon(Icons.lens, size: 30.0),
      ),
      trackBar: FlutterSliderTrackBar(
        activeTrackBar: BoxDecoration(color: Colors.grey),
      ),
      tooltip: FlutterSliderTooltip(disabled: true),
    );
  }
}

class PageTitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('flosc');
  }
}

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () {
        // TODO: Implement profile menu logic here
      },
    );
  }
}
