import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_app/utils/constants.dart';

class ColorsRow extends StatefulWidget {
  final List<Color> colorList;
  final Function (Color) selectedItem;

  const ColorsRow({required this.colorList, required this.selectedItem,super.key});

  @override
  State<ColorsRow> createState() => _ColorsRowState();
}

class _ColorsRowState extends State<ColorsRow> {
  Color? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: widget.colorList.length,
      separatorBuilder: (context, index) {
        return SizedBox(width: 5);
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            _selectedColor = widget.colorList[index];

            widget.selectedItem.call(widget.colorList[index]);
            setState(() {

            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 5.8,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 96,
                decoration: ShapeDecoration(
                  color: widget.colorList[index].withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 91,
                decoration: ShapeDecoration(
                  color: widget.colorList[index].withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: widget.colorList[index],
                  border: Border.all( color: (_selectedColor != null && _selectedColor == widget.colorList[index])?secondaryColor:Colors.transparent, width:(_selectedColor != null && _selectedColor == widget.colorList[index])? 3:0)
                ),
              ),
            ],),
          ),
        );
      },);
  }
}
