import 'package:flutter/material.dart';

class CustomRound extends StatelessWidget {
  const CustomRound({super.key});

  @override
  Widget build(BuildContext context) {
    return  WhatsAppStatus(
      imageUrl:                 "https://th.bing.com/th?id=OIP.X9gYA6VDsnaSpMqBOWKH5wHaGv&w=262&h=238&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
      ,
      segmentCount: 2,
      name: "Akshay",
      // Number of status segments
      segmentColor: Colors.green, // Color of the segments
      gapColor: Colors.grey, // Color of the gap
    );
    //   Column(
    //   children: [
    //     CircleAvatar(
    //         radius: 32,
    //
    //         backgroundColor: Colors.green,
    //         child: CircleAvatar(
    //           radius: 30,
    //           backgroundImage: NetworkImage(
    //             "https://th.bing.com/th?id=OIP.X9gYA6VDsnaSpMqBOWKH5wHaGv&w=262&h=238&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",                                    ),
    //         )),
    //     SizedBox(height: 5,),
    //     SizedBox(
    //         width: 60,
    //         child: Text("Ullas",style: TextStyle(color: Colors.white,fontSize: 15),overflow: TextOverflow.ellipsis,))
    //   ],
    // );
  }
}
class WhatsAppStatus extends StatelessWidget {
  final String imageUrl;
  final int segmentCount;
  final Color segmentColor;
  final Color gapColor;
  final String name;

  WhatsAppStatus({
    required this.imageUrl,
    required this.name,
    required this.segmentCount,
    required this.segmentColor,
    required this.gapColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Custom painted segmented circle
            CustomPaint(
              size: Size(50, 50), // Size of the outer circle
              painter: StatusPainter(
                segmentCount: segmentCount,
                segmentColor: segmentColor,
                gapColor: gapColor,
                strokeWidth: 5, // Width of the segment
                gapWidth: 1, // Width of the gap
              ),
            ),
            // Profile picture
            CircleAvatar(
              radius: 30, // Adjust size as needed
              backgroundImage: NetworkImage(imageUrl),
            ),

          ],
        ),
        SizedBox(height: 5,),
        SizedBox(
            width: 60,
            child: Text(name,style: TextStyle(color: Colors.white,fontSize: 15),overflow: TextOverflow.ellipsis,))
      ],
    );
  }
}

class StatusPainter extends CustomPainter {
  final int segmentCount;
  final Color segmentColor;
  final Color gapColor;
  final double strokeWidth;
  final double gapWidth;

  StatusPainter({
    required this.segmentCount,
    required this.segmentColor,
    required this.gapColor,
    required this.strokeWidth,
    required this.gapWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final gapAngle = (2 * 3.141592653589793 / segmentCount) / 12;
    final segmentAngle = (2 * 3.141592653589793 / segmentCount)-gapAngle ;

    for (int i = 0; i < segmentCount; i++) {
      final startAngle = (i * (segmentAngle + gapAngle)) - (gapAngle / 2);

      paint.color = gapColor;
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        startAngle,
        gapAngle,
        false,
        paint,
      );

      paint.color = segmentColor;
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        startAngle + gapAngle,
        segmentAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}