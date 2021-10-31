import 'dart:ui';
import 'package:flutter/material.dart';


class SetDrawingArea
{
  Offset points;
  Paint paintArea;

  SetDrawingArea({
    this.points,
    this.paintArea,
  });
}


class MyCustomPainter extends CustomPainter
{
  List<SetDrawingArea> allPoints = [];

  MyCustomPainter({List<SetDrawingArea> allPoints}) : this.allPoints = allPoints.toList();


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint background = Paint()..color = Colors.black;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
    canvas.clipRect(rect);

    for(int i=0; i<allPoints.length-1; i++)
    {
      if(allPoints[i] != null  &&  allPoints[i+1] != null)
      {
        canvas.drawLine(allPoints[i].points, allPoints[i+1].points, allPoints[i].paintArea);
      }
      else if(allPoints[i] != null  &&  allPoints[i+1] == null)
      {
        canvas.drawPoints(PointMode.points, [allPoints[i].points], allPoints[i].paintArea);
      }
    }
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate.allPoints != allPoints;
  }
}