import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../custom_image/custom_image.dart';
import '../screen_const/screen_constants.dart';

Color buttonColor = Colors.orange;

enum IconPosition { start, middleStart, middleEnd, end }

class Buttons extends StatefulWidget {
  const Buttons({
    super.key,
    required this.actionIcon,
    this.borderedButton = false,
    this.miniButton = false,
    this.isLoading,
    this.fillButton = false,
    required this.position,
    required this.buttonText,
  });

  final String actionIcon;
  final bool fillButton;
  final bool borderedButton;
  final bool miniButton;
  final ValueNotifier<bool>? isLoading;
  final IconPosition position;
  final String buttonText;

  @override
  State<Buttons> createState() => _ButtonsState();

  factory Buttons.mini({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
  }) {
    return Buttons(
      actionIcon: actionIcon,
      miniButton: true,
      borderedButton: borderedButton ?? false,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
    );
  }

  factory Buttons.regular({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
  }) {
    return Buttons(
      actionIcon: actionIcon,
      miniButton: false,
      borderedButton: borderedButton ?? false,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
    );
  }

  factory Buttons.buttonWithTrailing({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
  }) {
    return Buttons(
      actionIcon: actionIcon,
      miniButton: false,
      borderedButton: borderedButton ?? false,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
    );
  }

  factory Buttons.buttonWithLeading({
    required String actionIcon,
    bool? borderedButton,
    ValueNotifier<bool>? isLoading,
    bool? fillButton,
    required IconPosition position,
    required String buttonText,
  }) {
    return Buttons(
      actionIcon: actionIcon,
      miniButton: false,
      borderedButton: borderedButton ?? false,
      isLoading: isLoading,
      fillButton: fillButton ?? false,
      position: position,
      buttonText: buttonText,
    );
  }
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isLoading ?? ValueNotifier(false),
      builder: (context, isLoading, _) {
        return Container(
          width: widget.miniButton ? null : screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: buttonColor,
            ),
            color: widget.fillButton ? buttonColor : Colors.white,
          ),
          child: _buildButton(isLoading),
        );
      },
    );
  }

  Padding _buildButton(bool isLoading) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Visibility(
        visible: isLoading,
        replacement: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: widget.position == IconPosition.start,
              replacement: const SizedBox.shrink(),
              child: CustomImage(
                image: widget.actionIcon,
              ),
            ),
            _middleWidget(
              actionIcon: widget.actionIcon,
              position: widget.position,
            ),
            Visibility(
              visible: widget.position == IconPosition.middleEnd,
              replacement: const SizedBox.shrink(),
              child: CustomImage(
                image: widget.actionIcon,
              ),
            ),
          ],
        ),
        child: LottieBuilder.asset('assets/loading_anim.json'),
      ),
    );
  }

  Widget _middleWidget({
    required String actionIcon,
    required IconPosition position,
  }) {
    return Row(
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
        Text(widget.buttonText),
        Visibility(
          visible: position == IconPosition.middleEnd,
          replacement: const SizedBox.shrink(),
          child: CustomImage(
            image: actionIcon,
          ),
        ),
      ],
    );
  }
}
