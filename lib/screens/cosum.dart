import 'package:flutter/material.dart';

class CustomToggleTab extends StatelessWidget {
  final List<String> tabs;
  final List<bool> isSelectedList;
  final Function(int) onTabChanged;
  final Color backgroundColor;
  final TextStyle textStyle;
  final BorderRadius borderRadius;

  CustomToggleTab({
    required this.tabs,
    required this.isSelectedList,
    required this.onTabChanged,
    this.backgroundColor = const Color.fromARGB(255, 207, 206, 206),
    this.textStyle = const TextStyle(color: Colors.white),
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                onTabChanged(index);
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: isSelectedList[index]
                      ? Color.fromARGB(255, 25, 83, 163)
                      : Colors.transparent,
                  borderRadius: borderRadius,
                ),
                child: Text(
                  tabs[index],
                  style: textStyle.copyWith(
                    fontWeight: isSelectedList[index]
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: isSelectedList[index]
                        ? Colors.white
                        : Color.fromARGB(255, 25, 83, 163),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
