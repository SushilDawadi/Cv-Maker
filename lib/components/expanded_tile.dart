import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';

class ExpandedTile extends StatefulWidget {
  final List<Widget> children;
  const ExpandedTile({super.key, required this.children});

  @override
  State<ExpandedTile> createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Material(
      child: Center(
        child: Column(
          children: <Widget>[
            Theme(
              data: theme,
              child: ExpansionTile(
                backgroundColor: containerBackgroundColor,
                title: const Text("Sushil"),
                trailing: const Column(
                  children: <Widget>[],
                ),
                children: widget.children,
              ),
            )
          ],
        ),
      ),
    );
  }
}
