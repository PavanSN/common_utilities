import 'package:common_utilities_flutter/common_utilities.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum IconPosition { middleStart, middleEnd }

class CustomButtons extends StatefulWidget {
  const CustomButtons(
      {super.key,
      required this.actionIcon,
      this.miniButton = false,
      this.isLoading,
      this.fillButton = false,
      required this.position,
      required this.buttonText,
      this.leading,
      this.trailing,
      this.textStyle,
      this.borderRadius,
      this.buttonColor});

  final String actionIcon;
  final bool fillButton;
  final bool miniButton;
  final ValueNotifier<bool>? isLoading;
  final IconPosition position;
  final String buttonText;
  final Widget? leading;
  final Widget? trailing;
  final TextStyle? textStyle;
  final int? borderRadius;
  final Color? buttonColor;

  @override
  State<CustomButtons> createState() => _CustomButtonsState();

  factory CustomButtons.mini({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
    Widget? leading,
    Widget? trailing,
    TextStyle? textStyle,
    int? borderRadius,
  }) {
    return CustomButtons(
      actionIcon: actionIcon,
      miniButton: true,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
      leading: leading,
      trailing: trailing,
      textStyle: textStyle,
      borderRadius: borderRadius,
    );
  }

  factory CustomButtons.regular({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
    Widget? leading,
    Widget? trailing,
    TextStyle? textStyle,
    int? borderRadius,
  }) {
    return CustomButtons(
      actionIcon: actionIcon,
      miniButton: false,
      borderRadius: borderRadius,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
      leading: leading,
      trailing: trailing,
      textStyle: textStyle,
    );
  }

  factory CustomButtons.buttonWithTrailing({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
    Widget? trailing,
    TextStyle? textStyle,
    int? borderRadius,
  }) {
    return CustomButtons(
      actionIcon: actionIcon,
      miniButton: false,
      borderRadius: borderRadius,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
      leading: null,
      trailing: trailing,
      textStyle: textStyle,
    );
  }

  factory CustomButtons.buttonWithLeading({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
    Widget? leading,
    TextStyle? textStyle,
    int? borderRadius,
  }) {
    return CustomButtons(
      actionIcon: actionIcon,
      miniButton: false,
      borderRadius: borderRadius,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
      leading: leading,
      trailing: null,
      textStyle: textStyle,
    );
  }
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isLoading ?? ValueNotifier(false),
      builder: (context, isLoading, _) {
        return Container(
          width: widget.miniButton ? null : screenWidth,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(widget.borderRadius?.toDouble() ?? 0),
            border: widget.borderRadius != null
                ? Border.all(
                    color: widget.buttonColor ?? Colors.white,
                  )
                : null,
            color: widget.fillButton ? widget.buttonColor : Colors.white,
          ),
          child: _buildButton(isLoading, widget.textStyle, widget.miniButton),
        );
      },
    );
  }

  Widget _buildButton(
    bool isLoading,
    TextStyle? textStyle,
    bool isMini,
  ) {
    return Visibility(
      visible: !isLoading,
      replacement: LottieBuilder.asset(
        'assets/loading_anim.json',
        height: 50,
      ),
      child: Row(
        mainAxisSize: isMini ? MainAxisSize.min : MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: widget.leading != null,
            replacement: const SizedBox(
              width: 50,
            ),
            child: widget.leading ?? Container(),
          ),
          _middleWidget(
            actionIcon: widget.actionIcon,
            position: widget.position,
            style: textStyle,
          ),
          Visibility(
            visible: widget.trailing != null,
            replacement: const SizedBox(
              width: 50,
            ),
            child: widget.trailing ?? Container(),
          ),
        ],
      ),
    );
  }

  Widget _middleWidget(
      {required String actionIcon,
      required IconPosition position,
      required TextStyle? style}) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: position == IconPosition.middleStart,
            replacement: const SizedBox.shrink(),
            child: CustomImage(
              image: actionIcon,
            ),
          ),
          Text(
            widget.buttonText,
            style: style,
          ),
          Visibility(
            visible: position == IconPosition.middleEnd,
            replacement: const SizedBox.shrink(),
            child: CustomImage(
              image: actionIcon,
            ),
          ),
        ],
      ),
    );
  }
}
