import 'package:flutter/material.dart';
import 'package:medical_app/presentation/screen/photo_question/photo_data.dart';

class ImagesRow extends StatefulWidget {
  final List<PhotoData> imageList;

  const ImagesRow({required this.imageList, super.key});

  @override
  State<ImagesRow> createState() => _ImagesRowState();
}

class _ImagesRowState extends State<ImagesRow> {
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: widget.imageList.length,
      separatorBuilder: (context, index) {
        return SizedBox(width: 8);
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width / 3.6,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: MediaQuery.of(context).size.width,
                  height: 116,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 112,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      /*side: BorderSide(
                      width: 0,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.white,
                    ),*/
                      borderRadius: BorderRadius.circular(16),
                    ),
                    image: (widget.imageList[index] is FromAsset)
                        ? DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                (widget.imageList[index] as FromAsset).url))
                        : DecorationImage(
                            image: FileImage(
                                (widget.imageList[index] as FromFile).file),
                            fit: BoxFit.cover),
                    color: Theme.of(context).primaryColor,
                    // border: Border.all( color: (_selectedColor != null && _selectedColor == widget.imageList[index])?secondaryColor:Colors.transparent, width:(_selectedColor != null && _selectedColor == widget.imageList[index])? 3:0)
                  ),
                  // child: (widget.imageList[index] is FromAsset)?Image.asset((widget.imageList[index]as FromAsset).url):Image.file((widget.imageList[index] as FromFile).file)
                ),
                /* Container(
                width: 112,
                height: 112,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                    fit: BoxFit.none,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )*/
              ],
            ),
          ),
        );
      },
    );
  }
}
