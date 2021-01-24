part of '../settings.dart';

class _DigitInputField extends StatelessWidget {
  const _DigitInputField({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.maxLength = 2,
  }) : super(key: key);

  final int value;
  final int maxLength;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color.fromRGBO(85, 85, 85, 1),
        fontSize: FontSizes.s16,
      ),
      maxLength: maxLength,
      keyboardType: const TextInputType.numberWithOptions(),
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
        // todo use regex to avoid input at 0
        FilteringTextInputFormatter.digitsOnly,
      ],
      cursorColor: const Color.fromRGBO(85, 85, 85, 1),
      decoration: const InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(239, 239, 239, 1),
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      onChanged: (value) {
        if (value.isEmpty) return;
        onChanged(int.parse(value));
      },
    );
  }
}
