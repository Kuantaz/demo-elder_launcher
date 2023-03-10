import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../constants/custom_functions.dart';
import '../theme.dart';

class FatButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidFunction onClickAction;

  const FatButton(this.label, this.icon, this.onClickAction, {Key? key})
      : super(key: key);
  const FatButton.next(this.label, this.onClickAction, {Key? key})
      : icon = Icons.navigate_next,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClickAction,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              label,
              style: TextStyles.actionButtonLabel,
            ),
            Icon(
              icon,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidFunction onClickAction;

  const PrimaryButton(this.label, this.onClickAction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 70,
      width: double.infinity,
      child: TextButton(
        onPressed: onClickAction,
        style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.only(top: 15, bottom: 15)),
        child: AutoSizeText(
          label,
          maxLines: 1,
          style: TextStyles.primaryButtonLabel,
        ),
      ),
    );
  }
}
