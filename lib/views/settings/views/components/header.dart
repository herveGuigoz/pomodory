part of '../settings.dart';

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  static const Color _kColor = Color.fromRGBO(187, 187, 187, 1);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'TIMER SETTING',
          style: TextStyle(
            fontFamily: Fonts.arialRoundedBold,
            color: _kColor,
            fontSize: FontSizes.s16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.close, color: _kColor),
        ),
      ],
    );
  }
}
