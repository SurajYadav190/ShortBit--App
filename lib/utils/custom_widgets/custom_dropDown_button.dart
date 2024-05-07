import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final String Function(T) itemToString;
  final void Function(T?)? onChanged;
  final String hint;

  const CustomDropdownButton({
    required this.items,
    required this.hint,
    this.value,
    required this.itemToString,
    this.onChanged,
  });

  @override
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  T? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 15,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.50,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFD4D4D4),
          ),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: DropdownButton<T>(
        icon: SvgPicture.asset(
          'assets/icons/drop_down.svg',
          height: 32,
          width: 32,
        ),
        hint: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            widget.hint,
            style: TextStyle(
              color: Color(0xFF9D9D9D),
              fontSize: 12,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        isExpanded: true,
        style: TextStyle(
          color: Color(0xFF9D9D9D),
          fontSize: 12,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        value: _selectedItem,
        underline: SizedBox(),
        items: widget.items.map((item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Container(
              decoration: BoxDecoration(),
              child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(widget.itemToString(item))),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedItem = value;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
      ),
    );
  }
}
