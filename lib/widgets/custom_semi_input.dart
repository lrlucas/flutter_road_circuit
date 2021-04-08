import 'package:flutter/material.dart';

class CustomSemiImput extends StatefulWidget {
  // texto
  final String text;
  final VoidCallback onTapText;
  final Color colorText;

  // left icon
  final IconData leftIcon;
  final VoidCallback onTapLeftIcon;
  final Color colorLeftIcon;

  // rigth icono
  final IconData rightIcon;
  final Color colorRightIcon;

  // background color
  final Color backgroundColor;

  // tamaño del contenedor
  final double height;

  // border radius
  final double borderRadius;

  // hint text
  final String hintText;
  final Color colorHintText;


  const CustomSemiImput({
    Key key,
    this.text = '',
    this.onTapText,
    this.colorText,
    this.leftIcon,
    this.onTapLeftIcon,
    this.colorLeftIcon,
    this.rightIcon,
    this.colorRightIcon,
    this.backgroundColor,
    this.height = 45,
    this.borderRadius = 12,
    this.hintText = '',
    this.colorHintText
  }) : super(key: key);

  @override
  _CustomSemiImputState createState() => _CustomSemiImputState();
}

class _CustomSemiImputState extends State<CustomSemiImput> {
  
  
  
  
  _putSpacer() {
    if (widget.rightIcon == null) {
      return Container();
    }
    return Spacer();
  }

  _showIconRight() {
    if (widget.rightIcon == null) {
      return Container();
    }
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Icon(
        widget.rightIcon,
        color: widget.colorRightIcon
      )
    );
  }


  _showIconLeft() {
    if (widget.leftIcon == null) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 10.0),
      child: InkResponse(
        child: Icon(
          widget.leftIcon,
          color: widget.colorLeftIcon,
          size: 25.0,
        ),
        onTap: widget.onTapLeftIcon,
      )
    );
  }

  _showText() {
    if (widget.hintText.isEmpty) {
      return InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 18.0,
                color: widget.colorText,
              ),
            ),
          ],
        ),
        onTap: widget.onTapText,
      );
    }
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              color: widget.colorText,
            ),
          ),
          Text(
            widget.hintText,
            style: TextStyle(
              fontSize: 13.0,
              color: widget.colorHintText,
            ),
          ),
        ],
      ),
      onTap: widget.onTapText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius)
        ),
      child: Row(
        children: [
          _showIconLeft(),

          _showText(),
          
          _putSpacer(),
          _showIconRight()

        ],
      ),
    );
  }
}
