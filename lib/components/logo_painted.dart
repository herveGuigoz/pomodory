import 'package:flutter/material.dart';

class LogoPainted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.biggest.width;
        final height = (width * 1.0756222943722944).toDouble();

        return CustomPaint(
          size: Size(width, height),
          painter: RPSCustomPainter(),
        );
      },
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8536667, size.height * 0.8410000);
    path_0.cubicTo(
        size.width * 0.8538333,
        size.height * 0.8583333,
        size.width * 0.8461667,
        size.height * 0.8706667,
        size.width * 0.8343333,
        size.height * 0.8776667);
    path_0.cubicTo(
        size.width * 0.8260000,
        size.height * 0.8826667,
        size.width * 0.8130000,
        size.height * 0.8858333,
        size.width * 0.8011667,
        size.height * 0.8873333);
    path_0.lineTo(size.width * 0.8011667, size.height * 0.8870000);
    path_0.cubicTo(
        size.width * 0.8318333,
        size.height * 0.8780000,
        size.width * 0.8326667,
        size.height * 0.8346667,
        size.width * 0.8350000,
        size.height * 0.8111667);
    path_0.cubicTo(
        size.width * 0.8366667,
        size.height * 0.7933333,
        size.width * 0.8381667,
        size.height * 0.7758333,
        size.width * 0.8391667,
        size.height * 0.7586667);
    path_0.cubicTo(
        size.width * 0.8446667,
        size.height * 0.7336667,
        size.width * 0.8483333,
        size.height * 0.7066667,
        size.width * 0.8520000,
        size.height * 0.6823333);
    path_0.cubicTo(
        size.width * 0.8526667,
        size.height * 0.7351667,
        size.width * 0.8531667,
        size.height * 0.7881667,
        size.width * 0.8536667,
        size.height * 0.8410000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8516667, size.height * 0.6476667);
    path_1.cubicTo(
        size.width * 0.8518333,
        size.height * 0.6591667,
        size.width * 0.8520000,
        size.height * 0.6708333,
        size.width * 0.8520000,
        size.height * 0.6823333);
    path_1.cubicTo(
        size.width * 0.8483333,
        size.height * 0.7066667,
        size.width * 0.8446667,
        size.height * 0.7336667,
        size.width * 0.8391667,
        size.height * 0.7586667);
    path_1.cubicTo(
        size.width * 0.8431667,
        size.height * 0.6950000,
        size.width * 0.8425000,
        size.height * 0.6355000,
        size.width * 0.8346667,
        size.height * 0.5758333);
    path_1.lineTo(size.width * 0.8350000, size.height * 0.5753333);
    path_1.cubicTo(
        size.width * 0.8400000,
        size.height * 0.5786667,
        size.width * 0.8438333,
        size.height * 0.5828333,
        size.width * 0.8460000,
        size.height * 0.5881667);
    path_1.lineTo(size.width * 0.8468333, size.height * 0.5880000);
    path_1.cubicTo(
        size.width * 0.8511667,
        size.height * 0.6076667,
        size.width * 0.8515000,
        size.height * 0.6350000,
        size.width * 0.8516667,
        size.height * 0.6476667);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8470000, size.height * 0.5880000);
    path_2.lineTo(size.width * 0.8461667, size.height * 0.5881667);
    path_2.cubicTo(
        size.width * 0.8441667,
        size.height * 0.5830000,
        size.width * 0.8401667,
        size.height * 0.5788333,
        size.width * 0.8351667,
        size.height * 0.5753333);
    path_2.cubicTo(
        size.width * 0.8225000,
        size.height * 0.5666667,
        size.width * 0.8026667,
        size.height * 0.5636667,
        size.width * 0.7883333,
        size.height * 0.5635000);
    path_2.cubicTo(
        size.width * 0.7683333,
        size.height * 0.5633333,
        size.width * 0.7486667,
        size.height * 0.5643333,
        size.width * 0.7306667,
        size.height * 0.5560000);
    path_2.cubicTo(
        size.width * 0.7076667,
        size.height * 0.5453333,
        size.width * 0.7066667,
        size.height * 0.5150000,
        size.width * 0.7063333,
        size.height * 0.4918333);
    path_2.cubicTo(
        size.width * 0.7053333,
        size.height * 0.3898333,
        size.width * 0.7208333,
        size.height * 0.2891667,
        size.width * 0.7218333,
        size.height * 0.1846667);
    path_2.cubicTo(
        size.width * 0.7220000,
        size.height * 0.1706667,
        size.width * 0.7225000,
        size.height * 0.1580000,
        size.width * 0.7166667,
        size.height * 0.1455000);
    path_2.cubicTo(
        size.width * 0.7110000,
        size.height * 0.1333333,
        size.width * 0.7006667,
        size.height * 0.1225000,
        size.width * 0.6798333,
        size.height * 0.1180000);
    path_2.cubicTo(
        size.width * 0.7001667,
        size.height * 0.1211667,
        size.width * 0.7303333,
        size.height * 0.1293333,
        size.width * 0.7423333,
        size.height * 0.1541667);
    path_2.cubicTo(
        size.width * 0.7508333,
        size.height * 0.1720000,
        size.width * 0.7490000,
        size.height * 0.1975000,
        size.width * 0.7481667,
        size.height * 0.2173333);
    path_2.cubicTo(
        size.width * 0.7445000,
        size.height * 0.3058333,
        size.width * 0.7380000,
        size.height * 0.3906667,
        size.width * 0.7315000,
        size.height * 0.4848333);
    path_2.cubicTo(
        size.width * 0.7301667,
        size.height * 0.5081667,
        size.width * 0.7323333,
        size.height * 0.5331667,
        size.width * 0.7573333,
        size.height * 0.5433333);
    path_2.cubicTo(
        size.width * 0.7915000,
        size.height * 0.5571667,
        size.width * 0.8181667,
        size.height * 0.5440000,
        size.width * 0.8396667,
        size.height * 0.5685000);
    path_2.cubicTo(
        size.width * 0.8428333,
        size.height * 0.5723333,
        size.width * 0.8451667,
        size.height * 0.5795000,
        size.width * 0.8470000,
        size.height * 0.5880000);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffFFD249).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6523333, size.height * 0.1398333);
    path_3.cubicTo(
        size.width * 0.6506667,
        size.height * 0.1401667,
        size.width * 0.6491667,
        size.height * 0.1410000,
        size.width * 0.6480000,
        size.height * 0.1420000);
    path_3.cubicTo(
        size.width * 0.6473333,
        size.height * 0.1426667,
        size.width * 0.6466667,
        size.height * 0.1433333,
        size.width * 0.6461667,
        size.height * 0.1441667);
    path_3.cubicTo(
        size.width * 0.6445000,
        size.height * 0.1466667,
        size.width * 0.6441667,
        size.height * 0.1500000,
        size.width * 0.6446667,
        size.height * 0.1531667);
    path_3.cubicTo(
        size.width * 0.6450000,
        size.height * 0.1548333,
        size.width * 0.6455000,
        size.height * 0.1565000,
        size.width * 0.6463333,
        size.height * 0.1580000);
    path_3.cubicTo(
        size.width * 0.6491667,
        size.height * 0.1630000,
        size.width * 0.6540000,
        size.height * 0.1665000,
        size.width * 0.6586667,
        size.height * 0.1700000);
    path_3.cubicTo(
        size.width * 0.6691667,
        size.height * 0.1775000,
        size.width * 0.6801667,
        size.height * 0.1880000,
        size.width * 0.6916667,
        size.height * 0.1935000);
    path_3.cubicTo(
        size.width * 0.6936667,
        size.height * 0.1945000,
        size.width * 0.6956667,
        size.height * 0.1948333,
        size.width * 0.6975000,
        size.height * 0.1948333);
    path_3.cubicTo(
        size.width * 0.6996667,
        size.height * 0.1948333,
        size.width * 0.7018333,
        size.height * 0.1940000,
        size.width * 0.7035000,
        size.height * 0.1928333);
    path_3.cubicTo(
        size.width * 0.7063333,
        size.height * 0.1906667,
        size.width * 0.7081667,
        size.height * 0.1871667,
        size.width * 0.7081667,
        size.height * 0.1831667);
    path_3.cubicTo(
        size.width * 0.7081667,
        size.height * 0.1811667,
        size.width * 0.7078333,
        size.height * 0.1790000,
        size.width * 0.7068333,
        size.height * 0.1768333);
    path_3.cubicTo(
        size.width * 0.7050000,
        size.height * 0.1726667,
        size.width * 0.7016667,
        size.height * 0.1693333,
        size.width * 0.6983333,
        size.height * 0.1661667);
    path_3.cubicTo(
        size.width * 0.6900000,
        size.height * 0.1585000,
        size.width * 0.6803333,
        size.height * 0.1521667,
        size.width * 0.6710000,
        size.height * 0.1458333);
    path_3.cubicTo(
        size.width * 0.6675000,
        size.height * 0.1435000,
        size.width * 0.6640000,
        size.height * 0.1411667,
        size.width * 0.6598333,
        size.height * 0.1400000);
    path_3.cubicTo(
        size.width * 0.6575000,
        size.height * 0.1393333,
        size.width * 0.6548333,
        size.height * 0.1391667,
        size.width * 0.6523333,
        size.height * 0.1398333);
    path_3.close();
    path_3.moveTo(size.width * 0.6061667, size.height * 0.2285000);
    path_3.cubicTo(
        size.width * 0.6063333,
        size.height * 0.2501667,
        size.width * 0.6051667,
        size.height * 0.2716667,
        size.width * 0.6093333,
        size.height * 0.2930000);
    path_3.cubicTo(
        size.width * 0.6111667,
        size.height * 0.3028333,
        size.width * 0.6138333,
        size.height * 0.3110000,
        size.width * 0.6193333,
        size.height * 0.3193333);
    path_3.cubicTo(
        size.width * 0.6250000,
        size.height * 0.3275000,
        size.width * 0.6320000,
        size.height * 0.3355000,
        size.width * 0.6473333,
        size.height * 0.3355000);
    path_3.cubicTo(
        size.width * 0.6703333,
        size.height * 0.3355000,
        size.width * 0.6808333,
        size.height * 0.3170000,
        size.width * 0.6841667,
        size.height * 0.2966667);
    path_3.cubicTo(
        size.width * 0.6850000,
        size.height * 0.2918333,
        size.width * 0.6856667,
        size.height * 0.2868333,
        size.width * 0.6861667,
        size.height * 0.2818333);
    path_3.lineTo(size.width * 0.6853333, size.height * 0.2816667);
    path_3.cubicTo(
        size.width * 0.6820000,
        size.height * 0.2895000,
        size.width * 0.6701667,
        size.height * 0.3023333,
        size.width * 0.6640000,
        size.height * 0.3048333);
    path_3.cubicTo(
        size.width * 0.6578333,
        size.height * 0.3073333,
        size.width * 0.6501667,
        size.height * 0.3073333,
        size.width * 0.6450000,
        size.height * 0.3030000);
    path_3.cubicTo(
        size.width * 0.6390000,
        size.height * 0.2978333,
        size.width * 0.6385000,
        size.height * 0.2888333,
        size.width * 0.6383333,
        size.height * 0.2808333);
    path_3.cubicTo(
        size.width * 0.6383333,
        size.height * 0.2663333,
        size.width * 0.6381667,
        size.height * 0.2516667,
        size.width * 0.6381667,
        size.height * 0.2371667);
    path_3.cubicTo(
        size.width * 0.6381667,
        size.height * 0.2303333,
        size.width * 0.6375000,
        size.height * 0.2223333,
        size.width * 0.6318333,
        size.height * 0.2185000);
    path_3.cubicTo(
        size.width * 0.6276667,
        size.height * 0.2158333,
        size.width * 0.6221667,
        size.height * 0.2163333,
        size.width * 0.6176667,
        size.height * 0.2186667);
    path_3.cubicTo(
        size.width * 0.6133333,
        size.height * 0.2210000,
        size.width * 0.6098333,
        size.height * 0.2246667,
        size.width * 0.6066667,
        size.height * 0.2283333);
    path_3.lineTo(size.width * 0.6061667, size.height * 0.2283333);
    path_3.close();
    path_3.moveTo(size.width * 0.2471667, size.height * 0.2615000);
    path_3.cubicTo(
        size.width * 0.2541667,
        size.height * 0.2400000,
        size.width * 0.2673333,
        size.height * 0.2193333,
        size.width * 0.2908333,
        size.height * 0.2080000);
    path_3.lineTo(size.width * 0.2908333, size.height * 0.2076667);
    path_3.cubicTo(
        size.width * 0.3050000,
        size.height * 0.2046667,
        size.width * 0.3196667,
        size.height * 0.2043333,
        size.width * 0.3341667,
        size.height * 0.2038333);
    path_3.cubicTo(
        size.width * 0.3831667,
        size.height * 0.2023333,
        size.width * 0.4323333,
        size.height * 0.2008333,
        size.width * 0.4813333,
        size.height * 0.1993333);
    path_3.lineTo(size.width * 0.4813333, size.height * 0.1993333);
    path_3.cubicTo(
        size.width * 0.4948333,
        size.height * 0.1975000,
        size.width * 0.5053333,
        size.height * 0.1961667,
        size.width * 0.5130000,
        size.height * 0.1866667);
    path_3.cubicTo(
        size.width * 0.5206667,
        size.height * 0.1770000,
        size.width * 0.5248333,
        size.height * 0.1648333,
        size.width * 0.5316667,
        size.height * 0.1546667);
    path_3.cubicTo(
        size.width * 0.5450000,
        size.height * 0.1345000,
        size.width * 0.5683333,
        size.height * 0.1223333,
        size.width * 0.5921667,
        size.height * 0.1176667);
    path_3.cubicTo(
        size.width * 0.6160000,
        size.height * 0.1130000,
        size.width * 0.6405000,
        size.height * 0.1133333,
        size.width * 0.6646667,
        size.height * 0.1161667);
    path_3.cubicTo(
        size.width * 0.6681667,
        size.height * 0.1165000,
        size.width * 0.6736667,
        size.height * 0.1171667,
        size.width * 0.6800000,
        size.height * 0.1181667);
    path_3.cubicTo(
        size.width * 0.7010000,
        size.height * 0.1226667,
        size.width * 0.7113333,
        size.height * 0.1335000,
        size.width * 0.7168333,
        size.height * 0.1456667);
    path_3.cubicTo(
        size.width * 0.7226667,
        size.height * 0.1583333,
        size.width * 0.7221667,
        size.height * 0.1710000,
        size.width * 0.7220000,
        size.height * 0.1848333);
    path_3.cubicTo(
        size.width * 0.7210000,
        size.height * 0.2893333,
        size.width * 0.7055000,
        size.height * 0.3900000,
        size.width * 0.7065000,
        size.height * 0.4920000);
    path_3.cubicTo(
        size.width * 0.7066667,
        size.height * 0.5150000,
        size.width * 0.7078333,
        size.height * 0.5455000,
        size.width * 0.7308333,
        size.height * 0.5561667);
    path_3.cubicTo(
        size.width * 0.7490000,
        size.height * 0.5645000,
        size.width * 0.7685000,
        size.height * 0.5635000,
        size.width * 0.7885000,
        size.height * 0.5636667);
    path_3.cubicTo(
        size.width * 0.8028333,
        size.height * 0.5638333,
        size.width * 0.8226667,
        size.height * 0.5668333,
        size.width * 0.8353333,
        size.height * 0.5755000);
    path_3.lineTo(size.width * 0.8350000, size.height * 0.5760000);
    path_3.cubicTo(
        size.width * 0.8428333,
        size.height * 0.6356667,
        size.width * 0.8435000,
        size.height * 0.6951667,
        size.width * 0.8395000,
        size.height * 0.7588333);
    path_3.cubicTo(
        size.width * 0.8381667,
        size.height * 0.7650000,
        size.width * 0.8366667,
        size.height * 0.7710000,
        size.width * 0.8351667,
        size.height * 0.7768333);
    path_3.cubicTo(
        size.width * 0.8293333,
        size.height * 0.7981667,
        size.width * 0.8223333,
        size.height * 0.8198333,
        size.width * 0.8075000,
        size.height * 0.8361667);
    path_3.cubicTo(
        size.width * 0.7978333,
        size.height * 0.8468333,
        size.width * 0.7851667,
        size.height * 0.8533333,
        size.width * 0.7716667,
        size.height * 0.8573333);
    path_3.cubicTo(
        size.width * 0.7760000,
        size.height * 0.7983333,
        size.width * 0.7763333,
        size.height * 0.7340000,
        size.width * 0.7715000,
        size.height * 0.6771667);
    path_3.cubicTo(
        size.width * 0.7693333,
        size.height * 0.6520000,
        size.width * 0.7643333,
        size.height * 0.6235000,
        size.width * 0.7433333,
        size.height * 0.6093333);
    path_3.cubicTo(
        size.width * 0.7265000,
        size.height * 0.5980000,
        size.width * 0.7038333,
        size.height * 0.5991667,
        size.width * 0.6833333,
        size.height * 0.5966667);
    path_3.cubicTo(
        size.width * 0.6703333,
        size.height * 0.5950000,
        size.width * 0.6581667,
        size.height * 0.5918333,
        size.width * 0.6486667,
        size.height * 0.5830000);
    path_3.cubicTo(
        size.width * 0.6323333,
        size.height * 0.5676667,
        size.width * 0.6321667,
        size.height * 0.5420000,
        size.width * 0.6333333,
        size.height * 0.5195000);
    path_3.cubicTo(
        size.width * 0.6350000,
        size.height * 0.4853333,
        size.width * 0.6368333,
        size.height * 0.4511667,
        size.width * 0.6385000,
        size.height * 0.4170000);
    path_3.cubicTo(
        size.width * 0.6391667,
        size.height * 0.4038333,
        size.width * 0.6396667,
        size.height * 0.3898333,
        size.width * 0.6331667,
        size.height * 0.3783333);
    path_3.cubicTo(
        size.width * 0.6208333,
        size.height * 0.3568333,
        size.width * 0.5893333,
        size.height * 0.3546667,
        size.width * 0.5645000,
        size.height * 0.3553333);
    path_3.lineTo(size.width * 0.5643333, size.height * 0.3553333);
    path_3.cubicTo(
        size.width * 0.5640000,
        size.height * 0.3418333,
        size.width * 0.5628333,
        size.height * 0.3285000,
        size.width * 0.5610000,
        size.height * 0.3155000);
    path_3.lineTo(size.width * 0.5610000, size.height * 0.3151667);
    path_3.cubicTo(
        size.width * 0.5636667,
        size.height * 0.3151667,
        size.width * 0.5653333,
        size.height * 0.3151667,
        size.width * 0.5658333,
        size.height * 0.3151667);
    path_3.cubicTo(
        size.width * 0.5720000,
        size.height * 0.3151667,
        size.width * 0.5763333,
        size.height * 0.3128333,
        size.width * 0.5755000,
        size.height * 0.3021667);
    path_3.cubicTo(
        size.width * 0.5745000,
        size.height * 0.2888333,
        size.width * 0.5650000,
        size.height * 0.2903333,
        size.width * 0.5650000,
        size.height * 0.2903333);
    path_3.lineTo(size.width * 0.3108333, size.height * 0.2903333);
    path_3.cubicTo(
        size.width * 0.3108333,
        size.height * 0.2903333,
        size.width * 0.3061667,
        size.height * 0.2905000,
        size.width * 0.3033333,
        size.height * 0.2956667);
    path_3.cubicTo(
        size.width * 0.3025000,
        size.height * 0.2973333,
        size.width * 0.3016667,
        size.height * 0.2996667,
        size.width * 0.3015000,
        size.height * 0.3025000);
    path_3.cubicTo(
        size.width * 0.3005000,
        size.height * 0.3143333,
        size.width * 0.3111667,
        size.height * 0.3151667,
        size.width * 0.3111667,
        size.height * 0.3151667);
    path_3.cubicTo(
        size.width * 0.3111667,
        size.height * 0.3151667,
        size.width * 0.3145000,
        size.height * 0.3151667,
        size.width * 0.3203333,
        size.height * 0.3151667);
    path_3.lineTo(size.width * 0.3203333, size.height * 0.3156667);
    path_3.cubicTo(
        size.width * 0.3185000,
        size.height * 0.3290000,
        size.width * 0.3171667,
        size.height * 0.3431667,
        size.width * 0.3165000,
        size.height * 0.3573333);
    path_3.lineTo(size.width * 0.3161667, size.height * 0.3573333);
    path_3.cubicTo(
        size.width * 0.3073333,
        size.height * 0.3701667,
        size.width * 0.2951667,
        size.height * 0.3823333,
        size.width * 0.2798333,
        size.height * 0.3845000);
    path_3.cubicTo(
        size.width * 0.2690000,
        size.height * 0.3860000,
        size.width * 0.2583333,
        size.height * 0.3820000,
        size.width * 0.2496667,
        size.height * 0.3750000);
    path_3.cubicTo(
        size.width * 0.2450000,
        size.height * 0.3636667,
        size.width * 0.2430000,
        size.height * 0.3515000,
        size.width * 0.2416667,
        size.height * 0.3391667);
    path_3.cubicTo(
        size.width * 0.2391667,
        size.height * 0.3150000,
        size.width * 0.2390000,
        size.height * 0.2901667,
        size.width * 0.2453333,
        size.height * 0.2668333);
    path_3.cubicTo(
        size.width * 0.2460000,
        size.height * 0.2651667,
        size.width * 0.2465000,
        size.height * 0.2633333,
        size.width * 0.2471667,
        size.height * 0.2615000);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.8350000, size.height * 0.7766667);
    path_4.cubicTo(
        size.width * 0.8365000,
        size.height * 0.7708333,
        size.width * 0.8380000,
        size.height * 0.7648333,
        size.width * 0.8393333,
        size.height * 0.7586667);
    path_4.cubicTo(
        size.width * 0.8383333,
        size.height * 0.7758333,
        size.width * 0.8368333,
        size.height * 0.7933333,
        size.width * 0.8351667,
        size.height * 0.8111667);
    path_4.cubicTo(
        size.width * 0.8328333,
        size.height * 0.8346667,
        size.width * 0.8320000,
        size.height * 0.8780000,
        size.width * 0.8013333,
        size.height * 0.8870000);
    path_4.lineTo(size.width * 0.8013333, size.height * 0.8873333);
    path_4.cubicTo(
        size.width * 0.7965000,
        size.height * 0.8880000,
        size.width * 0.7920000,
        size.height * 0.8883333,
        size.width * 0.7880000,
        size.height * 0.8886667);
    path_4.cubicTo(
        size.width * 0.7818333,
        size.height * 0.8890000,
        size.width * 0.7755000,
        size.height * 0.8891667,
        size.width * 0.7688333,
        size.height * 0.8893333);
    path_4.lineTo(size.width * 0.7688333, size.height * 0.8886667);
    path_4.cubicTo(
        size.width * 0.7698333,
        size.height * 0.8783333,
        size.width * 0.7706667,
        size.height * 0.8678333,
        size.width * 0.7715000,
        size.height * 0.8571667);
    path_4.cubicTo(
        size.width * 0.7851667,
        size.height * 0.8531667,
        size.width * 0.7976667,
        size.height * 0.8466667,
        size.width * 0.8073333,
        size.height * 0.8360000);
    path_4.cubicTo(
        size.width * 0.8220000,
        size.height * 0.8196667,
        size.width * 0.8291667,
        size.height * 0.7978333,
        size.width * 0.8350000,
        size.height * 0.7766667);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6801667, size.height * 0.6520000);
    path_5.cubicTo(
        size.width * 0.6803333,
        size.height * 0.6490000,
        size.width * 0.6805000,
        size.height * 0.6460000,
        size.width * 0.6805000,
        size.height * 0.6428333);
    path_5.cubicTo(
        size.width * 0.6808333,
        size.height * 0.6365000,
        size.width * 0.6811667,
        size.height * 0.6301667,
        size.width * 0.6815000,
        size.height * 0.6238333);
    path_5.cubicTo(
        size.width * 0.6820000,
        size.height * 0.6148333,
        size.width * 0.6825000,
        size.height * 0.6056667,
        size.width * 0.6830000,
        size.height * 0.5966667);
    path_5.cubicTo(
        size.width * 0.7035000,
        size.height * 0.5991667,
        size.width * 0.7261667,
        size.height * 0.5980000,
        size.width * 0.7430000,
        size.height * 0.6093333);
    path_5.cubicTo(
        size.width * 0.7640000,
        size.height * 0.6235000,
        size.width * 0.7690000,
        size.height * 0.6518333,
        size.width * 0.7711667,
        size.height * 0.6771667);
    path_5.cubicTo(
        size.width * 0.7761667,
        size.height * 0.7338333,
        size.width * 0.7756667,
        size.height * 0.7981667,
        size.width * 0.7713333,
        size.height * 0.8573333);
    path_5.cubicTo(
        size.width * 0.7620000,
        size.height * 0.8601667,
        size.width * 0.7520000,
        size.height * 0.8618333,
        size.width * 0.7421667,
        size.height * 0.8628333);
    path_5.cubicTo(
        size.width * 0.7178333,
        size.height * 0.8656667,
        size.width * 0.6905000,
        size.height * 0.8653333,
        size.width * 0.6663333,
        size.height * 0.8623333);
    path_5.lineTo(size.width * 0.6658333, size.height * 0.8621667);
    path_5.cubicTo(
        size.width * 0.6668333,
        size.height * 0.8585000,
        size.width * 0.6673333,
        size.height * 0.8548333,
        size.width * 0.6675000,
        size.height * 0.8511667);
    path_5.cubicTo(
        size.width * 0.6680000,
        size.height * 0.8341667,
        size.width * 0.6640000,
        size.height * 0.8170000,
        size.width * 0.6561667,
        size.height * 0.8020000);
    path_5.cubicTo(
        size.width * 0.6531667,
        size.height * 0.7963333,
        size.width * 0.6481667,
        size.height * 0.7901667,
        size.width * 0.6418333,
        size.height * 0.7908333);
    path_5.cubicTo(
        size.width * 0.6371667,
        size.height * 0.7913333,
        size.width * 0.6335000,
        size.height * 0.7955000,
        size.width * 0.6316667,
        size.height * 0.7998333);
    path_5.cubicTo(
        size.width * 0.6263333,
        size.height * 0.8116667,
        size.width * 0.6296667,
        size.height * 0.8268333,
        size.width * 0.6221667,
        size.height * 0.8375000);
    path_5.cubicTo(
        size.width * 0.6161667,
        size.height * 0.8461667,
        size.width * 0.6046667,
        size.height * 0.8491667,
        size.width * 0.5908333,
        size.height * 0.8485000);
    path_5.lineTo(size.width * 0.5908333, size.height * 0.8480000);
    path_5.cubicTo(
        size.width * 0.5913333,
        size.height * 0.8390000,
        size.width * 0.5913333,
        size.height * 0.8300000,
        size.width * 0.5910000,
        size.height * 0.8210000);
    path_5.cubicTo(
        size.width * 0.5898333,
        size.height * 0.7923333,
        size.width * 0.5845000,
        size.height * 0.7633333,
        size.width * 0.5756667,
        size.height * 0.7358333);
    path_5.lineTo(size.width * 0.5756667, size.height * 0.7350000);
    path_5.cubicTo(
        size.width * 0.5825000,
        size.height * 0.7350000,
        size.width * 0.5891667,
        size.height * 0.7348333,
        size.width * 0.5958333,
        size.height * 0.7346667);
    path_5.cubicTo(
        size.width * 0.5995000,
        size.height * 0.7345000,
        size.width * 0.6030000,
        size.height * 0.7345000,
        size.width * 0.6066667,
        size.height * 0.7343333);
    path_5.cubicTo(
        size.width * 0.6070000,
        size.height * 0.7343333,
        size.width * 0.6073333,
        size.height * 0.7343333,
        size.width * 0.6076667,
        size.height * 0.7343333);
    path_5.cubicTo(
        size.width * 0.6186667,
        size.height * 0.7338333,
        size.width * 0.6298333,
        size.height * 0.7331667,
        size.width * 0.6405000,
        size.height * 0.7301667);
    path_5.cubicTo(
        size.width * 0.6511667,
        size.height * 0.7271667,
        size.width * 0.6613333,
        size.height * 0.7215000,
        size.width * 0.6681667,
        size.height * 0.7128333);
    path_5.cubicTo(
        size.width * 0.6706667,
        size.height * 0.7095000,
        size.width * 0.6726667,
        size.height * 0.7060000,
        size.width * 0.6741667,
        size.height * 0.7023333);
    path_5.cubicTo(
        size.width * 0.6786667,
        size.height * 0.6911667,
        size.width * 0.6793333,
        size.height * 0.6783333,
        size.width * 0.6798333,
        size.height * 0.6660000);
    path_5.cubicTo(
        size.width * 0.6796667,
        size.height * 0.6613333,
        size.width * 0.6798333,
        size.height * 0.6566667,
        size.width * 0.6801667,
        size.height * 0.6520000);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.7713333, size.height * 0.8571667);
    path_6.cubicTo(
        size.width * 0.7705000,
        size.height * 0.8678333,
        size.width * 0.7696667,
        size.height * 0.8783333,
        size.width * 0.7686667,
        size.height * 0.8886667);
    path_6.lineTo(size.width * 0.7686667, size.height * 0.8893333);
    path_6.cubicTo(
        size.width * 0.7303333,
        size.height * 0.8901667,
        size.width * 0.6846667,
        size.height * 0.8893333,
        size.width * 0.6400000,
        size.height * 0.8893333);
    path_6.lineTo(size.width * 0.6398333, size.height * 0.8890000);
    path_6.cubicTo(
        size.width * 0.6446667,
        size.height * 0.8870000,
        size.width * 0.6496667,
        size.height * 0.8843333,
        size.width * 0.6548333,
        size.height * 0.8800000);
    path_6.cubicTo(
        size.width * 0.6601667,
        size.height * 0.8756667,
        size.width * 0.6636667,
        size.height * 0.8691667,
        size.width * 0.6655000,
        size.height * 0.8623333);
    path_6.lineTo(size.width * 0.6660000, size.height * 0.8625000);
    path_6.cubicTo(
        size.width * 0.6903333,
        size.height * 0.8655000,
        size.width * 0.7176667,
        size.height * 0.8658333,
        size.width * 0.7418333,
        size.height * 0.8630000);
    path_6.cubicTo(
        size.width * 0.7520000,
        size.height * 0.8616667,
        size.width * 0.7620000,
        size.height * 0.8600000,
        size.width * 0.7713333,
        size.height * 0.8571667);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.7070000, size.height * 0.1766667);
    path_7.cubicTo(
        size.width * 0.7080000,
        size.height * 0.1788333,
        size.width * 0.7083333,
        size.height * 0.1810000,
        size.width * 0.7083333,
        size.height * 0.1830000);
    path_7.lineTo(size.width * 0.7073333, size.height * 0.1830000);
    path_7.cubicTo(
        size.width * 0.7041667,
        size.height * 0.1783333,
        size.width * 0.6975000,
        size.height * 0.1810000,
        size.width * 0.6955000,
        size.height * 0.1756667);
    path_7.cubicTo(
        size.width * 0.6941667,
        size.height * 0.1718333,
        size.width * 0.6936667,
        size.height * 0.1688333,
        size.width * 0.6895000,
        size.height * 0.1671667);
    path_7.cubicTo(
        size.width * 0.6865000,
        size.height * 0.1660000,
        size.width * 0.6836667,
        size.height * 0.1663333,
        size.width * 0.6813333,
        size.height * 0.1635000);
    path_7.cubicTo(
        size.width * 0.6791667,
        size.height * 0.1608333,
        size.width * 0.6791667,
        size.height * 0.1566667,
        size.width * 0.6765000,
        size.height * 0.1545000);
    path_7.cubicTo(
        size.width * 0.6728333,
        size.height * 0.1515000,
        size.width * 0.6665000,
        size.height * 0.1535000,
        size.width * 0.6628333,
        size.height * 0.1510000);
    path_7.cubicTo(
        size.width * 0.6603333,
        size.height * 0.1493333,
        size.width * 0.6603333,
        size.height * 0.1455000,
        size.width * 0.6583333,
        size.height * 0.1433333);
    path_7.cubicTo(
        size.width * 0.6566667,
        size.height * 0.1415000,
        size.width * 0.6538333,
        size.height * 0.1411667,
        size.width * 0.6523333,
        size.height * 0.1398333);
    path_7.cubicTo(
        size.width * 0.6548333,
        size.height * 0.1391667,
        size.width * 0.6575000,
        size.height * 0.1393333,
        size.width * 0.6598333,
        size.height * 0.1400000);
    path_7.cubicTo(
        size.width * 0.6638333,
        size.height * 0.1411667,
        size.width * 0.6675000,
        size.height * 0.1435000,
        size.width * 0.6710000,
        size.height * 0.1458333);
    path_7.cubicTo(
        size.width * 0.6805000,
        size.height * 0.1521667,
        size.width * 0.6900000,
        size.height * 0.1585000,
        size.width * 0.6983333,
        size.height * 0.1661667);
    path_7.cubicTo(
        size.width * 0.7018333,
        size.height * 0.1691667,
        size.width * 0.7051667,
        size.height * 0.1725000,
        size.width * 0.7070000,
        size.height * 0.1766667);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.7073333, size.height * 0.1830000);
    path_8.lineTo(size.width * 0.7083333, size.height * 0.1830000);
    path_8.cubicTo(
        size.width * 0.7083333,
        size.height * 0.1870000,
        size.width * 0.7065000,
        size.height * 0.1905000,
        size.width * 0.7036667,
        size.height * 0.1926667);
    path_8.lineTo(size.width * 0.7031667, size.height * 0.1916667);
    path_8.cubicTo(
        size.width * 0.7028333,
        size.height * 0.1900000,
        size.width * 0.7011667,
        size.height * 0.1893333,
        size.width * 0.6993333,
        size.height * 0.1886667);
    path_8.cubicTo(
        size.width * 0.6961667,
        size.height * 0.1875000,
        size.width * 0.6951667,
        size.height * 0.1878333,
        size.width * 0.6935000,
        size.height * 0.1846667);
    path_8.cubicTo(
        size.width * 0.6916667,
        size.height * 0.1811667,
        size.width * 0.6905000,
        size.height * 0.1786667,
        size.width * 0.6863333,
        size.height * 0.1771667);
    path_8.cubicTo(
        size.width * 0.6821667,
        size.height * 0.1756667,
        size.width * 0.6791667,
        size.height * 0.1760000,
        size.width * 0.6766667,
        size.height * 0.1718333);
    path_8.cubicTo(
        size.width * 0.6746667,
        size.height * 0.1683333,
        size.width * 0.6746667,
        size.height * 0.1653333,
        size.width * 0.6706667,
        size.height * 0.1633333);
    path_8.cubicTo(
        size.width * 0.6673333,
        size.height * 0.1616667,
        size.width * 0.6630000,
        size.height * 0.1628333,
        size.width * 0.6600000,
        size.height * 0.1603333);
    path_8.cubicTo(
        size.width * 0.6568333,
        size.height * 0.1575000,
        size.width * 0.6565000,
        size.height * 0.1530000,
        size.width * 0.6546667,
        size.height * 0.1495000);
    path_8.cubicTo(
        size.width * 0.6526667,
        size.height * 0.1455000,
        size.width * 0.6498333,
        size.height * 0.1456667,
        size.width * 0.6463333,
        size.height * 0.1445000);
    path_8.cubicTo(
        size.width * 0.6468333,
        size.height * 0.1436667,
        size.width * 0.6473333,
        size.height * 0.1430000,
        size.width * 0.6481667,
        size.height * 0.1423333);
    path_8.cubicTo(
        size.width * 0.6495000,
        size.height * 0.1411667,
        size.width * 0.6508333,
        size.height * 0.1405000,
        size.width * 0.6525000,
        size.height * 0.1401667);
    path_8.cubicTo(
        size.width * 0.6540000,
        size.height * 0.1415000,
        size.width * 0.6568333,
        size.height * 0.1418333,
        size.width * 0.6585000,
        size.height * 0.1436667);
    path_8.cubicTo(
        size.width * 0.6605000,
        size.height * 0.1458333,
        size.width * 0.6605000,
        size.height * 0.1496667,
        size.width * 0.6630000,
        size.height * 0.1513333);
    path_8.cubicTo(
        size.width * 0.6666667,
        size.height * 0.1536667,
        size.width * 0.6728333,
        size.height * 0.1518333,
        size.width * 0.6766667,
        size.height * 0.1548333);
    path_8.cubicTo(
        size.width * 0.6793333,
        size.height * 0.1570000,
        size.width * 0.6793333,
        size.height * 0.1611667,
        size.width * 0.6815000,
        size.height * 0.1638333);
    path_8.cubicTo(
        size.width * 0.6838333,
        size.height * 0.1666667,
        size.width * 0.6866667,
        size.height * 0.1663333,
        size.width * 0.6896667,
        size.height * 0.1675000);
    path_8.cubicTo(
        size.width * 0.6940000,
        size.height * 0.1691667,
        size.width * 0.6943333,
        size.height * 0.1721667,
        size.width * 0.6956667,
        size.height * 0.1760000);
    path_8.cubicTo(
        size.width * 0.6975000,
        size.height * 0.1810000,
        size.width * 0.7041667,
        size.height * 0.1783333,
        size.width * 0.7073333,
        size.height * 0.1830000);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.7031667, size.height * 0.1915000);
    path_9.lineTo(size.width * 0.7036667, size.height * 0.1925000);
    path_9.cubicTo(
        size.width * 0.7020000,
        size.height * 0.1936667,
        size.width * 0.7000000,
        size.height * 0.1945000,
        size.width * 0.6976667,
        size.height * 0.1945000);
    path_9.cubicTo(
        size.width * 0.6943333,
        size.height * 0.1926667,
        size.width * 0.6910000,
        size.height * 0.1908333,
        size.width * 0.6885000,
        size.height * 0.1876667);
    path_9.cubicTo(
        size.width * 0.6865000,
        size.height * 0.1850000,
        size.width * 0.6851667,
        size.height * 0.1831667,
        size.width * 0.6820000,
        size.height * 0.1816667);
    path_9.cubicTo(
        size.width * 0.6793333,
        size.height * 0.1803333,
        size.width * 0.6766667,
        size.height * 0.1795000,
        size.width * 0.6741667,
        size.height * 0.1775000);
    path_9.cubicTo(
        size.width * 0.6718333,
        size.height * 0.1755000,
        size.width * 0.6710000,
        size.height * 0.1725000,
        size.width * 0.6688333,
        size.height * 0.1705000);
    path_9.cubicTo(
        size.width * 0.6665000,
        size.height * 0.1683333,
        size.width * 0.6626667,
        size.height * 0.1673333,
        size.width * 0.6600000,
        size.height * 0.1658333);
    path_9.cubicTo(
        size.width * 0.6560000,
        size.height * 0.1635000,
        size.width * 0.6546667,
        size.height * 0.1621667,
        size.width * 0.6521667,
        size.height * 0.1585000);
    path_9.cubicTo(
        size.width * 0.6505000,
        size.height * 0.1560000,
        size.width * 0.6476667,
        size.height * 0.1536667,
        size.width * 0.6446667,
        size.height * 0.1530000);
    path_9.lineTo(size.width * 0.6445000, size.height * 0.1530000);
    path_9.cubicTo(
        size.width * 0.6440000,
        size.height * 0.1498333,
        size.width * 0.6443333,
        size.height * 0.1466667,
        size.width * 0.6460000,
        size.height * 0.1440000);
    path_9.cubicTo(
        size.width * 0.6493333,
        size.height * 0.1451667,
        size.width * 0.6523333,
        size.height * 0.1451667,
        size.width * 0.6543333,
        size.height * 0.1490000);
    path_9.cubicTo(
        size.width * 0.6561667,
        size.height * 0.1525000,
        size.width * 0.6565000,
        size.height * 0.1570000,
        size.width * 0.6596667,
        size.height * 0.1598333);
    path_9.cubicTo(
        size.width * 0.6626667,
        size.height * 0.1623333,
        size.width * 0.6670000,
        size.height * 0.1613333,
        size.width * 0.6703333,
        size.height * 0.1628333);
    path_9.cubicTo(
        size.width * 0.6743333,
        size.height * 0.1648333,
        size.width * 0.6743333,
        size.height * 0.1678333,
        size.width * 0.6763333,
        size.height * 0.1713333);
    path_9.cubicTo(
        size.width * 0.6788333,
        size.height * 0.1755000,
        size.width * 0.6818333,
        size.height * 0.1751667,
        size.width * 0.6860000,
        size.height * 0.1766667);
    path_9.cubicTo(
        size.width * 0.6901667,
        size.height * 0.1781667,
        size.width * 0.6913333,
        size.height * 0.1806667,
        size.width * 0.6931667,
        size.height * 0.1841667);
    path_9.cubicTo(
        size.width * 0.6948333,
        size.height * 0.1873333,
        size.width * 0.6958333,
        size.height * 0.1870000,
        size.width * 0.6990000,
        size.height * 0.1881667);
    path_9.cubicTo(
        size.width * 0.7011667,
        size.height * 0.1891667,
        size.width * 0.7026667,
        size.height * 0.1898333,
        size.width * 0.7031667,
        size.height * 0.1915000);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.6976667, size.height * 0.1946667);
    path_10.cubicTo(
        size.width * 0.6958333,
        size.height * 0.1946667,
        size.width * 0.6938333,
        size.height * 0.1943333,
        size.width * 0.6918333,
        size.height * 0.1933333);
    path_10.cubicTo(
        size.width * 0.6801667,
        size.height * 0.1880000,
        size.width * 0.6691667,
        size.height * 0.1773333,
        size.width * 0.6588333,
        size.height * 0.1698333);
    path_10.cubicTo(
        size.width * 0.6541667,
        size.height * 0.1665000,
        size.width * 0.6493333,
        size.height * 0.1630000,
        size.width * 0.6465000,
        size.height * 0.1578333);
    path_10.cubicTo(
        size.width * 0.6456667,
        size.height * 0.1563333,
        size.width * 0.6451667,
        size.height * 0.1546667,
        size.width * 0.6448333,
        size.height * 0.1530000);
    path_10.lineTo(size.width * 0.6450000, size.height * 0.1530000);
    path_10.cubicTo(
        size.width * 0.6480000,
        size.height * 0.1536667,
        size.width * 0.6508333,
        size.height * 0.1560000,
        size.width * 0.6525000,
        size.height * 0.1585000);
    path_10.cubicTo(
        size.width * 0.6548333,
        size.height * 0.1621667,
        size.width * 0.6561667,
        size.height * 0.1635000,
        size.width * 0.6603333,
        size.height * 0.1658333);
    path_10.cubicTo(
        size.width * 0.6630000,
        size.height * 0.1673333,
        size.width * 0.6670000,
        size.height * 0.1683333,
        size.width * 0.6691667,
        size.height * 0.1705000);
    path_10.cubicTo(
        size.width * 0.6713333,
        size.height * 0.1725000,
        size.width * 0.6723333,
        size.height * 0.1755000,
        size.width * 0.6745000,
        size.height * 0.1775000);
    path_10.cubicTo(
        size.width * 0.6768333,
        size.height * 0.1795000,
        size.width * 0.6795000,
        size.height * 0.1803333,
        size.width * 0.6823333,
        size.height * 0.1816667);
    path_10.cubicTo(
        size.width * 0.6855000,
        size.height * 0.1831667,
        size.width * 0.6868333,
        size.height * 0.1850000,
        size.width * 0.6888333,
        size.height * 0.1876667);
    path_10.cubicTo(
        size.width * 0.6910000,
        size.height * 0.1910000,
        size.width * 0.6943333,
        size.height * 0.1928333,
        size.width * 0.6976667,
        size.height * 0.1946667);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.6855000, size.height * 0.2816667);
    path_11.lineTo(size.width * 0.6863333, size.height * 0.2818333);
    path_11.cubicTo(
        size.width * 0.6858333,
        size.height * 0.2868333,
        size.width * 0.6850000,
        size.height * 0.2916667,
        size.width * 0.6843333,
        size.height * 0.2966667);
    path_11.cubicTo(
        size.width * 0.6810000,
        size.height * 0.3170000,
        size.width * 0.6705000,
        size.height * 0.3355000,
        size.width * 0.6475000,
        size.height * 0.3355000);
    path_11.cubicTo(
        size.width * 0.6321667,
        size.height * 0.3355000,
        size.width * 0.6250000,
        size.height * 0.3275000,
        size.width * 0.6195000,
        size.height * 0.3193333);
    path_11.cubicTo(
        size.width * 0.6140000,
        size.height * 0.3111667,
        size.width * 0.6113333,
        size.height * 0.3028333,
        size.width * 0.6095000,
        size.height * 0.2930000);
    path_11.cubicTo(
        size.width * 0.6055000,
        size.height * 0.2718333,
        size.width * 0.6065000,
        size.height * 0.2501667,
        size.width * 0.6063333,
        size.height * 0.2285000);
    path_11.lineTo(size.width * 0.6070000, size.height * 0.2285000);
    path_11.cubicTo(
        size.width * 0.6103333,
        size.height * 0.2248333,
        size.width * 0.6136667,
        size.height * 0.2210000,
        size.width * 0.6180000,
        size.height * 0.2188333);
    path_11.cubicTo(
        size.width * 0.6223333,
        size.height * 0.2165000,
        size.width * 0.6280000,
        size.height * 0.2160000,
        size.width * 0.6321667,
        size.height * 0.2186667);
    path_11.cubicTo(
        size.width * 0.6378333,
        size.height * 0.2225000,
        size.width * 0.6385000,
        size.height * 0.2305000,
        size.width * 0.6385000,
        size.height * 0.2373333);
    path_11.cubicTo(
        size.width * 0.6385000,
        size.height * 0.2518333,
        size.width * 0.6386667,
        size.height * 0.2663333,
        size.width * 0.6386667,
        size.height * 0.2810000);
    path_11.cubicTo(
        size.width * 0.6386667,
        size.height * 0.2890000,
        size.width * 0.6391667,
        size.height * 0.2980000,
        size.width * 0.6453333,
        size.height * 0.3031667);
    path_11.cubicTo(
        size.width * 0.6505000,
        size.height * 0.3075000,
        size.width * 0.6581667,
        size.height * 0.3075000,
        size.width * 0.6643333,
        size.height * 0.3050000);
    path_11.cubicTo(
        size.width * 0.6703333,
        size.height * 0.3023333,
        size.width * 0.6821667,
        size.height * 0.2895000,
        size.width * 0.6855000,
        size.height * 0.2816667);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.5645000, size.height * 0.7070000);
    path_12.cubicTo(
        size.width * 0.5613333,
        size.height * 0.6998333,
        size.width * 0.5580000,
        size.height * 0.6926667,
        size.width * 0.5545000,
        size.height * 0.6858333);
    path_12.cubicTo(
        size.width * 0.5485000,
        size.height * 0.6743333,
        size.width * 0.5415000,
        size.height * 0.6630000,
        size.width * 0.5338333,
        size.height * 0.6523333);
    path_12.lineTo(size.width * 0.5338333, size.height * 0.6516667);
    path_12.cubicTo(
        size.width * 0.5335000,
        size.height * 0.6516667,
        size.width * 0.5331667,
        size.height * 0.6516667,
        size.width * 0.5328333,
        size.height * 0.6518333);
    path_12.lineTo(size.width * 0.5326667, size.height * 0.6508333);
    path_12.cubicTo(
        size.width * 0.5078333,
        size.height * 0.6166667,
        size.width * 0.4756667,
        size.height * 0.5870000,
        size.width * 0.4403333,
        size.height * 0.5651667);
    path_12.cubicTo(
        size.width * 0.4701667,
        size.height * 0.5455000,
        size.width * 0.5051667,
        size.height * 0.5223333,
        size.width * 0.5273333,
        size.height * 0.4936667);
    path_12.cubicTo(
        size.width * 0.5286667,
        size.height * 0.4920000,
        size.width * 0.5300000,
        size.height * 0.4901667,
        size.width * 0.5311667,
        size.height * 0.4885000);
    path_12.cubicTo(
        size.width * 0.5481667,
        size.height * 0.4643333,
        size.width * 0.5578333,
        size.height * 0.4353333,
        size.width * 0.5616667,
        size.height * 0.4061667);
    path_12.cubicTo(
        size.width * 0.5638333,
        size.height * 0.3898333,
        size.width * 0.5645000,
        size.height * 0.3726667,
        size.width * 0.5640000,
        size.height * 0.3555000);
    path_12.lineTo(size.width * 0.5641667, size.height * 0.3555000);
    path_12.cubicTo(
        size.width * 0.5890000,
        size.height * 0.3548333,
        size.width * 0.6205000,
        size.height * 0.3570000,
        size.width * 0.6328333,
        size.height * 0.3785000);
    path_12.cubicTo(
        size.width * 0.6393333,
        size.height * 0.3900000,
        size.width * 0.6388333,
        size.height * 0.4040000,
        size.width * 0.6381667,
        size.height * 0.4171667);
    path_12.cubicTo(
        size.width * 0.6365000,
        size.height * 0.4513333,
        size.width * 0.6346667,
        size.height * 0.4855000,
        size.width * 0.6330000,
        size.height * 0.5196667);
    path_12.cubicTo(
        size.width * 0.6318333,
        size.height * 0.5421667,
        size.width * 0.6318333,
        size.height * 0.5676667,
        size.width * 0.6483333,
        size.height * 0.5831667);
    path_12.cubicTo(
        size.width * 0.6576667,
        size.height * 0.5920000,
        size.width * 0.6700000,
        size.height * 0.5951667,
        size.width * 0.6830000,
        size.height * 0.5968333);
    path_12.cubicTo(
        size.width * 0.6825000,
        size.height * 0.6060000,
        size.width * 0.6820000,
        size.height * 0.6150000,
        size.width * 0.6815000,
        size.height * 0.6240000);
    path_12.lineTo(size.width * 0.6793333, size.height * 0.6238333);
    path_12.cubicTo(
        size.width * 0.6535000,
        size.height * 0.6265000,
        size.width * 0.6291667,
        size.height * 0.6401667,
        size.width * 0.6135000,
        size.height * 0.6608333);
    path_12.cubicTo(
        size.width * 0.6008333,
        size.height * 0.6776667,
        size.width * 0.5940000,
        size.height * 0.6986667,
        size.width * 0.5943333,
        size.height * 0.7196667);
    path_12.cubicTo(
        size.width * 0.5860000,
        size.height * 0.7195000,
        size.width * 0.5776667,
        size.height * 0.7193333,
        size.width * 0.5695000,
        size.height * 0.7191667);
    path_12.cubicTo(
        size.width * 0.5678333,
        size.height * 0.7150000,
        size.width * 0.5663333,
        size.height * 0.7110000,
        size.width * 0.5645000,
        size.height * 0.7070000);
    path_12.close();
    path_12.moveTo(size.width * 0.5696667, size.height * 0.5675000);
    path_12.cubicTo(
        size.width * 0.5696667,
        size.height * 0.5673333,
        size.width * 0.5696667,
        size.height * 0.5671667,
        size.width * 0.5696667,
        size.height * 0.5670000);
    path_12.cubicTo(
        size.width * 0.5695000,
        size.height * 0.5543333,
        size.width * 0.5676667,
        size.height * 0.5415000,
        size.width * 0.5641667,
        size.height * 0.5291667);
    path_12.cubicTo(
        size.width * 0.5628333,
        size.height * 0.5245000,
        size.width * 0.5601667,
        size.height * 0.5191667,
        size.width * 0.5551667,
        size.height * 0.5190000);
    path_12.cubicTo(
        size.width * 0.5513333,
        size.height * 0.5190000,
        size.width * 0.5485000,
        size.height * 0.5220000,
        size.width * 0.5465000,
        size.height * 0.5250000);
    path_12.cubicTo(
        size.width * 0.5418333,
        size.height * 0.5321667,
        size.width * 0.5390000,
        size.height * 0.5403333,
        size.width * 0.5385000,
        size.height * 0.5486667);
    path_12.cubicTo(
        size.width * 0.5385000,
        size.height * 0.5413333,
        size.width * 0.5376667,
        size.height * 0.5338333,
        size.width * 0.5358333,
        size.height * 0.5268333);
    path_12.cubicTo(
        size.width * 0.5351667,
        size.height * 0.5245000,
        size.width * 0.5343333,
        size.height * 0.5218333,
        size.width * 0.5321667,
        size.height * 0.5206667);
    path_12.cubicTo(
        size.width * 0.5298333,
        size.height * 0.5193333,
        size.width * 0.5268333,
        size.height * 0.5200000,
        size.width * 0.5246667,
        size.height * 0.5213333);
    path_12.cubicTo(
        size.width * 0.5225000,
        size.height * 0.5228333,
        size.width * 0.5211667,
        size.height * 0.5250000,
        size.width * 0.5198333,
        size.height * 0.5271667);
    path_12.cubicTo(
        size.width * 0.5131667,
        size.height * 0.5386667,
        size.width * 0.5093333,
        size.height * 0.5516667,
        size.width * 0.5086667,
        size.height * 0.5646667);
    path_12.cubicTo(
        size.width * 0.5086667,
        size.height * 0.5651667,
        size.width * 0.5086667,
        size.height * 0.5656667,
        size.width * 0.5086667,
        size.height * 0.5660000);
    path_12.lineTo(size.width * 0.5085000, size.height * 0.5660000);
    path_12.cubicTo(
        size.width * 0.5081667,
        size.height * 0.5806667,
        size.width * 0.5153333,
        size.height * 0.6101667,
        size.width * 0.5381667,
        size.height * 0.6110000);
    path_12.cubicTo(
        size.width * 0.5615000,
        size.height * 0.6120000,
        size.width * 0.5686667,
        size.height * 0.5848333,
        size.width * 0.5696667,
        size.height * 0.5675000);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6793333, size.height * 0.6236667);
    path_13.lineTo(size.width * 0.6815000, size.height * 0.6238333);
    path_13.cubicTo(
        size.width * 0.6811667,
        size.height * 0.6303333,
        size.width * 0.6808333,
        size.height * 0.6366667,
        size.width * 0.6805000,
        size.height * 0.6428333);
    path_13.lineTo(size.width * 0.6795000, size.height * 0.6428333);
    path_13.cubicTo(
        size.width * 0.6580000,
        size.height * 0.6453333,
        size.width * 0.6376667,
        size.height * 0.6565000,
        size.width * 0.6241667,
        size.height * 0.6735000);
    path_13.cubicTo(
        size.width * 0.6136667,
        size.height * 0.6866667,
        size.width * 0.6073333,
        size.height * 0.7031667,
        size.width * 0.6061667,
        size.height * 0.7198333);
    path_13.cubicTo(
        size.width * 0.6025000,
        size.height * 0.7198333,
        size.width * 0.5990000,
        size.height * 0.7198333,
        size.width * 0.5953333,
        size.height * 0.7196667);
    path_13.cubicTo(
        size.width * 0.5950000,
        size.height * 0.7196667,
        size.width * 0.5946667,
        size.height * 0.7196667,
        size.width * 0.5943333,
        size.height * 0.7196667);
    path_13.cubicTo(
        size.width * 0.5940000,
        size.height * 0.6986667,
        size.width * 0.6008333,
        size.height * 0.6775000,
        size.width * 0.6135000,
        size.height * 0.6608333);
    path_13.cubicTo(
        size.width * 0.6291667,
        size.height * 0.6400000,
        size.width * 0.6536667,
        size.height * 0.6263333,
        size.width * 0.6793333,
        size.height * 0.6236667);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.6795000, size.height * 0.6426667);
    path_14.lineTo(size.width * 0.6805000, size.height * 0.6426667);
    path_14.cubicTo(
        size.width * 0.6803333,
        size.height * 0.6458333,
        size.width * 0.6801667,
        size.height * 0.6488333,
        size.width * 0.6801667,
        size.height * 0.6518333);
    path_14.cubicTo(
        size.width * 0.6613333,
        size.height * 0.6546667,
        size.width * 0.6435000,
        size.height * 0.6646667,
        size.width * 0.6313333,
        size.height * 0.6793333);
    path_14.cubicTo(
        size.width * 0.6218333,
        size.height * 0.6906667,
        size.width * 0.6156667,
        size.height * 0.7048333,
        size.width * 0.6138333,
        size.height * 0.7195000);
    path_14.cubicTo(
        size.width * 0.6113333,
        size.height * 0.7195000,
        size.width * 0.6088333,
        size.height * 0.7196667,
        size.width * 0.6063333,
        size.height * 0.7196667);
    path_14.cubicTo(
        size.width * 0.6075000,
        size.height * 0.7028333,
        size.width * 0.6138333,
        size.height * 0.6865000,
        size.width * 0.6243333,
        size.height * 0.6733333);
    path_14.cubicTo(
        size.width * 0.6376667,
        size.height * 0.6565000,
        size.width * 0.6580000,
        size.height * 0.6451667,
        size.width * 0.6795000,
        size.height * 0.6426667);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.6801667, size.height * 0.6520000);
    path_15.cubicTo(
        size.width * 0.6800000,
        size.height * 0.6568333,
        size.width * 0.6798333,
        size.height * 0.6615000,
        size.width * 0.6795000,
        size.height * 0.6660000);
    path_15.cubicTo(
        size.width * 0.6790000,
        size.height * 0.6781667,
        size.width * 0.6783333,
        size.height * 0.6911667,
        size.width * 0.6738333,
        size.height * 0.7023333);
    path_15.lineTo(size.width * 0.6725000, size.height * 0.7018333);
    path_15.cubicTo(
        size.width * 0.6568333,
        size.height * 0.7156667,
        size.width * 0.6351667,
        size.height * 0.7191667,
        size.width * 0.6138333,
        size.height * 0.7196667);
    path_15.cubicTo(
        size.width * 0.6158333,
        size.height * 0.7050000,
        size.width * 0.6220000,
        size.height * 0.6908333,
        size.width * 0.6313333,
        size.height * 0.6795000);
    path_15.cubicTo(
        size.width * 0.6435000,
        size.height * 0.6646667,
        size.width * 0.6611667,
        size.height * 0.6548333,
        size.width * 0.6801667,
        size.height * 0.6520000);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.6136667, size.height * 0.7196667);
    path_16.cubicTo(
        size.width * 0.6351667,
        size.height * 0.7191667,
        size.width * 0.6566667,
        size.height * 0.7158333,
        size.width * 0.6723333,
        size.height * 0.7018333);
    path_16.lineTo(size.width * 0.6736667, size.height * 0.7023333);
    path_16.cubicTo(
        size.width * 0.6721667,
        size.height * 0.7060000,
        size.width * 0.6701667,
        size.height * 0.7095000,
        size.width * 0.6676667,
        size.height * 0.7128333);
    path_16.cubicTo(
        size.width * 0.6610000,
        size.height * 0.7216667,
        size.width * 0.6506667,
        size.height * 0.7271667,
        size.width * 0.6400000,
        size.height * 0.7301667);
    path_16.cubicTo(
        size.width * 0.6293333,
        size.height * 0.7331667,
        size.width * 0.6181667,
        size.height * 0.7338333,
        size.width * 0.6071667,
        size.height * 0.7343333);
    path_16.cubicTo(
        size.width * 0.6068333,
        size.height * 0.7343333,
        size.width * 0.6065000,
        size.height * 0.7343333,
        size.width * 0.6061667,
        size.height * 0.7343333);
    path_16.lineTo(size.width * 0.6061667, size.height * 0.7340000);
    path_16.cubicTo(
        size.width * 0.6056667,
        size.height * 0.7291667,
        size.width * 0.6055000,
        size.height * 0.7243333,
        size.width * 0.6058333,
        size.height * 0.7196667);
    path_16.cubicTo(
        size.width * 0.6086667,
        size.height * 0.7196667,
        size.width * 0.6111667,
        size.height * 0.7196667,
        size.width * 0.6136667,
        size.height * 0.7196667);
    path_16.close();

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_16, paint_16_fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.6560000, size.height * 0.8021667);
    path_17.cubicTo(
        size.width * 0.6640000,
        size.height * 0.8171667,
        size.width * 0.6678333,
        size.height * 0.8343333,
        size.width * 0.6673333,
        size.height * 0.8513333);
    path_17.cubicTo(
        size.width * 0.6671667,
        size.height * 0.8550000,
        size.width * 0.6666667,
        size.height * 0.8586667,
        size.width * 0.6656667,
        size.height * 0.8623333);
    path_17.cubicTo(
        size.width * 0.6638333,
        size.height * 0.8691667,
        size.width * 0.6603333,
        size.height * 0.8756667,
        size.width * 0.6550000,
        size.height * 0.8800000);
    path_17.cubicTo(
        size.width * 0.6498333,
        size.height * 0.8843333,
        size.width * 0.6448333,
        size.height * 0.8871667,
        size.width * 0.6400000,
        size.height * 0.8890000);
    path_17.cubicTo(
        size.width * 0.6348333,
        size.height * 0.8910000,
        size.width * 0.6300000,
        size.height * 0.8920000,
        size.width * 0.6255000,
        size.height * 0.8926667);
    path_17.cubicTo(
        size.width * 0.6123333,
        size.height * 0.8946667,
        size.width * 0.6001667,
        size.height * 0.8958333,
        size.width * 0.5878333,
        size.height * 0.8961667);
    path_17.lineTo(size.width * 0.5878333, size.height * 0.8961667);
    path_17.cubicTo(
        size.width * 0.6041667,
        size.height * 0.8941667,
        size.width * 0.6135000,
        size.height * 0.8930000,
        size.width * 0.6210000,
        size.height * 0.8888333);
    path_17.cubicTo(
        size.width * 0.6265000,
        size.height * 0.8858333,
        size.width * 0.6338333,
        size.height * 0.8820000,
        size.width * 0.6318333,
        size.height * 0.8705000);
    path_17.cubicTo(
        size.width * 0.6293333,
        size.height * 0.8560000,
        size.width * 0.5928333,
        size.height * 0.8543333,
        size.width * 0.5723333,
        size.height * 0.8523333);
    path_17.lineTo(size.width * 0.5713333, size.height * 0.8521667);
    path_17.cubicTo(
        size.width * 0.5716667,
        size.height * 0.8501667,
        size.width * 0.5718333,
        size.height * 0.8481667,
        size.width * 0.5720000,
        size.height * 0.8461667);
    path_17.lineTo(size.width * 0.5726667, size.height * 0.8461667);
    path_17.cubicTo(
        size.width * 0.5788333,
        size.height * 0.8475000,
        size.width * 0.5850000,
        size.height * 0.8485000,
        size.width * 0.5906667,
        size.height * 0.8486667);
    path_17.cubicTo(
        size.width * 0.6045000,
        size.height * 0.8493333,
        size.width * 0.6160000,
        size.height * 0.8463333,
        size.width * 0.6220000,
        size.height * 0.8376667);
    path_17.cubicTo(
        size.width * 0.6295000,
        size.height * 0.8270000,
        size.width * 0.6261667,
        size.height * 0.8120000,
        size.width * 0.6315000,
        size.height * 0.8000000);
    path_17.cubicTo(
        size.width * 0.6333333,
        size.height * 0.7956667,
        size.width * 0.6370000,
        size.height * 0.7915000,
        size.width * 0.6416667,
        size.height * 0.7910000);
    path_17.cubicTo(
        size.width * 0.6480000,
        size.height * 0.7903333,
        size.width * 0.6530000,
        size.height * 0.7965000,
        size.width * 0.6560000,
        size.height * 0.8021667);
    path_17.close();

    Paint paint_17_fill = Paint()..style = PaintingStyle.fill;
    paint_17_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_17, paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.6318333, size.height * 0.8703333);
    path_18.cubicTo(
        size.width * 0.6338333,
        size.height * 0.8818333,
        size.width * 0.6265000,
        size.height * 0.8856667,
        size.width * 0.6210000,
        size.height * 0.8886667);
    path_18.cubicTo(
        size.width * 0.6135000,
        size.height * 0.8928333,
        size.width * 0.6041667,
        size.height * 0.8941667,
        size.width * 0.5878333,
        size.height * 0.8960000);
    path_18.lineTo(size.width * 0.5878333, size.height * 0.8960000);
    path_18.cubicTo(
        size.width * 0.5731667,
        size.height * 0.8963333,
        size.width * 0.5585000,
        size.height * 0.8958333,
        size.width * 0.5426667,
        size.height * 0.8950000);
    path_18.lineTo(size.width * 0.5425000, size.height * 0.8946667);
    path_18.cubicTo(
        size.width * 0.5473333,
        size.height * 0.8933333,
        size.width * 0.5518333,
        size.height * 0.8913333,
        size.width * 0.5556667,
        size.height * 0.8881667);
    path_18.cubicTo(
        size.width * 0.5638333,
        size.height * 0.8815000,
        size.width * 0.5676667,
        size.height * 0.8710000,
        size.width * 0.5696667,
        size.height * 0.8608333);
    path_18.cubicTo(
        size.width * 0.5703333,
        size.height * 0.8578333,
        size.width * 0.5708333,
        size.height * 0.8550000,
        size.width * 0.5711667,
        size.height * 0.8521667);
    path_18.lineTo(size.width * 0.5721667, size.height * 0.8523333);
    path_18.cubicTo(
        size.width * 0.5930000,
        size.height * 0.8541667,
        size.width * 0.6293333,
        size.height * 0.8558333,
        size.width * 0.6318333,
        size.height * 0.8703333);
    path_18.close();

    Paint paint_18_fill = Paint()..style = PaintingStyle.fill;
    paint_18_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_18, paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.6065000, size.height * 0.7340000);
    path_19.lineTo(size.width * 0.6065000, size.height * 0.7343333);
    path_19.cubicTo(
        size.width * 0.6030000,
        size.height * 0.7345000,
        size.width * 0.5993333,
        size.height * 0.7346667,
        size.width * 0.5956667,
        size.height * 0.7346667);
    path_19.lineTo(size.width * 0.5956667, size.height * 0.7338333);
    path_19.cubicTo(
        size.width * 0.5948333,
        size.height * 0.7290000,
        size.width * 0.5943333,
        size.height * 0.7241667,
        size.width * 0.5943333,
        size.height * 0.7193333);
    path_19.cubicTo(
        size.width * 0.5946667,
        size.height * 0.7193333,
        size.width * 0.5950000,
        size.height * 0.7193333,
        size.width * 0.5953333,
        size.height * 0.7193333);
    path_19.cubicTo(
        size.width * 0.5988333,
        size.height * 0.7193333,
        size.width * 0.6025000,
        size.height * 0.7195000,
        size.width * 0.6061667,
        size.height * 0.7195000);
    path_19.cubicTo(
        size.width * 0.6058333,
        size.height * 0.7245000,
        size.width * 0.6058333,
        size.height * 0.7293333,
        size.width * 0.6065000,
        size.height * 0.7340000);
    path_19.close();

    Paint paint_19_fill = Paint()..style = PaintingStyle.fill;
    paint_19_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_19, paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.5956667, size.height * 0.7340000);
    path_20.lineTo(size.width * 0.5956667, size.height * 0.7348333);
    path_20.cubicTo(
        size.width * 0.5890000,
        size.height * 0.7350000,
        size.width * 0.5821667,
        size.height * 0.7351667,
        size.width * 0.5755000,
        size.height * 0.7351667);
    path_20.cubicTo(
        size.width * 0.5753333,
        size.height * 0.7351667,
        size.width * 0.5751667,
        size.height * 0.7351667,
        size.width * 0.5748333,
        size.height * 0.7351667);
    path_20.lineTo(size.width * 0.5748333, size.height * 0.7340000);
    path_20.cubicTo(
        size.width * 0.5731667,
        size.height * 0.7290000,
        size.width * 0.5713333,
        size.height * 0.7240000,
        size.width * 0.5695000,
        size.height * 0.7190000);
    path_20.cubicTo(
        size.width * 0.5778333,
        size.height * 0.7191667,
        size.width * 0.5861667,
        size.height * 0.7193333,
        size.width * 0.5943333,
        size.height * 0.7195000);
    path_20.cubicTo(
        size.width * 0.5943333,
        size.height * 0.7243333,
        size.width * 0.5948333,
        size.height * 0.7291667,
        size.width * 0.5956667,
        size.height * 0.7340000);
    path_20.close();

    Paint paint_20_fill = Paint()..style = PaintingStyle.fill;
    paint_20_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_20, paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.5723333, size.height * 0.8308333);
    path_21.cubicTo(
        size.width * 0.5723333,
        size.height * 0.8301667,
        size.width * 0.5721667,
        size.height * 0.8295000,
        size.width * 0.5721667,
        size.height * 0.8288333);
    path_21.cubicTo(
        size.width * 0.5823333,
        size.height * 0.8266667,
        size.width * 0.5880000,
        size.height * 0.8241667,
        size.width * 0.5880000,
        size.height * 0.8215000);
    path_21.lineTo(size.width * 0.5906667, size.height * 0.8213333);
    path_21.cubicTo(
        size.width * 0.5910000,
        size.height * 0.8303333,
        size.width * 0.5910000,
        size.height * 0.8393333,
        size.width * 0.5905000,
        size.height * 0.8483333);
    path_21.lineTo(size.width * 0.5905000, size.height * 0.8488333);
    path_21.cubicTo(
        size.width * 0.5848333,
        size.height * 0.8485000,
        size.width * 0.5788333,
        size.height * 0.8476667,
        size.width * 0.5725000,
        size.height * 0.8463333);
    path_21.lineTo(size.width * 0.5718333, size.height * 0.8463333);
    path_21.cubicTo(
        size.width * 0.5725000,
        size.height * 0.8408333,
        size.width * 0.5726667,
        size.height * 0.8358333,
        size.width * 0.5723333,
        size.height * 0.8308333);
    path_21.close();

    Paint paint_21_fill = Paint()..style = PaintingStyle.fill;
    paint_21_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_21, paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.5908333, size.height * 0.8211667);
    path_22.lineTo(size.width * 0.5881667, size.height * 0.8213333);
    path_22.cubicTo(
        size.width * 0.5881667,
        size.height * 0.8185000,
        size.width * 0.5816667,
        size.height * 0.8158333,
        size.width * 0.5701667,
        size.height * 0.8135000);
    path_22.lineTo(size.width * 0.5701667, size.height * 0.8135000);
    path_22.cubicTo(
        size.width * 0.5698333,
        size.height * 0.8116667,
        size.width * 0.5693333,
        size.height * 0.8100000,
        size.width * 0.5690000,
        size.height * 0.8081667);
    path_22.cubicTo(
        size.width * 0.5668333,
        size.height * 0.7991667,
        size.width * 0.5620000,
        size.height * 0.7921667,
        size.width * 0.5565000,
        size.height * 0.7910000);
    path_22.cubicTo(
        size.width * 0.5518333,
        size.height * 0.7900000,
        size.width * 0.5470000,
        size.height * 0.7930000,
        size.width * 0.5443333,
        size.height * 0.7970000);
    path_22.cubicTo(
        size.width * 0.5420000,
        size.height * 0.8006667,
        size.width * 0.5411667,
        size.height * 0.8050000,
        size.width * 0.5405000,
        size.height * 0.8093333);
    path_22.lineTo(size.width * 0.5401667, size.height * 0.8093333);
    path_22.cubicTo(
        size.width * 0.5361667,
        size.height * 0.8090000,
        size.width * 0.5318333,
        size.height * 0.8085000,
        size.width * 0.5273333,
        size.height * 0.8081667);
    path_22.cubicTo(
        size.width * 0.5268333,
        size.height * 0.7831667,
        size.width * 0.5236667,
        size.height * 0.7575000,
        size.width * 0.5181667,
        size.height * 0.7350000);
    path_22.lineTo(size.width * 0.5181667, size.height * 0.7345000);
    path_22.cubicTo(
        size.width * 0.5371667,
        size.height * 0.7350000,
        size.width * 0.5561667,
        size.height * 0.7353333,
        size.width * 0.5750000,
        size.height * 0.7351667);
    path_22.cubicTo(
        size.width * 0.5751667,
        size.height * 0.7351667,
        size.width * 0.5753333,
        size.height * 0.7351667,
        size.width * 0.5756667,
        size.height * 0.7351667);
    path_22.lineTo(size.width * 0.5756667, size.height * 0.7360000);
    path_22.cubicTo(
        size.width * 0.5843333,
        size.height * 0.7635000,
        size.width * 0.5896667,
        size.height * 0.7925000,
        size.width * 0.5908333,
        size.height * 0.8211667);
    path_22.close();

    Paint paint_22_fill = Paint()..style = PaintingStyle.fill;
    paint_22_fill.color = Color(0xffF9BABA).withOpacity(1.0);
    canvas.drawPath(path_22, paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.5880000, size.height * 0.8213333);
    path_23.cubicTo(
        size.width * 0.5880000,
        size.height * 0.8240000,
        size.width * 0.5821667,
        size.height * 0.8265000,
        size.width * 0.5721667,
        size.height * 0.8286667);
    path_23.cubicTo(
        size.width * 0.5718333,
        size.height * 0.8236667,
        size.width * 0.5710000,
        size.height * 0.8186667,
        size.width * 0.5700000,
        size.height * 0.8135000);
    path_23.lineTo(size.width * 0.5700000, size.height * 0.8135000);
    path_23.cubicTo(
        size.width * 0.5815000,
        size.height * 0.8156667,
        size.width * 0.5880000,
        size.height * 0.8183333,
        size.width * 0.5880000,
        size.height * 0.8213333);
    path_23.close();

    Paint paint_23_fill = Paint()..style = PaintingStyle.fill;
    paint_23_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_23, paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.5751667, size.height * 0.3023333);
    path_24.cubicTo(
        size.width * 0.5760000,
        size.height * 0.3128333,
        size.width * 0.5715000,
        size.height * 0.3153333,
        size.width * 0.5655000,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.5650000,
        size.height * 0.3153333,
        size.width * 0.5635000,
        size.height * 0.3153333,
        size.width * 0.5606667,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.5568333,
        size.height * 0.3153333,
        size.width * 0.5510000,
        size.height * 0.3153333,
        size.width * 0.5435000,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.5315000,
        size.height * 0.3153333,
        size.width * 0.5151667,
        size.height * 0.3153333,
        size.width * 0.4968333,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.4345000,
        size.height * 0.3153333,
        size.width * 0.3483333,
        size.height * 0.3153333,
        size.width * 0.3203333,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.3145000,
        size.height * 0.3153333,
        size.width * 0.3111667,
        size.height * 0.3153333,
        size.width * 0.3111667,
        size.height * 0.3153333);
    path_24.cubicTo(
        size.width * 0.3111667,
        size.height * 0.3153333,
        size.width * 0.3003333,
        size.height * 0.3146667,
        size.width * 0.3015000,
        size.height * 0.3026667);
    path_24.cubicTo(
        size.width * 0.3018333,
        size.height * 0.2996667,
        size.width * 0.3025000,
        size.height * 0.2975000,
        size.width * 0.3033333,
        size.height * 0.2958333);
    path_24.lineTo(size.width * 0.3043333, size.height * 0.2960000);
    path_24.cubicTo(
        size.width * 0.3126667,
        size.height * 0.3068333,
        size.width * 0.3261667,
        size.height * 0.3048333,
        size.width * 0.3366667,
        size.height * 0.3035000);
    path_24.cubicTo(
        size.width * 0.3451667,
        size.height * 0.3025000,
        size.width * 0.3715000,
        size.height * 0.3091667,
        size.width * 0.3948333,
        size.height * 0.3038333);
    path_24.cubicTo(
        size.width * 0.4370000,
        size.height * 0.2941667,
        size.width * 0.4493333,
        size.height * 0.3063333,
        size.width * 0.4926667,
        size.height * 0.3060000);
    path_24.cubicTo(
        size.width * 0.5216667,
        size.height * 0.3056667,
        size.width * 0.5466667,
        size.height * 0.2973333,
        size.width * 0.5751667,
        size.height * 0.3023333);
    path_24.close();

    Paint paint_24_fill = Paint()..style = PaintingStyle.fill;
    paint_24_fill.color = Color(0xffF9BABA).withOpacity(1.0);
    canvas.drawPath(path_24, paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.5748333, size.height * 0.7340000);
    path_25.lineTo(size.width * 0.5748333, size.height * 0.7351667);
    path_25.cubicTo(
        size.width * 0.5560000,
        size.height * 0.7353333,
        size.width * 0.5370000,
        size.height * 0.7350000,
        size.width * 0.5180000,
        size.height * 0.7345000);
    path_25.cubicTo(
        size.width * 0.5128333,
        size.height * 0.7343333,
        size.width * 0.5076667,
        size.height * 0.7341667,
        size.width * 0.5023333,
        size.height * 0.7340000);
    path_25.cubicTo(
        size.width * 0.4901667,
        size.height * 0.7336667,
        size.width * 0.4780000,
        size.height * 0.7331667,
        size.width * 0.4658333,
        size.height * 0.7328333);
    path_25.cubicTo(
        size.width * 0.4491667,
        size.height * 0.7323333,
        size.width * 0.4323333,
        size.height * 0.7318333,
        size.width * 0.4156667,
        size.height * 0.7315000);
    path_25.cubicTo(
        size.width * 0.4151667,
        size.height * 0.7263333,
        size.width * 0.4143333,
        size.height * 0.7211667,
        size.width * 0.4131667,
        size.height * 0.7161667);
    path_25.lineTo(size.width * 0.4146667, size.height * 0.7158333);
    path_25.cubicTo(
        size.width * 0.4661667,
        size.height * 0.7168333,
        size.width * 0.5176667,
        size.height * 0.7180000,
        size.width * 0.5693333,
        size.height * 0.7190000);
    path_25.cubicTo(
        size.width * 0.5713333,
        size.height * 0.7240000,
        size.width * 0.5731667,
        size.height * 0.7290000,
        size.width * 0.5748333,
        size.height * 0.7340000);
    path_25.close();

    Paint paint_25_fill = Paint()..style = PaintingStyle.fill;
    paint_25_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_25, paint_25_fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.5723333, size.height * 0.8308333);
    path_26.cubicTo(
        size.width * 0.5726667,
        size.height * 0.8358333,
        size.width * 0.5725000,
        size.height * 0.8408333,
        size.width * 0.5720000,
        size.height * 0.8460000);
    path_26.cubicTo(
        size.width * 0.5718333,
        size.height * 0.8480000,
        size.width * 0.5716667,
        size.height * 0.8500000,
        size.width * 0.5713333,
        size.height * 0.8520000);
    path_26.cubicTo(
        size.width * 0.5710000,
        size.height * 0.8548333,
        size.width * 0.5705000,
        size.height * 0.8576667,
        size.width * 0.5698333,
        size.height * 0.8606667);
    path_26.cubicTo(
        size.width * 0.5678333,
        size.height * 0.8708333,
        size.width * 0.5638333,
        size.height * 0.8813333,
        size.width * 0.5558333,
        size.height * 0.8880000);
    path_26.cubicTo(
        size.width * 0.5520000,
        size.height * 0.8911667,
        size.width * 0.5475000,
        size.height * 0.8931667,
        size.width * 0.5426667,
        size.height * 0.8945000);
    path_26.cubicTo(
        size.width * 0.5370000,
        size.height * 0.8961667,
        size.width * 0.5310000,
        size.height * 0.8966667,
        size.width * 0.5251667,
        size.height * 0.8970000);
    path_26.cubicTo(
        size.width * 0.5068333,
        size.height * 0.8981667,
        size.width * 0.4770000,
        size.height * 0.8975000,
        size.width * 0.4576667,
        size.height * 0.8966667);
    path_26.lineTo(size.width * 0.4575000, size.height * 0.8963333);
    path_26.cubicTo(
        size.width * 0.4713333,
        size.height * 0.8916667,
        size.width * 0.4763333,
        size.height * 0.8821667,
        size.width * 0.4778333,
        size.height * 0.8738333);
    path_26.cubicTo(
        size.width * 0.4780000,
        size.height * 0.8728333,
        size.width * 0.4781667,
        size.height * 0.8720000,
        size.width * 0.4783333,
        size.height * 0.8710000);
    path_26.lineTo(size.width * 0.4788333, size.height * 0.8710000);
    path_26.cubicTo(
        size.width * 0.4965000,
        size.height * 0.8738333,
        size.width * 0.5168333,
        size.height * 0.8746667,
        size.width * 0.5341667,
        size.height * 0.8706667);
    path_26.cubicTo(
        size.width * 0.5515000,
        size.height * 0.8668333,
        size.width * 0.5703333,
        size.height * 0.8585000,
        size.width * 0.5723333,
        size.height * 0.8308333);
    path_26.close();

    Paint paint_26_fill = Paint()..style = PaintingStyle.fill;
    paint_26_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_26, paint_26_fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.5721667, size.height * 0.8286667);
    path_27.cubicTo(
        size.width * 0.5721667,
        size.height * 0.8293333,
        size.width * 0.5723333,
        size.height * 0.8300000,
        size.width * 0.5723333,
        size.height * 0.8306667);
    path_27.cubicTo(
        size.width * 0.5705000,
        size.height * 0.8583333,
        size.width * 0.5515000,
        size.height * 0.8668333,
        size.width * 0.5343333,
        size.height * 0.8708333);
    path_27.cubicTo(
        size.width * 0.5170000,
        size.height * 0.8748333,
        size.width * 0.4965000,
        size.height * 0.8740000,
        size.width * 0.4790000,
        size.height * 0.8711667);
    path_27.lineTo(size.width * 0.4785000, size.height * 0.8711667);
    path_27.cubicTo(
        size.width * 0.4795000,
        size.height * 0.8653333,
        size.width * 0.4801667,
        size.height * 0.8593333,
        size.width * 0.4805000,
        size.height * 0.8535000);
    path_27.lineTo(size.width * 0.4811667, size.height * 0.8535000);
    path_27.cubicTo(
        size.width * 0.4963333,
        size.height * 0.8553333,
        size.width * 0.5145000,
        size.height * 0.8550000,
        size.width * 0.5263333,
        size.height * 0.8478333);
    path_27.cubicTo(
        size.width * 0.5270000,
        size.height * 0.8475000,
        size.width * 0.5275000,
        size.height * 0.8471667,
        size.width * 0.5280000,
        size.height * 0.8466667);
    path_27.cubicTo(
        size.width * 0.5321667,
        size.height * 0.8436667,
        size.width * 0.5348333,
        size.height * 0.8390000,
        size.width * 0.5365000,
        size.height * 0.8336667);
    path_27.cubicTo(
        size.width * 0.5388333,
        size.height * 0.8263333,
        size.width * 0.5395000,
        size.height * 0.8178333,
        size.width * 0.5403333,
        size.height * 0.8106667);
    path_27.cubicTo(
        size.width * 0.5403333,
        size.height * 0.8101667,
        size.width * 0.5405000,
        size.height * 0.8096667,
        size.width * 0.5405000,
        size.height * 0.8091667);
    path_27.cubicTo(
        size.width * 0.5411667,
        size.height * 0.8048333,
        size.width * 0.5420000,
        size.height * 0.8005000,
        size.width * 0.5443333,
        size.height * 0.7968333);
    path_27.cubicTo(
        size.width * 0.5468333,
        size.height * 0.7926667,
        size.width * 0.5518333,
        size.height * 0.7896667,
        size.width * 0.5565000,
        size.height * 0.7908333);
    path_27.cubicTo(
        size.width * 0.5620000,
        size.height * 0.7920000,
        size.width * 0.5668333,
        size.height * 0.7991667,
        size.width * 0.5690000,
        size.height * 0.8080000);
    path_27.cubicTo(
        size.width * 0.5695000,
        size.height * 0.8098333,
        size.width * 0.5698333,
        size.height * 0.8115000,
        size.width * 0.5701667,
        size.height * 0.8133333);
    path_27.cubicTo(
        size.width * 0.5710000,
        size.height * 0.8186667,
        size.width * 0.5718333,
        size.height * 0.8236667,
        size.width * 0.5721667,
        size.height * 0.8286667);
    path_27.close();

    Paint paint_27_fill = Paint()..style = PaintingStyle.fill;
    paint_27_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_27, paint_27_fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.5383333, size.height * 0.5491667);
    path_28.cubicTo(
        size.width * 0.5381667,
        size.height * 0.5505000,
        size.width * 0.5381667,
        size.height * 0.5518333,
        size.width * 0.5381667,
        size.height * 0.5531667);
    path_28.cubicTo(
        size.width * 0.5383333,
        size.height * 0.5516667,
        size.width * 0.5383333,
        size.height * 0.5503333,
        size.width * 0.5383333,
        size.height * 0.5491667);
    path_28.close();
    path_28.moveTo(size.width * 0.5383333, size.height * 0.5488333);
    path_28.cubicTo(
        size.width * 0.5390000,
        size.height * 0.5405000,
        size.width * 0.5416667,
        size.height * 0.5323333,
        size.width * 0.5463333,
        size.height * 0.5251667);
    path_28.cubicTo(
        size.width * 0.5483333,
        size.height * 0.5221667,
        size.width * 0.5511667,
        size.height * 0.5190000,
        size.width * 0.5550000,
        size.height * 0.5191667);
    path_28.cubicTo(
        size.width * 0.5600000,
        size.height * 0.5191667,
        size.width * 0.5628333,
        size.height * 0.5246667,
        size.width * 0.5640000,
        size.height * 0.5293333);
    path_28.cubicTo(
        size.width * 0.5675000,
        size.height * 0.5416667,
        size.width * 0.5693333,
        size.height * 0.5543333,
        size.width * 0.5695000,
        size.height * 0.5671667);
    path_28.cubicTo(
        size.width * 0.5695000,
        size.height * 0.5673333,
        size.width * 0.5695000,
        size.height * 0.5675000,
        size.width * 0.5695000,
        size.height * 0.5676667);
    path_28.cubicTo(
        size.width * 0.5486667,
        size.height * 0.5668333,
        size.width * 0.5291667,
        size.height * 0.5660000,
        size.width * 0.5083333,
        size.height * 0.5650000);
    path_28.cubicTo(
        size.width * 0.5090000,
        size.height * 0.5518333,
        size.width * 0.5130000,
        size.height * 0.5390000,
        size.width * 0.5195000,
        size.height * 0.5275000);
    path_28.cubicTo(
        size.width * 0.5208333,
        size.height * 0.5253333,
        size.width * 0.5221667,
        size.height * 0.5231667,
        size.width * 0.5243333,
        size.height * 0.5216667);
    path_28.cubicTo(
        size.width * 0.5265000,
        size.height * 0.5201667,
        size.width * 0.5295000,
        size.height * 0.5196667,
        size.width * 0.5318333,
        size.height * 0.5210000);
    path_28.cubicTo(
        size.width * 0.5340000,
        size.height * 0.5223333,
        size.width * 0.5350000,
        size.height * 0.5248333,
        size.width * 0.5355000,
        size.height * 0.5271667);
    path_28.cubicTo(
        size.width * 0.5375000,
        size.height * 0.5341667,
        size.width * 0.5383333,
        size.height * 0.5415000,
        size.width * 0.5383333,
        size.height * 0.5488333);
    path_28.close();

    Paint paint_28_fill = Paint()..style = PaintingStyle.fill;
    paint_28_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_28, paint_28_fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.3393333, size.height * 0.7145000);
    path_29.cubicTo(
        size.width * 0.3458333,
        size.height * 0.7143333,
        size.width * 0.3513333,
        size.height * 0.7160000,
        size.width * 0.3563333,
        size.height * 0.7203333);
    path_29.cubicTo(
        size.width * 0.3595000,
        size.height * 0.7230000,
        size.width * 0.3620000,
        size.height * 0.7263333,
        size.width * 0.3638333,
        size.height * 0.7300000);
    path_29.lineTo(size.width * 0.3636667, size.height * 0.7301667);
    path_29.cubicTo(
        size.width * 0.3405000,
        size.height * 0.7293333,
        size.width * 0.3276667,
        size.height * 0.7346667,
        size.width * 0.3273333,
        size.height * 0.7605000);
    path_29.cubicTo(
        size.width * 0.3271667,
        size.height * 0.7750000,
        size.width * 0.3263333,
        size.height * 0.7896667,
        size.width * 0.3276667,
        size.height * 0.8041667);
    path_29.cubicTo(
        size.width * 0.3280000,
        size.height * 0.8085000,
        size.width * 0.3286667,
        size.height * 0.8128333,
        size.width * 0.3295000,
        size.height * 0.8171667);
    path_29.cubicTo(
        size.width * 0.3301667,
        size.height * 0.8205000,
        size.width * 0.3311667,
        size.height * 0.8238333,
        size.width * 0.3325000,
        size.height * 0.8270000);
    path_29.cubicTo(
        size.width * 0.3343333,
        size.height * 0.8315000,
        size.width * 0.3366667,
        size.height * 0.8355000,
        size.width * 0.3400000,
        size.height * 0.8390000);
    path_29.cubicTo(
        size.width * 0.3485000,
        size.height * 0.8480000,
        size.width * 0.3613333,
        size.height * 0.8510000,
        size.width * 0.3736667,
        size.height * 0.8525000);
    path_29.cubicTo(
        size.width * 0.3845000,
        size.height * 0.8538333,
        size.width * 0.3958333,
        size.height * 0.8538333,
        size.width * 0.4063333,
        size.height * 0.8506667);
    path_29.cubicTo(
        size.width * 0.4141667,
        size.height * 0.8503333,
        size.width * 0.4306667,
        size.height * 0.8496667,
        size.width * 0.4381667,
        size.height * 0.8516667);
    path_29.cubicTo(
        size.width * 0.4456667,
        size.height * 0.8536667,
        size.width * 0.4528333,
        size.height * 0.8581667,
        size.width * 0.4563333,
        size.height * 0.8650000);
    path_29.cubicTo(
        size.width * 0.4601667,
        size.height * 0.8726667,
        size.width * 0.4586667,
        size.height * 0.8828333,
        size.width * 0.4528333,
        size.height * 0.8891667);
    path_29.cubicTo(
        size.width * 0.4446667,
        size.height * 0.8983333,
        size.width * 0.4280000,
        size.height * 0.9018333,
        size.width * 0.4183333,
        size.height * 0.9023333);
    path_29.lineTo(size.width * 0.4183333, size.height * 0.9025000);
    path_29.cubicTo(
        size.width * 0.4011667,
        size.height * 0.9035000,
        size.width * 0.3825000,
        size.height * 0.9033333,
        size.width * 0.3663333,
        size.height * 0.9025000);
    path_29.cubicTo(
        size.width * 0.3355000,
        size.height * 0.8983333,
        size.width * 0.3085000,
        size.height * 0.8865000,
        size.width * 0.2926667,
        size.height * 0.8598333);
    path_29.cubicTo(
        size.width * 0.2766667,
        size.height * 0.8330000,
        size.width * 0.2730000,
        size.height * 0.7911667,
        size.width * 0.2761667,
        size.height * 0.7601667);
    path_29.cubicTo(
        size.width * 0.2793333,
        size.height * 0.7291667,
        size.width * 0.2833333,
        size.height * 0.7043333,
        size.width * 0.2975000,
        size.height * 0.6766667);
    path_29.lineTo(size.width * 0.2975000, size.height * 0.6766667);
    path_29.cubicTo(
        size.width * 0.3001667,
        size.height * 0.6740000,
        size.width * 0.3030000,
        size.height * 0.6716667,
        size.width * 0.3061667,
        size.height * 0.6695000);
    path_29.cubicTo(
        size.width * 0.3083333,
        size.height * 0.6680000,
        size.width * 0.3105000,
        size.height * 0.6668333,
        size.width * 0.3126667,
        size.height * 0.6656667);
    path_29.cubicTo(
        size.width * 0.3135000,
        size.height * 0.6651667,
        size.width * 0.3145000,
        size.height * 0.6648333,
        size.width * 0.3153333,
        size.height * 0.6643333);
    path_29.cubicTo(
        size.width * 0.3250000,
        size.height * 0.6596667,
        size.width * 0.3370000,
        size.height * 0.6568333,
        size.width * 0.3506667,
        size.height * 0.6550000);
    path_29.cubicTo(
        size.width * 0.3920000,
        size.height * 0.6493333,
        size.width * 0.4481667,
        size.height * 0.6538333,
        size.width * 0.4990000,
        size.height * 0.6533333);
    path_29.cubicTo(
        size.width * 0.5063333,
        size.height * 0.6533333,
        size.width * 0.5135000,
        size.height * 0.6531667,
        size.width * 0.5205000,
        size.height * 0.6526667);
    path_29.cubicTo(
        size.width * 0.5246667,
        size.height * 0.6525000,
        size.width * 0.5286667,
        size.height * 0.6521667,
        size.width * 0.5328333,
        size.height * 0.6518333);
    path_29.cubicTo(
        size.width * 0.5331667,
        size.height * 0.6518333,
        size.width * 0.5335000,
        size.height * 0.6518333,
        size.width * 0.5338333,
        size.height * 0.6516667);
    path_29.lineTo(size.width * 0.5338333, size.height * 0.6523333);
    path_29.cubicTo(
        size.width * 0.5415000,
        size.height * 0.6631667,
        size.width * 0.5485000,
        size.height * 0.6743333,
        size.width * 0.5545000,
        size.height * 0.6858333);
    path_29.cubicTo(
        size.width * 0.5581667,
        size.height * 0.6926667,
        size.width * 0.5615000,
        size.height * 0.6998333,
        size.width * 0.5645000,
        size.height * 0.7070000);
    path_29.cubicTo(
        size.width * 0.5661667,
        size.height * 0.7110000,
        size.width * 0.5678333,
        size.height * 0.7150000,
        size.width * 0.5693333,
        size.height * 0.7190000);
    path_29.cubicTo(
        size.width * 0.5178333,
        size.height * 0.7180000,
        size.width * 0.4663333,
        size.height * 0.7168333,
        size.width * 0.4146667,
        size.height * 0.7158333);
    path_29.lineTo(size.width * 0.4131667, size.height * 0.7161667);
    path_29.cubicTo(
        size.width * 0.4143333,
        size.height * 0.7211667,
        size.width * 0.4151667,
        size.height * 0.7265000,
        size.width * 0.4156667,
        size.height * 0.7315000);
    path_29.cubicTo(
        size.width * 0.4173333,
        size.height * 0.7481667,
        size.width * 0.4170000,
        size.height * 0.7650000,
        size.width * 0.4146667,
        size.height * 0.7816667);
    path_29.cubicTo(
        size.width * 0.4145000,
        size.height * 0.7825000,
        size.width * 0.4145000,
        size.height * 0.7833333,
        size.width * 0.4143333,
        size.height * 0.7840000);
    path_29.lineTo(size.width * 0.4141667, size.height * 0.7840000);
    path_29.cubicTo(
        size.width * 0.4065000,
        size.height * 0.7950000,
        size.width * 0.3946667,
        size.height * 0.7923333,
        size.width * 0.3888333,
        size.height * 0.7868333);
    path_29.cubicTo(
        size.width * 0.3830000,
        size.height * 0.7813333,
        size.width * 0.3825000,
        size.height * 0.7730000,
        size.width * 0.3821667,
        size.height * 0.7651667);
    path_29.cubicTo(
        size.width * 0.3818333,
        size.height * 0.7571667,
        size.width * 0.3813333,
        size.height * 0.7493333,
        size.width * 0.3808333,
        size.height * 0.7413333);
    path_29.cubicTo(
        size.width * 0.3803333,
        size.height * 0.7333333,
        size.width * 0.3780000,
        size.height * 0.7251667,
        size.width * 0.3721667,
        size.height * 0.7198333);
    path_29.cubicTo(
        size.width * 0.3651667,
        size.height * 0.7136667,
        size.width * 0.3505000,
        size.height * 0.7135000,
        size.width * 0.3393333,
        size.height * 0.7145000);
    path_29.close();

    Paint paint_29_fill = Paint()..style = PaintingStyle.fill;
    paint_29_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_29, paint_29_fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.5646667, size.height * 0.2905000);
    path_30.cubicTo(
        size.width * 0.5646667,
        size.height * 0.2905000,
        size.width * 0.5740000,
        size.height * 0.2890000,
        size.width * 0.5751667,
        size.height * 0.3023333);
    path_30.cubicTo(
        size.width * 0.5466667,
        size.height * 0.2973333,
        size.width * 0.5216667,
        size.height * 0.3056667,
        size.width * 0.4928333,
        size.height * 0.3060000);
    path_30.cubicTo(
        size.width * 0.4496667,
        size.height * 0.3063333,
        size.width * 0.4371667,
        size.height * 0.2941667,
        size.width * 0.3950000,
        size.height * 0.3038333);
    path_30.cubicTo(
        size.width * 0.3716667,
        size.height * 0.3091667,
        size.width * 0.3451667,
        size.height * 0.3025000,
        size.width * 0.3368333,
        size.height * 0.3035000);
    path_30.cubicTo(
        size.width * 0.3263333,
        size.height * 0.3046667,
        size.width * 0.3128333,
        size.height * 0.3066667,
        size.width * 0.3045000,
        size.height * 0.2960000);
    path_30.lineTo(size.width * 0.3035000, size.height * 0.2958333);
    path_30.cubicTo(
        size.width * 0.3063333,
        size.height * 0.2906667,
        size.width * 0.3110000,
        size.height * 0.2905000,
        size.width * 0.3110000,
        size.height * 0.2905000);
    path_30.lineTo(size.width * 0.5646667, size.height * 0.2905000);
    path_30.close();

    Paint paint_30_fill = Paint()..style = PaintingStyle.fill;
    paint_30_fill.color = Color(0xffF9BABA).withOpacity(1.0);
    canvas.drawPath(path_30, paint_30_fill);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.5640000, size.height * 0.3553333);
    path_31.cubicTo(
        size.width * 0.5645000,
        size.height * 0.3723333,
        size.width * 0.5638333,
        size.height * 0.3895000,
        size.width * 0.5616667,
        size.height * 0.4060000);
    path_31.cubicTo(
        size.width * 0.5578333,
        size.height * 0.4353333,
        size.width * 0.5481667,
        size.height * 0.4641667,
        size.width * 0.5311667,
        size.height * 0.4883333);
    path_31.cubicTo(
        size.width * 0.5300000,
        size.height * 0.4900000,
        size.width * 0.5286667,
        size.height * 0.4918333,
        size.width * 0.5273333,
        size.height * 0.4935000);
    path_31.lineTo(size.width * 0.5271667, size.height * 0.4933333);
    path_31.cubicTo(
        size.width * 0.5356667,
        size.height * 0.4723333,
        size.width * 0.5408333,
        size.height * 0.4471667,
        size.width * 0.5438333,
        size.height * 0.4216667);
    path_31.cubicTo(
        size.width * 0.5508333,
        size.height * 0.4203333,
        size.width * 0.5548333,
        size.height * 0.4188333,
        size.width * 0.5548333,
        size.height * 0.4171667);
    path_31.cubicTo(
        size.width * 0.5548333,
        size.height * 0.4156667,
        size.width * 0.5511667,
        size.height * 0.4141667,
        size.width * 0.5448333,
        size.height * 0.4128333);
    path_31.cubicTo(
        size.width * 0.5481667,
        size.height * 0.3773333,
        size.width * 0.5470000,
        size.height * 0.3416667,
        size.width * 0.5436667,
        size.height * 0.3158333);
    path_31.lineTo(size.width * 0.5436667, size.height * 0.3153333);
    path_31.cubicTo(
        size.width * 0.5511667,
        size.height * 0.3153333,
        size.width * 0.5570000,
        size.height * 0.3153333,
        size.width * 0.5608333,
        size.height * 0.3153333);
    path_31.lineTo(size.width * 0.5608333, size.height * 0.3156667);
    path_31.cubicTo(
        size.width * 0.5625000,
        size.height * 0.3285000,
        size.width * 0.5636667,
        size.height * 0.3418333,
        size.width * 0.5640000,
        size.height * 0.3553333);
    path_31.close();

    Paint paint_31_fill = Paint()..style = PaintingStyle.fill;
    paint_31_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_31, paint_31_fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.5446667, size.height * 0.4128333);
    path_32.cubicTo(
        size.width * 0.5511667,
        size.height * 0.4141667,
        size.width * 0.5546667,
        size.height * 0.4156667,
        size.width * 0.5546667,
        size.height * 0.4171667);
    path_32.cubicTo(
        size.width * 0.5546667,
        size.height * 0.4188333,
        size.width * 0.5506667,
        size.height * 0.4203333,
        size.width * 0.5436667,
        size.height * 0.4216667);
    path_32.cubicTo(
        size.width * 0.5440000,
        size.height * 0.4188333,
        size.width * 0.5443333,
        size.height * 0.4158333,
        size.width * 0.5446667,
        size.height * 0.4128333);
    path_32.close();

    Paint paint_32_fill = Paint()..style = PaintingStyle.fill;
    paint_32_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_32, paint_32_fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.5435000, size.height * 0.3158333);
    path_33.cubicTo(
        size.width * 0.5468333,
        size.height * 0.3418333,
        size.width * 0.5480000,
        size.height * 0.3773333,
        size.width * 0.5446667,
        size.height * 0.4128333);
    path_33.cubicTo(
        size.width * 0.5345000,
        size.height * 0.4108333,
        size.width * 0.5171667,
        size.height * 0.4090000,
        size.width * 0.4955000,
        size.height * 0.4080000);
    path_33.cubicTo(
        size.width * 0.4971667,
        size.height * 0.3765000,
        size.width * 0.4975000,
        size.height * 0.3446667,
        size.width * 0.4968333,
        size.height * 0.3156667);
    path_33.lineTo(size.width * 0.4968333, size.height * 0.3153333);
    path_33.cubicTo(
        size.width * 0.5151667,
        size.height * 0.3153333,
        size.width * 0.5313333,
        size.height * 0.3153333,
        size.width * 0.5435000,
        size.height * 0.3153333);
    path_33.lineTo(size.width * 0.5435000, size.height * 0.3158333);
    path_33.close();

    Paint paint_33_fill = Paint()..style = PaintingStyle.fill;
    paint_33_fill.color = Color(0xffF9BABA).withOpacity(1.0);
    canvas.drawPath(path_33, paint_33_fill);

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.5085000, size.height * 0.5648333);
    path_34.cubicTo(
        size.width * 0.5293333,
        size.height * 0.5656667,
        size.width * 0.5488333,
        size.height * 0.5665000,
        size.width * 0.5696667,
        size.height * 0.5675000);
    path_34.cubicTo(
        size.width * 0.5688333,
        size.height * 0.5846667,
        size.width * 0.5615000,
        size.height * 0.6120000,
        size.width * 0.5378333,
        size.height * 0.6111667);
    path_34.cubicTo(
        size.width * 0.5151667,
        size.height * 0.6103333,
        size.width * 0.5080000,
        size.height * 0.5808333,
        size.width * 0.5081667,
        size.height * 0.5661667);
    path_34.lineTo(size.width * 0.5083333, size.height * 0.5661667);
    path_34.cubicTo(
        size.width * 0.5083333,
        size.height * 0.5658333,
        size.width * 0.5083333,
        size.height * 0.5653333,
        size.width * 0.5085000,
        size.height * 0.5648333);
    path_34.close();

    Paint paint_34_fill = Paint()..style = PaintingStyle.fill;
    paint_34_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_34, paint_34_fill);

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.5446667, size.height * 0.4128333);
    path_35.cubicTo(
        size.width * 0.5443333,
        size.height * 0.4158333,
        size.width * 0.5441667,
        size.height * 0.4186667,
        size.width * 0.5438333,
        size.height * 0.4216667);
    path_35.cubicTo(
        size.width * 0.5333333,
        size.height * 0.4236667,
        size.width * 0.5160000,
        size.height * 0.4253333,
        size.width * 0.4946667,
        size.height * 0.4265000);
    path_35.cubicTo(
        size.width * 0.4946667,
        size.height * 0.4251667,
        size.width * 0.4948333,
        size.height * 0.4238333,
        size.width * 0.4948333,
        size.height * 0.4225000);
    path_35.cubicTo(
        size.width * 0.4951667,
        size.height * 0.4176667,
        size.width * 0.4955000,
        size.height * 0.4128333,
        size.width * 0.4956667,
        size.height * 0.4078333);
    path_35.cubicTo(
        size.width * 0.5171667,
        size.height * 0.4090000,
        size.width * 0.5343333,
        size.height * 0.4108333,
        size.width * 0.5446667,
        size.height * 0.4128333);
    path_35.close();

    Paint paint_35_fill = Paint()..style = PaintingStyle.fill;
    paint_35_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_35, paint_35_fill);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.5403333, size.height * 0.8093333);
    path_36.cubicTo(
        size.width * 0.5403333,
        size.height * 0.8098333,
        size.width * 0.5401667,
        size.height * 0.8103333,
        size.width * 0.5401667,
        size.height * 0.8108333);
    path_36.cubicTo(
        size.width * 0.5391667,
        size.height * 0.8178333,
        size.width * 0.5386667,
        size.height * 0.8265000,
        size.width * 0.5363333,
        size.height * 0.8338333);
    path_36.lineTo(size.width * 0.5361667, size.height * 0.8336667);
    path_36.cubicTo(
        size.width * 0.5331667,
        size.height * 0.8340000,
        size.width * 0.5301667,
        size.height * 0.8341667,
        size.width * 0.5270000,
        size.height * 0.8345000);
    path_36.cubicTo(
        size.width * 0.5275000,
        size.height * 0.8260000,
        size.width * 0.5276667,
        size.height * 0.8171667,
        size.width * 0.5273333,
        size.height * 0.8083333);
    path_36.cubicTo(
        size.width * 0.5318333,
        size.height * 0.8086667,
        size.width * 0.5360000,
        size.height * 0.8090000,
        size.width * 0.5401667,
        size.height * 0.8095000);
    path_36.lineTo(size.width * 0.5403333, size.height * 0.8093333);
    path_36.close();

    Paint paint_36_fill = Paint()..style = PaintingStyle.fill;
    paint_36_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_36, paint_36_fill);

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.5360000, size.height * 0.8336667);
    path_37.lineTo(size.width * 0.5361667, size.height * 0.8338333);
    path_37.cubicTo(
        size.width * 0.5345000,
        size.height * 0.8391667,
        size.width * 0.5320000,
        size.height * 0.8438333,
        size.width * 0.5276667,
        size.height * 0.8468333);
    path_37.cubicTo(
        size.width * 0.5271667,
        size.height * 0.8471667,
        size.width * 0.5265000,
        size.height * 0.8476667,
        size.width * 0.5260000,
        size.height * 0.8480000);
    path_37.lineTo(size.width * 0.5258333, size.height * 0.8475000);
    path_37.cubicTo(
        size.width * 0.5261667,
        size.height * 0.8433333,
        size.width * 0.5265000,
        size.height * 0.8390000,
        size.width * 0.5268333,
        size.height * 0.8345000);
    path_37.cubicTo(
        size.width * 0.5300000,
        size.height * 0.8341667,
        size.width * 0.5330000,
        size.height * 0.8338333,
        size.width * 0.5360000,
        size.height * 0.8336667);
    path_37.close();

    Paint paint_37_fill = Paint()..style = PaintingStyle.fill;
    paint_37_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_37, paint_37_fill);

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.5326667, size.height * 0.6506667);
    path_38.lineTo(size.width * 0.5328333, size.height * 0.6516667);
    path_38.cubicTo(
        size.width * 0.5286667,
        size.height * 0.6520000,
        size.width * 0.5246667,
        size.height * 0.6523333,
        size.width * 0.5205000,
        size.height * 0.6525000);
    path_38.cubicTo(
        size.width * 0.5135000,
        size.height * 0.6528333,
        size.width * 0.5063333,
        size.height * 0.6530000,
        size.width * 0.4990000,
        size.height * 0.6531667);
    path_38.lineTo(size.width * 0.4990000, size.height * 0.6513333);
    path_38.cubicTo(
        size.width * 0.4913333,
        size.height * 0.6171667,
        size.width * 0.4648333,
        size.height * 0.5870000,
        size.width * 0.4403333,
        size.height * 0.5650000);
    path_38.cubicTo(
        size.width * 0.4756667,
        size.height * 0.5868333,
        size.width * 0.5080000,
        size.height * 0.6165000,
        size.width * 0.5326667,
        size.height * 0.6506667);
    path_38.close();

    Paint paint_38_fill = Paint()..style = PaintingStyle.fill;
    paint_38_fill.color = Color(0xffF9BABA).withOpacity(1.0);
    canvas.drawPath(path_38, paint_38_fill);

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.5436667, size.height * 0.4216667);
    path_39.cubicTo(
        size.width * 0.5406667,
        size.height * 0.4471667,
        size.width * 0.5355000,
        size.height * 0.4723333,
        size.width * 0.5270000,
        size.height * 0.4933333);
    path_39.lineTo(size.width * 0.5271667, size.height * 0.4935000);
    path_39.cubicTo(
        size.width * 0.5050000,
        size.height * 0.5220000,
        size.width * 0.4700000,
        size.height * 0.5453333,
        size.width * 0.4401667,
        size.height * 0.5650000);
    path_39.cubicTo(
        size.width * 0.4620000,
        size.height * 0.5506667,
        size.width * 0.4761667,
        size.height * 0.5248333,
        size.width * 0.4836667,
        size.height * 0.4998333);
    path_39.cubicTo(
        size.width * 0.4908333,
        size.height * 0.4761667,
        size.width * 0.4926667,
        size.height * 0.4511667,
        size.width * 0.4943333,
        size.height * 0.4265000);
    path_39.cubicTo(
        size.width * 0.5158333,
        size.height * 0.4253333,
        size.width * 0.5331667,
        size.height * 0.4236667,
        size.width * 0.5436667,
        size.height * 0.4216667);
    path_39.close();

    Paint paint_39_fill = Paint()..style = PaintingStyle.fill;
    paint_39_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_39, paint_39_fill);

    Path path_40 = Path();
    path_40.moveTo(size.width * 0.5271667, size.height * 0.8081667);
    path_40.cubicTo(
        size.width * 0.5273333,
        size.height * 0.8170000,
        size.width * 0.5271667,
        size.height * 0.8258333,
        size.width * 0.5268333,
        size.height * 0.8343333);
    path_40.cubicTo(
        size.width * 0.5130000,
        size.height * 0.8353333,
        size.width * 0.4975000,
        size.height * 0.8361667,
        size.width * 0.4808333,
        size.height * 0.8365000);
    path_40.lineTo(size.width * 0.4806667, size.height * 0.8365000);
    path_40.cubicTo(
        size.width * 0.4803333,
        size.height * 0.8263333,
        size.width * 0.4793333,
        size.height * 0.8160000,
        size.width * 0.4773333,
        size.height * 0.8060000);
    path_40.lineTo(size.width * 0.4775000, size.height * 0.8060000);
    path_40.cubicTo(
        size.width * 0.4955000,
        size.height * 0.8063333,
        size.width * 0.5123333,
        size.height * 0.8070000,
        size.width * 0.5271667,
        size.height * 0.8081667);
    path_40.close();

    Paint paint_40_fill = Paint()..style = PaintingStyle.fill;
    paint_40_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_40, paint_40_fill);

    Path path_41 = Path();
    path_41.moveTo(size.width * 0.5268333, size.height * 0.8343333);
    path_41.cubicTo(
        size.width * 0.5266667,
        size.height * 0.8386667,
        size.width * 0.5263333,
        size.height * 0.8430000,
        size.width * 0.5258333,
        size.height * 0.8473333);
    path_41.lineTo(size.width * 0.5260000, size.height * 0.8478333);
    path_41.cubicTo(
        size.width * 0.5141667,
        size.height * 0.8550000,
        size.width * 0.4960000,
        size.height * 0.8553333,
        size.width * 0.4808333,
        size.height * 0.8535000);
    path_41.lineTo(size.width * 0.4801667, size.height * 0.8535000);
    path_41.cubicTo(
        size.width * 0.4805000,
        size.height * 0.8478333,
        size.width * 0.4806667,
        size.height * 0.8423333,
        size.width * 0.4805000,
        size.height * 0.8366667);
    path_41.lineTo(size.width * 0.4806667, size.height * 0.8366667);
    path_41.cubicTo(
        size.width * 0.4975000,
        size.height * 0.8361667,
        size.width * 0.5130000,
        size.height * 0.8353333,
        size.width * 0.5268333,
        size.height * 0.8343333);
    path_41.close();

    Paint paint_41_fill = Paint()..style = PaintingStyle.fill;
    paint_41_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_41, paint_41_fill);

    Path path_42 = Path();
    path_42.moveTo(size.width * 0.5180000, size.height * 0.7350000);
    path_42.cubicTo(
        size.width * 0.5235000,
        size.height * 0.7575000,
        size.width * 0.5266667,
        size.height * 0.7831667,
        size.width * 0.5271667,
        size.height * 0.8081667);
    path_42.cubicTo(
        size.width * 0.5123333,
        size.height * 0.8070000,
        size.width * 0.4955000,
        size.height * 0.8063333,
        size.width * 0.4775000,
        size.height * 0.8060000);
    path_42.lineTo(size.width * 0.4773333, size.height * 0.8060000);
    path_42.cubicTo(
        size.width * 0.4771667,
        size.height * 0.8046667,
        size.width * 0.4768333,
        size.height * 0.8033333,
        size.width * 0.4765000,
        size.height * 0.8020000);
    path_42.cubicTo(
        size.width * 0.4761667,
        size.height * 0.8008333,
        size.width * 0.4760000,
        size.height * 0.7995000,
        size.width * 0.4756667,
        size.height * 0.7983333);
    path_42.cubicTo(
        size.width * 0.4733333,
        size.height * 0.7900000,
        size.width * 0.4690000,
        size.height * 0.7816667,
        size.width * 0.4610000,
        size.height * 0.7798333);
    path_42.cubicTo(
        size.width * 0.4538333,
        size.height * 0.7781667,
        size.width * 0.4465000,
        size.height * 0.7825000,
        size.width * 0.4425000,
        size.height * 0.7886667);
    path_42.cubicTo(
        size.width * 0.4391667,
        size.height * 0.7938333,
        size.width * 0.4376667,
        size.height * 0.7998333,
        size.width * 0.4366667,
        size.height * 0.8060000);
    path_42.lineTo(size.width * 0.4366667, size.height * 0.8060000);
    path_42.cubicTo(
        size.width * 0.4255000,
        size.height * 0.8061667,
        size.width * 0.4148333,
        size.height * 0.8065000,
        size.width * 0.4048333,
        size.height * 0.8070000);
    path_42.cubicTo(
        size.width * 0.4061667,
        size.height * 0.8056667,
        size.width * 0.4073333,
        size.height * 0.8041667,
        size.width * 0.4083333,
        size.height * 0.8026667);
    path_42.cubicTo(
        size.width * 0.4118333,
        size.height * 0.7971667,
        size.width * 0.4135000,
        size.height * 0.7906667,
        size.width * 0.4145000,
        size.height * 0.7841667);
    path_42.cubicTo(
        size.width * 0.4146667,
        size.height * 0.7833333,
        size.width * 0.4148333,
        size.height * 0.7826667,
        size.width * 0.4148333,
        size.height * 0.7818333);
    path_42.cubicTo(
        size.width * 0.4171667,
        size.height * 0.7651667,
        size.width * 0.4175000,
        size.height * 0.7483333,
        size.width * 0.4158333,
        size.height * 0.7316667);
    path_42.cubicTo(
        size.width * 0.4325000,
        size.height * 0.7320000,
        size.width * 0.4491667,
        size.height * 0.7325000,
        size.width * 0.4660000,
        size.height * 0.7330000);
    path_42.lineTo(size.width * 0.4660000, size.height * 0.7331667);
    path_42.cubicTo(
        size.width * 0.4630000,
        size.height * 0.7370000,
        size.width * 0.4611667,
        size.height * 0.7418333,
        size.width * 0.4611667,
        size.height * 0.7470000);
    path_42.cubicTo(
        size.width * 0.4611667,
        size.height * 0.7595000,
        size.width * 0.4713333,
        size.height * 0.7695000,
        size.width * 0.4836667,
        size.height * 0.7695000);
    path_42.cubicTo(
        size.width * 0.4961667,
        size.height * 0.7695000,
        size.width * 0.5061667,
        size.height * 0.7593333,
        size.width * 0.5061667,
        size.height * 0.7470000);
    path_42.cubicTo(
        size.width * 0.5061667,
        size.height * 0.7423333,
        size.width * 0.5046667,
        size.height * 0.7378333,
        size.width * 0.5021667,
        size.height * 0.7343333);
    path_42.lineTo(size.width * 0.5021667, size.height * 0.7341667);
    path_42.cubicTo(
        size.width * 0.5073333,
        size.height * 0.7343333,
        size.width * 0.5125000,
        size.height * 0.7345000,
        size.width * 0.5178333,
        size.height * 0.7346667);
    path_42.lineTo(size.width * 0.5180000, size.height * 0.7350000);
    path_42.close();

    Paint paint_42_fill = Paint()..style = PaintingStyle.fill;
    paint_42_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_42, paint_42_fill);

    Path path_43 = Path();
    path_43.moveTo(size.width * 0.5025000, size.height * 0.7341667);
    path_43.cubicTo(
        size.width * 0.5050000,
        size.height * 0.7378333,
        size.width * 0.5065000,
        size.height * 0.7421667,
        size.width * 0.5065000,
        size.height * 0.7468333);
    path_43.cubicTo(
        size.width * 0.5065000,
        size.height * 0.7593333,
        size.width * 0.4963333,
        size.height * 0.7693333,
        size.width * 0.4840000,
        size.height * 0.7693333);
    path_43.cubicTo(
        size.width * 0.4715000,
        size.height * 0.7693333,
        size.width * 0.4615000,
        size.height * 0.7591667,
        size.width * 0.4615000,
        size.height * 0.7468333);
    path_43.cubicTo(
        size.width * 0.4615000,
        size.height * 0.7416667,
        size.width * 0.4633333,
        size.height * 0.7368333,
        size.width * 0.4663333,
        size.height * 0.7330000);
    path_43.lineTo(size.width * 0.4663333, size.height * 0.7328333);
    path_43.cubicTo(
        size.width * 0.4781667,
        size.height * 0.7333333,
        size.width * 0.4903333,
        size.height * 0.7338333,
        size.width * 0.5025000,
        size.height * 0.7341667);
    path_43.lineTo(size.width * 0.5025000, size.height * 0.7341667);
    path_43.close();

    Paint paint_43_fill = Paint()..style = PaintingStyle.fill;
    paint_43_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_43, paint_43_fill);

    Path path_44 = Path();
    path_44.moveTo(size.width * 0.4990000, size.height * 0.6513333);
    path_44.lineTo(size.width * 0.4990000, size.height * 0.6531667);
    path_44.cubicTo(
        size.width * 0.4481667,
        size.height * 0.6536667,
        size.width * 0.3920000,
        size.height * 0.6491667,
        size.width * 0.3506667,
        size.height * 0.6548333);
    path_44.lineTo(size.width * 0.3506667, size.height * 0.6546667);
    path_44.cubicTo(
        size.width * 0.3716667,
        size.height * 0.6186667,
        size.width * 0.4043333,
        size.height * 0.5890000,
        size.width * 0.4383333,
        size.height * 0.5650000);
    path_44.lineTo(size.width * 0.4405000, size.height * 0.5650000);
    path_44.cubicTo(
        size.width * 0.4648333,
        size.height * 0.5870000,
        size.width * 0.4913333,
        size.height * 0.6171667,
        size.width * 0.4990000,
        size.height * 0.6513333);
    path_44.close();
    path_44.moveTo(size.width * 0.4445000, size.height * 0.6220000);
    path_44.cubicTo(
        size.width * 0.4445000,
        size.height * 0.6148333,
        size.width * 0.4386667,
        size.height * 0.6090000,
        size.width * 0.4315000,
        size.height * 0.6090000);
    path_44.cubicTo(
        size.width * 0.4243333,
        size.height * 0.6090000,
        size.width * 0.4185000,
        size.height * 0.6148333,
        size.width * 0.4185000,
        size.height * 0.6220000);
    path_44.cubicTo(
        size.width * 0.4185000,
        size.height * 0.6291667,
        size.width * 0.4243333,
        size.height * 0.6350000,
        size.width * 0.4315000,
        size.height * 0.6350000);
    path_44.cubicTo(
        size.width * 0.4386667,
        size.height * 0.6350000,
        size.width * 0.4445000,
        size.height * 0.6291667,
        size.width * 0.4445000,
        size.height * 0.6220000);
    path_44.close();

    Paint paint_44_fill = Paint()..style = PaintingStyle.fill;
    paint_44_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_44, paint_44_fill);

    Path path_45 = Path();
    path_45.moveTo(size.width * 0.4968333, size.height * 0.3156667);
    path_45.cubicTo(
        size.width * 0.4975000,
        size.height * 0.3446667,
        size.width * 0.4971667,
        size.height * 0.3765000,
        size.width * 0.4955000,
        size.height * 0.4080000);
    path_45.cubicTo(
        size.width * 0.4790000,
        size.height * 0.4071667,
        size.width * 0.4598333,
        size.height * 0.4066667,
        size.width * 0.4396667,
        size.height * 0.4066667);
    path_45.cubicTo(
        size.width * 0.3761667,
        size.height * 0.4066667,
        size.width * 0.3246667,
        size.height * 0.4113333,
        size.width * 0.3246667,
        size.height * 0.4171667);
    path_45.cubicTo(
        size.width * 0.3246667,
        size.height * 0.4173333,
        size.width * 0.3246667,
        size.height * 0.4173333,
        size.width * 0.3246667,
        size.height * 0.4175000);
    path_45.lineTo(size.width * 0.3201667, size.height * 0.4183333);
    path_45.cubicTo(
        size.width * 0.3200000,
        size.height * 0.4178333,
        size.width * 0.3200000,
        size.height * 0.4173333,
        size.width * 0.3198333,
        size.height * 0.4166667);
    path_45.cubicTo(
        size.width * 0.3193333,
        size.height * 0.4136667,
        size.width * 0.3188333,
        size.height * 0.4106667,
        size.width * 0.3185000,
        size.height * 0.4076667);
    path_45.cubicTo(
        size.width * 0.3180000,
        size.height * 0.4036667,
        size.width * 0.3175000,
        size.height * 0.3996667,
        size.width * 0.3171667,
        size.height * 0.3955000);
    path_45.cubicTo(
        size.width * 0.3161667,
        size.height * 0.3831667,
        size.width * 0.3160000,
        size.height * 0.3703333,
        size.width * 0.3165000,
        size.height * 0.3575000);
    path_45.cubicTo(
        size.width * 0.3170000,
        size.height * 0.3433333,
        size.width * 0.3185000,
        size.height * 0.3291667,
        size.width * 0.3203333,
        size.height * 0.3158333);
    path_45.lineTo(size.width * 0.3203333, size.height * 0.3153333);
    path_45.cubicTo(
        size.width * 0.3483333,
        size.height * 0.3153333,
        size.width * 0.4345000,
        size.height * 0.3153333,
        size.width * 0.4968333,
        size.height * 0.3153333);
    path_45.lineTo(size.width * 0.4968333, size.height * 0.3156667);
    path_45.close();

    Paint paint_45_fill = Paint()..style = PaintingStyle.fill;
    paint_45_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_45, paint_45_fill);

    Path path_46 = Path();
    path_46.moveTo(size.width * 0.4955000, size.height * 0.4080000);
    path_46.cubicTo(
        size.width * 0.4953333,
        size.height * 0.4128333,
        size.width * 0.4950000,
        size.height * 0.4176667,
        size.width * 0.4946667,
        size.height * 0.4226667);
    path_46.cubicTo(
        size.width * 0.4945000,
        size.height * 0.4240000,
        size.width * 0.4945000,
        size.height * 0.4253333,
        size.width * 0.4945000,
        size.height * 0.4266667);
    path_46.cubicTo(
        size.width * 0.4781667,
        size.height * 0.4275000,
        size.width * 0.4595000,
        size.height * 0.4280000,
        size.width * 0.4396667,
        size.height * 0.4280000);
    path_46.cubicTo(
        size.width * 0.3771667,
        size.height * 0.4280000,
        size.width * 0.3261667,
        size.height * 0.4235000,
        size.width * 0.3246667,
        size.height * 0.4176667);
    path_46.cubicTo(
        size.width * 0.3246667,
        size.height * 0.4175000,
        size.width * 0.3246667,
        size.height * 0.4175000,
        size.width * 0.3246667,
        size.height * 0.4173333);
    path_46.cubicTo(
        size.width * 0.3246667,
        size.height * 0.4115000,
        size.width * 0.3761667,
        size.height * 0.4068333,
        size.width * 0.4396667,
        size.height * 0.4068333);
    path_46.cubicTo(
        size.width * 0.4600000,
        size.height * 0.4066667,
        size.width * 0.4790000,
        size.height * 0.4071667,
        size.width * 0.4955000,
        size.height * 0.4080000);
    path_46.close();

    Paint paint_46_fill = Paint()..style = PaintingStyle.fill;
    paint_46_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_46, paint_46_fill);

    Path path_47 = Path();
    path_47.moveTo(size.width * 0.4945000, size.height * 0.4265000);
    path_47.cubicTo(
        size.width * 0.4930000,
        size.height * 0.4511667,
        size.width * 0.4910000,
        size.height * 0.4761667,
        size.width * 0.4838333,
        size.height * 0.4998333);
    path_47.cubicTo(
        size.width * 0.4763333,
        size.height * 0.5248333,
        size.width * 0.4620000,
        size.height * 0.5506667,
        size.width * 0.4403333,
        size.height * 0.5650000);
    path_47.lineTo(size.width * 0.4381667, size.height * 0.5650000);
    path_47.cubicTo(
        size.width * 0.4065000,
        size.height * 0.5441667,
        size.width * 0.3708333,
        size.height * 0.5210000,
        size.width * 0.3490000,
        size.height * 0.4900000);
    path_47.cubicTo(
        size.width * 0.3340000,
        size.height * 0.4686667,
        size.width * 0.3248333,
        size.height * 0.4438333,
        size.width * 0.3201667,
        size.height * 0.4181667);
    path_47.lineTo(size.width * 0.3246667, size.height * 0.4173333);
    path_47.cubicTo(
        size.width * 0.3263333,
        size.height * 0.4230000,
        size.width * 0.3771667,
        size.height * 0.4276667,
        size.width * 0.4396667,
        size.height * 0.4276667);
    path_47.cubicTo(
        size.width * 0.4595000,
        size.height * 0.4276667,
        size.width * 0.4781667,
        size.height * 0.4273333,
        size.width * 0.4945000,
        size.height * 0.4265000);
    path_47.close();

    Paint paint_47_fill = Paint()..style = PaintingStyle.fill;
    paint_47_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_47, paint_47_fill);

    Path path_48 = Path();
    path_48.moveTo(size.width * 0.4275000, size.height * 0.8365000);
    path_48.cubicTo(
        size.width * 0.4288333,
        size.height * 0.8346667,
        size.width * 0.4301667,
        size.height * 0.8328333,
        size.width * 0.4311667,
        size.height * 0.8306667);
    path_48.cubicTo(
        size.width * 0.4400000,
        size.height * 0.8230000,
        size.width * 0.4406667,
        size.height * 0.8165000,
        size.width * 0.4436667,
        size.height * 0.8101667);
    path_48.cubicTo(
        size.width * 0.4466667,
        size.height * 0.8038333,
        size.width * 0.4505000,
        size.height * 0.7976667,
        size.width * 0.4563333,
        size.height * 0.7940000);
    path_48.cubicTo(
        size.width * 0.4623333,
        size.height * 0.7905000,
        size.width * 0.4715000,
        size.height * 0.7908333,
        size.width * 0.4755000,
        size.height * 0.7983333);
    path_48.lineTo(size.width * 0.4755000, size.height * 0.7983333);
    path_48.cubicTo(
        size.width * 0.4758333,
        size.height * 0.7996667,
        size.width * 0.4761667,
        size.height * 0.8008333,
        size.width * 0.4763333,
        size.height * 0.8020000);
    path_48.cubicTo(
        size.width * 0.4766667,
        size.height * 0.8033333,
        size.width * 0.4768333,
        size.height * 0.8046667,
        size.width * 0.4771667,
        size.height * 0.8060000);
    path_48.cubicTo(
        size.width * 0.4791667,
        size.height * 0.8160000,
        size.width * 0.4803333,
        size.height * 0.8263333,
        size.width * 0.4805000,
        size.height * 0.8365000);
    path_48.cubicTo(
        size.width * 0.4806667,
        size.height * 0.8421667,
        size.width * 0.4805000,
        size.height * 0.8478333,
        size.width * 0.4801667,
        size.height * 0.8533333);
    path_48.cubicTo(
        size.width * 0.4798333,
        size.height * 0.8591667,
        size.width * 0.4791667,
        size.height * 0.8651667,
        size.width * 0.4781667,
        size.height * 0.8710000);
    path_48.cubicTo(
        size.width * 0.4780000,
        size.height * 0.8720000,
        size.width * 0.4778333,
        size.height * 0.8728333,
        size.width * 0.4776667,
        size.height * 0.8738333);
    path_48.cubicTo(
        size.width * 0.4760000,
        size.height * 0.8823333,
        size.width * 0.4711667,
        size.height * 0.8918333,
        size.width * 0.4573333,
        size.height * 0.8963333);
    path_48.cubicTo(
        size.width * 0.4570000,
        size.height * 0.8965000,
        size.width * 0.4566667,
        size.height * 0.8965000,
        size.width * 0.4563333,
        size.height * 0.8966667);
    path_48.cubicTo(
        size.width * 0.4463333,
        size.height * 0.8998333,
        size.width * 0.4326667,
        size.height * 0.9015000,
        size.width * 0.4180000,
        size.height * 0.9025000);
    path_48.lineTo(size.width * 0.4180000, size.height * 0.9023333);
    path_48.cubicTo(
        size.width * 0.4276667,
        size.height * 0.9018333,
        size.width * 0.4443333,
        size.height * 0.8983333,
        size.width * 0.4525000,
        size.height * 0.8891667);
    path_48.cubicTo(
        size.width * 0.4581667,
        size.height * 0.8828333,
        size.width * 0.4596667,
        size.height * 0.8726667,
        size.width * 0.4560000,
        size.height * 0.8650000);
    path_48.cubicTo(
        size.width * 0.4526667,
        size.height * 0.8580000,
        size.width * 0.4453333,
        size.height * 0.8535000,
        size.width * 0.4378333,
        size.height * 0.8516667);
    path_48.cubicTo(
        size.width * 0.4303333,
        size.height * 0.8496667,
        size.width * 0.4138333,
        size.height * 0.8505000,
        size.width * 0.4060000,
        size.height * 0.8506667);
    path_48.cubicTo(
        size.width * 0.4145000,
        size.height * 0.8480000,
        size.width * 0.4223333,
        size.height * 0.8431667,
        size.width * 0.4275000,
        size.height * 0.8365000);
    path_48.close();

    Paint paint_48_fill = Paint()..style = PaintingStyle.fill;
    paint_48_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_48, paint_48_fill);

    Path path_49 = Path();
    path_49.moveTo(size.width * 0.4756667, size.height * 0.7983333);
    path_49.lineTo(size.width * 0.4756667, size.height * 0.7983333);
    path_49.cubicTo(
        size.width * 0.4716667,
        size.height * 0.7910000,
        size.width * 0.4625000,
        size.height * 0.7905000,
        size.width * 0.4565000,
        size.height * 0.7940000);
    path_49.cubicTo(
        size.width * 0.4505000,
        size.height * 0.7975000,
        size.width * 0.4468333,
        size.height * 0.8038333,
        size.width * 0.4438333,
        size.height * 0.8101667);
    path_49.cubicTo(
        size.width * 0.4408333,
        size.height * 0.8165000,
        size.width * 0.4401667,
        size.height * 0.8230000,
        size.width * 0.4313333,
        size.height * 0.8306667);
    path_49.cubicTo(
        size.width * 0.4345000,
        size.height * 0.8241667,
        size.width * 0.4351667,
        size.height * 0.8166667,
        size.width * 0.4361667,
        size.height * 0.8093333);
    path_49.cubicTo(
        size.width * 0.4363333,
        size.height * 0.8081667,
        size.width * 0.4365000,
        size.height * 0.8070000,
        size.width * 0.4366667,
        size.height * 0.8058333);
    path_49.cubicTo(
        size.width * 0.4376667,
        size.height * 0.7996667,
        size.width * 0.4390000,
        size.height * 0.7936667,
        size.width * 0.4425000,
        size.height * 0.7885000);
    path_49.cubicTo(
        size.width * 0.4465000,
        size.height * 0.7825000,
        size.width * 0.4540000,
        size.height * 0.7780000,
        size.width * 0.4610000,
        size.height * 0.7796667);
    path_49.cubicTo(
        size.width * 0.4690000,
        size.height * 0.7816667,
        size.width * 0.4733333,
        size.height * 0.7900000,
        size.width * 0.4756667,
        size.height * 0.7983333);
    path_49.close();

    Paint paint_49_fill = Paint()..style = PaintingStyle.fill;
    paint_49_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_49, paint_49_fill);

    Path path_50 = Path();
    path_50.moveTo(size.width * 0.4315000, size.height * 0.6091667);
    path_50.cubicTo(
        size.width * 0.4386667,
        size.height * 0.6091667,
        size.width * 0.4445000,
        size.height * 0.6150000,
        size.width * 0.4445000,
        size.height * 0.6221667);
    path_50.cubicTo(
        size.width * 0.4445000,
        size.height * 0.6293333,
        size.width * 0.4386667,
        size.height * 0.6351667,
        size.width * 0.4315000,
        size.height * 0.6351667);
    path_50.cubicTo(
        size.width * 0.4243333,
        size.height * 0.6351667,
        size.width * 0.4185000,
        size.height * 0.6293333,
        size.width * 0.4185000,
        size.height * 0.6221667);
    path_50.cubicTo(
        size.width * 0.4185000,
        size.height * 0.6148333,
        size.width * 0.4243333,
        size.height * 0.6091667,
        size.width * 0.4315000,
        size.height * 0.6091667);
    path_50.close();

    Paint paint_50_fill = Paint()..style = PaintingStyle.fill;
    paint_50_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_50, paint_50_fill);

    Path path_51 = Path();
    path_51.moveTo(size.width * 0.4365000, size.height * 0.8058333);
    path_51.lineTo(size.width * 0.4365000, size.height * 0.8058333);
    path_51.cubicTo(
        size.width * 0.4363333,
        size.height * 0.8070000,
        size.width * 0.4361667,
        size.height * 0.8081667,
        size.width * 0.4360000,
        size.height * 0.8093333);
    path_51.cubicTo(
        size.width * 0.4350000,
        size.height * 0.8165000,
        size.width * 0.4343333,
        size.height * 0.8240000,
        size.width * 0.4311667,
        size.height * 0.8306667);
    path_51.cubicTo(
        size.width * 0.4301667,
        size.height * 0.8326667,
        size.width * 0.4290000,
        size.height * 0.8346667,
        size.width * 0.4275000,
        size.height * 0.8365000);
    path_51.cubicTo(
        size.width * 0.3825000,
        size.height * 0.8353333,
        size.width * 0.3470000,
        size.height * 0.8320000,
        size.width * 0.3323333,
        size.height * 0.8270000);
    path_51.cubicTo(
        size.width * 0.3310000,
        size.height * 0.8238333,
        size.width * 0.3301667,
        size.height * 0.8205000,
        size.width * 0.3293333,
        size.height * 0.8171667);
    path_51.cubicTo(
        size.width * 0.3375000,
        size.height * 0.8136667,
        size.width * 0.3556667,
        size.height * 0.8106667,
        size.width * 0.3798333,
        size.height * 0.8086667);
    path_51.lineTo(size.width * 0.3798333, size.height * 0.8085000);
    path_51.cubicTo(
        size.width * 0.3826667,
        size.height * 0.8110000,
        size.width * 0.3860000,
        size.height * 0.8126667,
        size.width * 0.3898333,
        size.height * 0.8128333);
    path_51.cubicTo(
        size.width * 0.3953333,
        size.height * 0.8133333,
        size.width * 0.4005000,
        size.height * 0.8108333,
        size.width * 0.4045000,
        size.height * 0.8068333);
    path_51.cubicTo(
        size.width * 0.4146667,
        size.height * 0.8065000,
        size.width * 0.4253333,
        size.height * 0.8061667,
        size.width * 0.4365000,
        size.height * 0.8058333);
    path_51.close();

    Paint paint_51_fill = Paint()..style = PaintingStyle.fill;
    paint_51_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_51, paint_51_fill);

    Path path_52 = Path();
    path_52.moveTo(size.width * 0.4275000, size.height * 0.8365000);
    path_52.cubicTo(
        size.width * 0.4223333,
        size.height * 0.8433333,
        size.width * 0.4145000,
        size.height * 0.8481667,
        size.width * 0.4061667,
        size.height * 0.8506667);
    path_52.cubicTo(
        size.width * 0.3956667,
        size.height * 0.8538333,
        size.width * 0.3845000,
        size.height * 0.8536667,
        size.width * 0.3735000,
        size.height * 0.8525000);
    path_52.cubicTo(
        size.width * 0.3613333,
        size.height * 0.8511667,
        size.width * 0.3483333,
        size.height * 0.8480000,
        size.width * 0.3398333,
        size.height * 0.8390000);
    path_52.cubicTo(
        size.width * 0.3365000,
        size.height * 0.8355000,
        size.width * 0.3340000,
        size.height * 0.8313333,
        size.width * 0.3323333,
        size.height * 0.8270000);
    path_52.cubicTo(
        size.width * 0.3470000,
        size.height * 0.8320000,
        size.width * 0.3826667,
        size.height * 0.8351667,
        size.width * 0.4275000,
        size.height * 0.8365000);
    path_52.close();

    Paint paint_52_fill = Paint()..style = PaintingStyle.fill;
    paint_52_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_52, paint_52_fill);

    Path path_53 = Path();
    path_53.moveTo(size.width * 0.4046667, size.height * 0.8070000);
    path_53.cubicTo(
        size.width * 0.4006667,
        size.height * 0.8108333,
        size.width * 0.3953333,
        size.height * 0.8135000,
        size.width * 0.3900000,
        size.height * 0.8130000);
    path_53.cubicTo(
        size.width * 0.3863333,
        size.height * 0.8126667,
        size.width * 0.3828333,
        size.height * 0.8110000,
        size.width * 0.3800000,
        size.height * 0.8086667);
    path_53.cubicTo(
        size.width * 0.3773333,
        size.height * 0.8063333,
        size.width * 0.3750000,
        size.height * 0.8031667,
        size.width * 0.3736667,
        size.height * 0.7998333);
    path_53.cubicTo(
        size.width * 0.3706667,
        size.height * 0.7931667,
        size.width * 0.3703333,
        size.height * 0.7855000,
        size.width * 0.3705000,
        size.height * 0.7781667);
    path_53.cubicTo(
        size.width * 0.3705000,
        size.height * 0.7678333,
        size.width * 0.3711667,
        size.height * 0.7575000,
        size.width * 0.3695000,
        size.height * 0.7475000);
    path_53.cubicTo(
        size.width * 0.3685000,
        size.height * 0.7415000,
        size.width * 0.3668333,
        size.height * 0.7353333,
        size.width * 0.3638333,
        size.height * 0.7300000);
    path_53.cubicTo(
        size.width * 0.3618333,
        size.height * 0.7263333,
        size.width * 0.3593333,
        size.height * 0.7231667,
        size.width * 0.3563333,
        size.height * 0.7203333);
    path_53.cubicTo(
        size.width * 0.3513333,
        size.height * 0.7158333,
        size.width * 0.3458333,
        size.height * 0.7143333,
        size.width * 0.3393333,
        size.height * 0.7145000);
    path_53.cubicTo(
        size.width * 0.3505000,
        size.height * 0.7135000,
        size.width * 0.3650000,
        size.height * 0.7136667,
        size.width * 0.3721667,
        size.height * 0.7200000);
    path_53.cubicTo(
        size.width * 0.3781667,
        size.height * 0.7253333,
        size.width * 0.3805000,
        size.height * 0.7335000,
        size.width * 0.3808333,
        size.height * 0.7415000);
    path_53.cubicTo(
        size.width * 0.3813333,
        size.height * 0.7495000,
        size.width * 0.3818333,
        size.height * 0.7573333,
        size.width * 0.3821667,
        size.height * 0.7653333);
    path_53.cubicTo(
        size.width * 0.3825000,
        size.height * 0.7733333,
        size.width * 0.3830000,
        size.height * 0.7816667,
        size.width * 0.3888333,
        size.height * 0.7870000);
    path_53.cubicTo(
        size.width * 0.3946667,
        size.height * 0.7925000,
        size.width * 0.4065000,
        size.height * 0.7951667,
        size.width * 0.4141667,
        size.height * 0.7841667);
    path_53.lineTo(size.width * 0.4143333, size.height * 0.7841667);
    path_53.cubicTo(
        size.width * 0.4133333,
        size.height * 0.7906667,
        size.width * 0.4118333,
        size.height * 0.7971667,
        size.width * 0.4081667,
        size.height * 0.8026667);
    path_53.cubicTo(
        size.width * 0.4073333,
        size.height * 0.8041667,
        size.width * 0.4060000,
        size.height * 0.8056667,
        size.width * 0.4046667,
        size.height * 0.8070000);
    path_53.close();

    Paint paint_53_fill = Paint()..style = PaintingStyle.fill;
    paint_53_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_53, paint_53_fill);

    Path path_54 = Path();
    path_54.moveTo(size.width * 0.3800000, size.height * 0.8085000);
    path_54.lineTo(size.width * 0.3800000, size.height * 0.8085000);
    path_54.cubicTo(
        size.width * 0.3558333,
        size.height * 0.8106667,
        size.width * 0.3376667,
        size.height * 0.8135000,
        size.width * 0.3295000,
        size.height * 0.8170000);
    path_54.cubicTo(
        size.width * 0.3285000,
        size.height * 0.8126667,
        size.width * 0.3280000,
        size.height * 0.8083333,
        size.width * 0.3276667,
        size.height * 0.8040000);
    path_54.cubicTo(
        size.width * 0.3263333,
        size.height * 0.7895000,
        size.width * 0.3271667,
        size.height * 0.7750000,
        size.width * 0.3273333,
        size.height * 0.7603333);
    path_54.cubicTo(
        size.width * 0.3276667,
        size.height * 0.7345000,
        size.width * 0.3405000,
        size.height * 0.7291667,
        size.width * 0.3636667,
        size.height * 0.7300000);
    path_54.lineTo(size.width * 0.3638333, size.height * 0.7298333);
    path_54.cubicTo(
        size.width * 0.3668333,
        size.height * 0.7351667,
        size.width * 0.3685000,
        size.height * 0.7413333,
        size.width * 0.3695000,
        size.height * 0.7473333);
    path_54.cubicTo(
        size.width * 0.3710000,
        size.height * 0.7575000,
        size.width * 0.3705000,
        size.height * 0.7678333,
        size.width * 0.3705000,
        size.height * 0.7780000);
    path_54.cubicTo(
        size.width * 0.3705000,
        size.height * 0.7853333,
        size.width * 0.3708333,
        size.height * 0.7928333,
        size.width * 0.3736667,
        size.height * 0.7996667);
    path_54.cubicTo(
        size.width * 0.3751667,
        size.height * 0.8031667,
        size.width * 0.3773333,
        size.height * 0.8061667,
        size.width * 0.3800000,
        size.height * 0.8085000);
    path_54.close();

    Paint paint_54_fill = Paint()..style = PaintingStyle.fill;
    paint_54_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_54, paint_54_fill);

    Path path_55 = Path();
    path_55.moveTo(size.width * 0.3661667, size.height * 0.9025000);
    path_55.cubicTo(
        size.width * 0.3581667,
        size.height * 0.9021667,
        size.width * 0.3508333,
        size.height * 0.9015000,
        size.width * 0.3445000,
        size.height * 0.9010000);
    path_55.cubicTo(
        size.width * 0.3283333,
        size.height * 0.8995000,
        size.width * 0.3115000,
        size.height * 0.8980000,
        size.width * 0.2980000,
        size.height * 0.8896667);
    path_55.cubicTo(
        size.width * 0.2966667,
        size.height * 0.8888333,
        size.width * 0.2953333,
        size.height * 0.8878333,
        size.width * 0.2940000,
        size.height * 0.8868333);
    path_55.cubicTo(
        size.width * 0.2853333,
        size.height * 0.8803333,
        size.width * 0.2791667,
        size.height * 0.8715000,
        size.width * 0.2746667,
        size.height * 0.8616667);
    path_55.cubicTo(
        size.width * 0.2686667,
        size.height * 0.8485000,
        size.width * 0.2658333,
        size.height * 0.8333333,
        size.width * 0.2645000,
        size.height * 0.8188333);
    path_55.cubicTo(
        size.width * 0.2635000,
        size.height * 0.8073333,
        size.width * 0.2630000,
        size.height * 0.7958333,
        size.width * 0.2633333,
        size.height * 0.7845000);
    path_55.cubicTo(
        size.width * 0.2636667,
        size.height * 0.7705000,
        size.width * 0.2650000,
        size.height * 0.7565000,
        size.width * 0.2675000,
        size.height * 0.7426667);
    path_55.cubicTo(
        size.width * 0.2678333,
        size.height * 0.7406667,
        size.width * 0.2681667,
        size.height * 0.7385000,
        size.width * 0.2686667,
        size.height * 0.7363333);
    path_55.cubicTo(
        size.width * 0.2720000,
        size.height * 0.7206667,
        size.width * 0.2776667,
        size.height * 0.7035000,
        size.width * 0.2868333,
        size.height * 0.6895000);
    path_55.cubicTo(
        size.width * 0.2883333,
        size.height * 0.6871667,
        size.width * 0.2900000,
        size.height * 0.6848333,
        size.width * 0.2918333,
        size.height * 0.6826667);
    path_55.cubicTo(
        size.width * 0.2935000,
        size.height * 0.6805000,
        size.width * 0.2953333,
        size.height * 0.6785000,
        size.width * 0.2973333,
        size.height * 0.6766667);
    path_55.lineTo(size.width * 0.2973333, size.height * 0.6766667);
    path_55.cubicTo(
        size.width * 0.2830000,
        size.height * 0.7045000,
        size.width * 0.2791667,
        size.height * 0.7291667,
        size.width * 0.2760000,
        size.height * 0.7601667);
    path_55.cubicTo(
        size.width * 0.2728333,
        size.height * 0.7911667,
        size.width * 0.2766667,
        size.height * 0.8330000,
        size.width * 0.2925000,
        size.height * 0.8598333);
    path_55.cubicTo(
        size.width * 0.3083333,
        size.height * 0.8866667,
        size.width * 0.3353333,
        size.height * 0.8983333,
        size.width * 0.3661667,
        size.height * 0.9025000);
    path_55.close();

    Paint paint_55_fill = Paint()..style = PaintingStyle.fill;
    paint_55_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_55, paint_55_fill);

    Path path_56 = Path();
    path_56.moveTo(size.width * 0.3041667, size.height * 0.5198333);
    path_56.cubicTo(
        size.width * 0.3171667,
        size.height * 0.5258333,
        size.width * 0.3265000,
        size.height * 0.5400000,
        size.width * 0.3250000,
        size.height * 0.5541667);
    path_56.cubicTo(
        size.width * 0.3243333,
        size.height * 0.5608333,
        size.width * 0.3198333,
        size.height * 0.5681667,
        size.width * 0.3131667,
        size.height * 0.5680000);
    path_56.cubicTo(
        size.width * 0.3080000,
        size.height * 0.5680000,
        size.width * 0.3040000,
        size.height * 0.5633333,
        size.width * 0.3013333,
        size.height * 0.5586667);
    path_56.cubicTo(
        size.width * 0.2951667,
        size.height * 0.5473333,
        size.width * 0.2933333,
        size.height * 0.5336667,
        size.width * 0.2965000,
        size.height * 0.5211667);
    path_56.cubicTo(
        size.width * 0.2968333,
        size.height * 0.5198333,
        size.width * 0.2971667,
        size.height * 0.5186667,
        size.width * 0.2976667,
        size.height * 0.5173333);
    path_56.cubicTo(
        size.width * 0.3000000,
        size.height * 0.5181667,
        size.width * 0.3021667,
        size.height * 0.5190000,
        size.width * 0.3041667,
        size.height * 0.5198333);
    path_56.close();

    Paint paint_56_fill = Paint()..style = PaintingStyle.fill;
    paint_56_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_56, paint_56_fill);

    Path path_57 = Path();
    path_57.moveTo(size.width * 0.3250000, size.height * 0.5543333);
    path_57.cubicTo(
        size.width * 0.3265000,
        size.height * 0.5401667,
        size.width * 0.3171667,
        size.height * 0.5260000,
        size.width * 0.3041667,
        size.height * 0.5200000);
    path_57.cubicTo(
        size.width * 0.3021667,
        size.height * 0.5190000,
        size.width * 0.3000000,
        size.height * 0.5183333,
        size.width * 0.2978333,
        size.height * 0.5176667);
    path_57.cubicTo(
        size.width * 0.3015000,
        size.height * 0.5066667,
        size.width * 0.3091667,
        size.height * 0.4970000,
        size.width * 0.3190000,
        size.height * 0.4908333);
    path_57.lineTo(size.width * 0.3191667, size.height * 0.4906667);
    path_57.cubicTo(
        size.width * 0.3318333,
        size.height * 0.5016667,
        size.width * 0.3398333,
        size.height * 0.5180000,
        size.width * 0.3398333,
        size.height * 0.5361667);
    path_57.cubicTo(
        size.width * 0.3398333,
        size.height * 0.5530000,
        size.width * 0.3328333,
        size.height * 0.5683333,
        size.width * 0.3216667,
        size.height * 0.5793333);
    path_57.cubicTo(
        size.width * 0.3093333,
        size.height * 0.5855000,
        size.width * 0.2860000,
        size.height * 0.5836667,
        size.width * 0.2745000,
        size.height * 0.5761667);
    path_57.cubicTo(
        size.width * 0.2630000,
        size.height * 0.5688333,
        size.width * 0.2548333,
        size.height * 0.5563333,
        size.width * 0.2526667,
        size.height * 0.5428333);
    path_57.cubicTo(
        size.width * 0.2520000,
        size.height * 0.5381667,
        size.width * 0.2518333,
        size.height * 0.5335000,
        size.width * 0.2523333,
        size.height * 0.5288333);
    path_57.cubicTo(
        size.width * 0.2555000,
        size.height * 0.5263333,
        size.width * 0.2588333,
        size.height * 0.5241667,
        size.width * 0.2628333,
        size.height * 0.5220000);
    path_57.cubicTo(
        size.width * 0.2735000,
        size.height * 0.5163333,
        size.width * 0.2863333,
        size.height * 0.5145000,
        size.width * 0.2978333,
        size.height * 0.5176667);
    path_57.cubicTo(
        size.width * 0.2973333,
        size.height * 0.5190000,
        size.width * 0.2970000,
        size.height * 0.5201667,
        size.width * 0.2966667,
        size.height * 0.5215000);
    path_57.cubicTo(
        size.width * 0.2935000,
        size.height * 0.5340000,
        size.width * 0.2951667,
        size.height * 0.5476667,
        size.width * 0.3015000,
        size.height * 0.5590000);
    path_57.cubicTo(
        size.width * 0.3040000,
        size.height * 0.5636667,
        size.width * 0.3080000,
        size.height * 0.5681667,
        size.width * 0.3133333,
        size.height * 0.5683333);
    path_57.cubicTo(
        size.width * 0.3198333,
        size.height * 0.5683333,
        size.width * 0.3243333,
        size.height * 0.5608333,
        size.width * 0.3250000,
        size.height * 0.5543333);
    path_57.close();

    Paint paint_57_fill = Paint()..style = PaintingStyle.fill;
    paint_57_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_57, paint_57_fill);

    Path path_58 = Path();
    path_58.moveTo(size.width * 0.3198333, size.height * 0.4166667);
    path_58.lineTo(size.width * 0.3198333, size.height * 0.4166667);
    path_58.cubicTo(
        size.width * 0.3105000,
        size.height * 0.4345000,
        size.width * 0.2895000,
        size.height * 0.4446667,
        size.width * 0.2693333,
        size.height * 0.4436667);
    path_58.cubicTo(
        size.width * 0.2458333,
        size.height * 0.4425000,
        size.width * 0.2295000,
        size.height * 0.4225000,
        size.width * 0.2263333,
        size.height * 0.4043333);
    path_58.cubicTo(
        size.width * 0.2203333,
        size.height * 0.3846667,
        size.width * 0.2210000,
        size.height * 0.3365000,
        size.width * 0.2248333,
        size.height * 0.2973333);
    path_58.lineTo(size.width * 0.2250000, size.height * 0.2973333);
    path_58.cubicTo(
        size.width * 0.2251667,
        size.height * 0.3168333,
        size.width * 0.2255000,
        size.height * 0.3371667,
        size.width * 0.2336667,
        size.height * 0.3548333);
    path_58.cubicTo(
        size.width * 0.2373333,
        size.height * 0.3626667,
        size.width * 0.2428333,
        size.height * 0.3698333,
        size.width * 0.2495000,
        size.height * 0.3751667);
    path_58.cubicTo(
        size.width * 0.2498333,
        size.height * 0.3760000,
        size.width * 0.2503333,
        size.height * 0.3770000,
        size.width * 0.2506667,
        size.height * 0.3778333);
    path_58.cubicTo(
        size.width * 0.2561667,
        size.height * 0.3898333,
        size.width * 0.2655000,
        size.height * 0.4006667,
        size.width * 0.2780000,
        size.height * 0.4053333);
    path_58.cubicTo(
        size.width * 0.2905000,
        size.height * 0.4100000,
        size.width * 0.3043333,
        size.height * 0.4078333,
        size.width * 0.3165000,
        size.height * 0.3955000);
    path_58.lineTo(size.width * 0.3170000, size.height * 0.3955000);
    path_58.cubicTo(
        size.width * 0.3173333,
        size.height * 0.3996667,
        size.width * 0.3176667,
        size.height * 0.4036667,
        size.width * 0.3183333,
        size.height * 0.4076667);
    path_58.cubicTo(
        size.width * 0.3190000,
        size.height * 0.4106667,
        size.width * 0.3193333,
        size.height * 0.4136667,
        size.width * 0.3198333,
        size.height * 0.4166667);
    path_58.close();

    Paint paint_58_fill = Paint()..style = PaintingStyle.fill;
    paint_58_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_58, paint_58_fill);

    Path path_59 = Path();
    path_59.moveTo(size.width * 0.3190000, size.height * 0.4906667);
    path_59.lineTo(size.width * 0.3190000, size.height * 0.4906667);
    path_59.cubicTo(
        size.width * 0.3091667,
        size.height * 0.4970000,
        size.width * 0.3015000,
        size.height * 0.5066667,
        size.width * 0.2978333,
        size.height * 0.5175000);
    path_59.cubicTo(
        size.width * 0.2863333,
        size.height * 0.5143333,
        size.width * 0.2733333,
        size.height * 0.5161667,
        size.width * 0.2628333,
        size.height * 0.5218333);
    path_59.cubicTo(
        size.width * 0.2590000,
        size.height * 0.5240000,
        size.width * 0.2555000,
        size.height * 0.5261667,
        size.width * 0.2523333,
        size.height * 0.5286667);
    path_59.cubicTo(
        size.width * 0.2530000,
        size.height * 0.5218333,
        size.width * 0.2548333,
        size.height * 0.5151667,
        size.width * 0.2575000,
        size.height * 0.5088333);
    path_59.cubicTo(
        size.width * 0.2618333,
        size.height * 0.4981667,
        size.width * 0.2685000,
        size.height * 0.4868333,
        size.width * 0.2795000,
        size.height * 0.4756667);
    path_59.cubicTo(
        size.width * 0.2945000,
        size.height * 0.4758333,
        size.width * 0.3085000,
        size.height * 0.4813333,
        size.width * 0.3190000,
        size.height * 0.4906667);
    path_59.close();

    Paint paint_59_fill = Paint()..style = PaintingStyle.fill;
    paint_59_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_59, paint_59_fill);

    Path path_60 = Path();
    path_60.moveTo(size.width * 0.3171667, size.height * 0.3955000);
    path_60.lineTo(size.width * 0.3166667, size.height * 0.3955000);
    path_60.cubicTo(
        size.width * 0.3045000,
        size.height * 0.4078333,
        size.width * 0.2905000,
        size.height * 0.4101667,
        size.width * 0.2781667,
        size.height * 0.4053333);
    path_60.cubicTo(
        size.width * 0.2658333,
        size.height * 0.4005000,
        size.width * 0.2565000,
        size.height * 0.3898333,
        size.width * 0.2508333,
        size.height * 0.3778333);
    path_60.cubicTo(
        size.width * 0.2505000,
        size.height * 0.3770000,
        size.width * 0.2500000,
        size.height * 0.3760000,
        size.width * 0.2496667,
        size.height * 0.3751667);
    path_60.cubicTo(
        size.width * 0.2583333,
        size.height * 0.3821667,
        size.width * 0.2688333,
        size.height * 0.3860000,
        size.width * 0.2798333,
        size.height * 0.3846667);
    path_60.cubicTo(
        size.width * 0.2953333,
        size.height * 0.3825000,
        size.width * 0.3075000,
        size.height * 0.3705000,
        size.width * 0.3161667,
        size.height * 0.3575000);
    path_60.lineTo(size.width * 0.3165000, size.height * 0.3575000);
    path_60.cubicTo(
        size.width * 0.3160000,
        size.height * 0.3703333,
        size.width * 0.3161667,
        size.height * 0.3831667,
        size.width * 0.3171667,
        size.height * 0.3955000);
    path_60.close();

    Paint paint_60_fill = Paint()..style = PaintingStyle.fill;
    paint_60_fill.color = Color(0xff62B57F).withOpacity(1.0);
    canvas.drawPath(path_60, paint_60_fill);

    Path path_61 = Path();
    path_61.moveTo(size.width * 0.3118333, size.height * 0.6643333);
    path_61.lineTo(size.width * 0.3123333, size.height * 0.6655000);
    path_61.cubicTo(
        size.width * 0.3100000,
        size.height * 0.6666667,
        size.width * 0.3078333,
        size.height * 0.6680000,
        size.width * 0.3058333,
        size.height * 0.6693333);
    path_61.lineTo(size.width * 0.3056667, size.height * 0.6690000);
    path_61.cubicTo(
        size.width * 0.3020000,
        size.height * 0.6678333,
        size.width * 0.2976667,
        size.height * 0.6676667,
        size.width * 0.2931667,
        size.height * 0.6681667);
    path_61.cubicTo(
        size.width * 0.2913333,
        size.height * 0.6578333,
        size.width * 0.2818333,
        size.height * 0.6525000,
        size.width * 0.2743333,
        size.height * 0.6521667);
    path_61.lineTo(size.width * 0.2743333, size.height * 0.6521667);
    path_61.cubicTo(
        size.width * 0.2765000,
        size.height * 0.6518333,
        size.width * 0.2788333,
        size.height * 0.6516667,
        size.width * 0.2811667,
        size.height * 0.6516667);
    path_61.cubicTo(
        size.width * 0.2931667,
        size.height * 0.6516667,
        size.width * 0.3040000,
        size.height * 0.6565000,
        size.width * 0.3118333,
        size.height * 0.6643333);
    path_61.close();

    Paint paint_61_fill = Paint()..style = PaintingStyle.fill;
    paint_61_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_61, paint_61_fill);

    Path path_62 = Path();
    path_62.moveTo(size.width * 0.3216667, size.height * 0.5791667);
    path_62.cubicTo(
        size.width * 0.3176667,
        size.height * 0.5831667,
        size.width * 0.3130000,
        size.height * 0.5865000,
        size.width * 0.3080000,
        size.height * 0.5891667);
    path_62.lineTo(size.width * 0.3080000, size.height * 0.5890000);
    path_62.cubicTo(
        size.width * 0.2888333,
        size.height * 0.5940000,
        size.width * 0.2638333,
        size.height * 0.5848333,
        size.width * 0.2528333,
        size.height * 0.5725000);
    path_62.cubicTo(
        size.width * 0.2450000,
        size.height * 0.5638333,
        size.width * 0.2400000,
        size.height * 0.5545000,
        size.width * 0.2380000,
        size.height * 0.5438333);
    path_62.cubicTo(
        size.width * 0.2420000,
        size.height * 0.5380000,
        size.width * 0.2465000,
        size.height * 0.5330000,
        size.width * 0.2523333,
        size.height * 0.5285000);
    path_62.cubicTo(
        size.width * 0.2518333,
        size.height * 0.5331667,
        size.width * 0.2518333,
        size.height * 0.5378333,
        size.width * 0.2526667,
        size.height * 0.5425000);
    path_62.cubicTo(
        size.width * 0.2548333,
        size.height * 0.5560000,
        size.width * 0.2630000,
        size.height * 0.5685000,
        size.width * 0.2745000,
        size.height * 0.5758333);
    path_62.cubicTo(
        size.width * 0.2860000,
        size.height * 0.5835000,
        size.width * 0.3093333,
        size.height * 0.5853333,
        size.width * 0.3216667,
        size.height * 0.5791667);
    path_62.close();

    Paint paint_62_fill = Paint()..style = PaintingStyle.fill;
    paint_62_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_62, paint_62_fill);

    Path path_63 = Path();
    path_63.moveTo(size.width * 0.3078333, size.height * 0.5891667);
    path_63.lineTo(size.width * 0.3078333, size.height * 0.5891667);
    path_63.cubicTo(
        size.width * 0.2993333,
        size.height * 0.5938333,
        size.width * 0.2896667,
        size.height * 0.5965000,
        size.width * 0.2793333,
        size.height * 0.5965000);
    path_63.cubicTo(
        size.width * 0.2566667,
        size.height * 0.5965000,
        size.width * 0.2368333,
        size.height * 0.5840000,
        size.width * 0.2265000,
        size.height * 0.5653333);
    path_63.lineTo(size.width * 0.2266667, size.height * 0.5651667);
    path_63.cubicTo(
        size.width * 0.2301667,
        size.height * 0.5571667,
        size.width * 0.2336667,
        size.height * 0.5500000,
        size.width * 0.2378333,
        size.height * 0.5438333);
    path_63.cubicTo(
        size.width * 0.2398333,
        size.height * 0.5545000,
        size.width * 0.2448333,
        size.height * 0.5638333,
        size.width * 0.2526667,
        size.height * 0.5725000);
    path_63.cubicTo(
        size.width * 0.2638333,
        size.height * 0.5848333,
        size.width * 0.2886667,
        size.height * 0.5941667,
        size.width * 0.3078333,
        size.height * 0.5891667);
    path_63.close();

    Paint paint_63_fill = Paint()..style = PaintingStyle.fill;
    paint_63_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_63, paint_63_fill);

    Path path_64 = Path();
    path_64.moveTo(size.width * 0.3056667, size.height * 0.6691667);
    path_64.lineTo(size.width * 0.3058333, size.height * 0.6695000);
    path_64.cubicTo(
        size.width * 0.3028333,
        size.height * 0.6716667,
        size.width * 0.2998333,
        size.height * 0.6740000,
        size.width * 0.2971667,
        size.height * 0.6766667);
    path_64.cubicTo(
        size.width * 0.2953333,
        size.height * 0.6785000,
        size.width * 0.2935000,
        size.height * 0.6805000,
        size.width * 0.2916667,
        size.height * 0.6826667);
    path_64.lineTo(size.width * 0.2913333, size.height * 0.6823333);
    path_64.cubicTo(
        size.width * 0.2933333,
        size.height * 0.6770000,
        size.width * 0.2936667,
        size.height * 0.6723333,
        size.width * 0.2930000,
        size.height * 0.6683333);
    path_64.cubicTo(
        size.width * 0.2976667,
        size.height * 0.6676667,
        size.width * 0.3020000,
        size.height * 0.6680000,
        size.width * 0.3056667,
        size.height * 0.6691667);
    path_64.close();

    Paint paint_64_fill = Paint()..style = PaintingStyle.fill;
    paint_64_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_64, paint_64_fill);

    Path path_65 = Path();
    path_65.moveTo(size.width * 0.2980000, size.height * 0.8896667);
    path_65.lineTo(size.width * 0.2978333, size.height * 0.8900000);
    path_65.cubicTo(
        size.width * 0.2456667,
        size.height * 0.8903333,
        size.width * 0.1935000,
        size.height * 0.8890000,
        size.width * 0.1413333,
        size.height * 0.8891667);
    path_65.cubicTo(
        size.width * 0.1300000,
        size.height * 0.8891667,
        size.width * 0.1173333,
        size.height * 0.8870000,
        size.width * 0.1100000,
        size.height * 0.8783333);
    path_65.cubicTo(
        size.width * 0.1060000,
        size.height * 0.8735000,
        size.width * 0.1046667,
        size.height * 0.8685000,
        size.width * 0.1050000,
        size.height * 0.8630000);
    path_65.lineTo(size.width * 0.1060000, size.height * 0.8630000);
    path_65.cubicTo(
        size.width * 0.1618333,
        size.height * 0.8626667,
        size.width * 0.2176667,
        size.height * 0.8623333,
        size.width * 0.2733333,
        size.height * 0.8620000);
    path_65.lineTo(size.width * 0.2743333, size.height * 0.8615000);
    path_65.cubicTo(
        size.width * 0.2788333,
        size.height * 0.8713333,
        size.width * 0.2850000,
        size.height * 0.8800000,
        size.width * 0.2936667,
        size.height * 0.8866667);
    path_65.cubicTo(
        size.width * 0.2953333,
        size.height * 0.8880000,
        size.width * 0.2966667,
        size.height * 0.8888333,
        size.width * 0.2980000,
        size.height * 0.8896667);
    path_65.close();

    Paint paint_65_fill = Paint()..style = PaintingStyle.fill;
    paint_65_fill.color = Color(0xff1E5C9A).withOpacity(1.0);
    canvas.drawPath(path_65, paint_65_fill);

    Path path_66 = Path();
    path_66.moveTo(size.width * 0.2931667, size.height * 0.6683333);
    path_66.cubicTo(
        size.width * 0.2938333,
        size.height * 0.6723333,
        size.width * 0.2935000,
        size.height * 0.6770000,
        size.width * 0.2915000,
        size.height * 0.6823333);
    path_66.lineTo(size.width * 0.2918333, size.height * 0.6826667);
    path_66.cubicTo(
        size.width * 0.2900000,
        size.height * 0.6848333,
        size.width * 0.2883333,
        size.height * 0.6871667,
        size.width * 0.2868333,
        size.height * 0.6895000);
    path_66.lineTo(size.width * 0.2866667, size.height * 0.6893333);
    path_66.cubicTo(
        size.width * 0.2870000,
        size.height * 0.6800000,
        size.width * 0.2856667,
        size.height * 0.6743333,
        size.width * 0.2833333,
        size.height * 0.6705000);
    path_66.cubicTo(
        size.width * 0.2865000,
        size.height * 0.6693333,
        size.width * 0.2898333,
        size.height * 0.6686667,
        size.width * 0.2931667,
        size.height * 0.6683333);
    path_66.close();

    Paint paint_66_fill = Paint()..style = PaintingStyle.fill;
    paint_66_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_66, paint_66_fill);

    Path path_67 = Path();
    path_67.moveTo(size.width * 0.2906667, size.height * 0.2076667);
    path_67.lineTo(size.width * 0.2906667, size.height * 0.2080000);
    path_67.cubicTo(
        size.width * 0.2673333,
        size.height * 0.2193333,
        size.width * 0.2540000,
        size.height * 0.2400000,
        size.width * 0.2470000,
        size.height * 0.2615000);
    path_67.cubicTo(
        size.width * 0.2356667,
        size.height * 0.2700000,
        size.width * 0.2271667,
        size.height * 0.2816667,
        size.width * 0.2250000,
        size.height * 0.2955000);
    path_67.lineTo(size.width * 0.2250000, size.height * 0.2955000);
    path_67.cubicTo(
        size.width * 0.2251667,
        size.height * 0.2938333,
        size.width * 0.2253333,
        size.height * 0.2920000,
        size.width * 0.2255000,
        size.height * 0.2903333);
    path_67.cubicTo(
        size.width * 0.2278333,
        size.height * 0.2688333,
        size.width * 0.2325000,
        size.height * 0.2461667,
        size.width * 0.2470000,
        size.height * 0.2301667);
    path_67.cubicTo(
        size.width * 0.2575000,
        size.height * 0.2186667,
        size.width * 0.2723333,
        size.height * 0.2118333,
        size.width * 0.2873333,
        size.height * 0.2083333);
    path_67.cubicTo(
        size.width * 0.2886667,
        size.height * 0.2080000,
        size.width * 0.2896667,
        size.height * 0.2078333,
        size.width * 0.2906667,
        size.height * 0.2076667);
    path_67.close();

    Paint paint_67_fill = Paint()..style = PaintingStyle.fill;
    paint_67_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_67, paint_67_fill);

    Path path_68 = Path();
    path_68.moveTo(size.width * 0.2866667, size.height * 0.6893333);
    path_68.lineTo(size.width * 0.2868333, size.height * 0.6895000);
    path_68.cubicTo(
        size.width * 0.2775000,
        size.height * 0.7036667,
        size.width * 0.2718333,
        size.height * 0.7208333,
        size.width * 0.2686667,
        size.height * 0.7363333);
    path_68.lineTo(size.width * 0.2678333, size.height * 0.7361667);
    path_68.cubicTo(
        size.width * 0.2593333,
        size.height * 0.7333333,
        size.width * 0.2520000,
        size.height * 0.7280000,
        size.width * 0.2468333,
        size.height * 0.7211667);
    path_68.cubicTo(
        size.width * 0.2455000,
        size.height * 0.7056667,
        size.width * 0.2538333,
        size.height * 0.6905000,
        size.width * 0.2636667,
        size.height * 0.6815000);
    path_68.cubicTo(
        size.width * 0.2685000,
        size.height * 0.6770000,
        size.width * 0.2758333,
        size.height * 0.6730000,
        size.width * 0.2833333,
        size.height * 0.6705000);
    path_68.cubicTo(
        size.width * 0.2856667,
        size.height * 0.6743333,
        size.width * 0.2870000,
        size.height * 0.6800000,
        size.width * 0.2866667,
        size.height * 0.6893333);
    path_68.close();

    Paint paint_68_fill = Paint()..style = PaintingStyle.fill;
    paint_68_fill.color = Color(0xffE64337).withOpacity(1.0);
    canvas.drawPath(path_68, paint_68_fill);

    Path path_69 = Path();
    path_69.moveTo(size.width * 0.2931667, size.height * 0.6683333);
    path_69.cubicTo(
        size.width * 0.2900000,
        size.height * 0.6686667,
        size.width * 0.2866667,
        size.height * 0.6695000,
        size.width * 0.2833333,
        size.height * 0.6705000);
    path_69.cubicTo(
        size.width * 0.2816667,
        size.height * 0.6676667,
        size.width * 0.2795000,
        size.height * 0.6658333,
        size.width * 0.2770000,
        size.height * 0.6640000);
    path_69.cubicTo(
        size.width * 0.2711667,
        size.height * 0.6598333,
        size.width * 0.2633333,
        size.height * 0.6586667,
        size.width * 0.2565000,
        size.height * 0.6606667);
    path_69.lineTo(size.width * 0.2558333, size.height * 0.6598333);
    path_69.cubicTo(
        size.width * 0.2611667,
        size.height * 0.6560000,
        size.width * 0.2675000,
        size.height * 0.6533333,
        size.width * 0.2743333,
        size.height * 0.6521667);
    path_69.lineTo(size.width * 0.2743333, size.height * 0.6521667);
    path_69.cubicTo(
        size.width * 0.2818333,
        size.height * 0.6526667,
        size.width * 0.2911667,
        size.height * 0.6580000,
        size.width * 0.2931667,
        size.height * 0.6683333);
    path_69.close();

    Paint paint_69_fill = Paint()..style = PaintingStyle.fill;
    paint_69_fill.color = Color(0xffFF9B19).withOpacity(1.0);
    canvas.drawPath(path_69, paint_69_fill);

    Path path_70 = Path();
    path_70.moveTo(size.width * 0.2770000, size.height * 0.6640000);
    path_70.cubicTo(
        size.width * 0.2795000,
        size.height * 0.6656667,
        size.width * 0.2816667,
        size.height * 0.6676667,
        size.width * 0.2833333,
        size.height * 0.6705000);
    path_70.cubicTo(
        size.width * 0.2756667,
        size.height * 0.6730000,
        size.width * 0.2685000,
        size.height * 0.6770000,
        size.width * 0.2636667,
        size.height * 0.6815000);
    path_70.cubicTo(
        size.width * 0.2538333,
        size.height * 0.6905000,
        size.width * 0.2455000,
        size.height * 0.7056667,
        size.width * 0.2468333,
        size.height * 0.7211667);
    path_70.cubicTo(
        size.width * 0.2413333,
        size.height * 0.7138333,
        size.width * 0.2380000,
        size.height * 0.7048333,
        size.width * 0.2380000,
        size.height * 0.6950000);
    path_70.cubicTo(
        size.width * 0.2380000,
        size.height * 0.6805000,
        size.width * 0.2451667,
        size.height * 0.6676667,
        size.width * 0.2560000,
        size.height * 0.6598333);
    path_70.lineTo(size.width * 0.2566667, size.height * 0.6606667);
    path_70.cubicTo(
        size.width * 0.2633333,
        size.height * 0.6586667,
        size.width * 0.2711667,
        size.height * 0.6598333,
        size.width * 0.2770000,
        size.height * 0.6640000);
    path_70.close();

    Paint paint_70_fill = Paint()..style = PaintingStyle.fill;
    paint_70_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_70, paint_70_fill);

    Path path_71 = Path();
    path_71.moveTo(size.width * 0.2746667, size.height * 0.8618333);
    path_71.lineTo(size.width * 0.2736667, size.height * 0.8623333);
    path_71.cubicTo(
        size.width * 0.2178333,
        size.height * 0.8626667,
        size.width * 0.1620000,
        size.height * 0.8630000,
        size.width * 0.1063333,
        size.height * 0.8633333);
    path_71.lineTo(size.width * 0.1053333, size.height * 0.8633333);
    path_71.cubicTo(
        size.width * 0.1055000,
        size.height * 0.8601667,
        size.width * 0.1063333,
        size.height * 0.8568333,
        size.width * 0.1073333,
        size.height * 0.8533333);
    path_71.cubicTo(
        size.width * 0.1161667,
        size.height * 0.8245000,
        size.width * 0.1426667,
        size.height * 0.8040000,
        size.width * 0.1713333,
        size.height * 0.7945000);
    path_71.cubicTo(
        size.width * 0.2000000,
        size.height * 0.7850000,
        size.width * 0.2306667,
        size.height * 0.7848333,
        size.width * 0.2608333,
        size.height * 0.7846667);
    path_71.lineTo(size.width * 0.2635000, size.height * 0.7846667);
    path_71.cubicTo(
        size.width * 0.2631667,
        size.height * 0.7961667,
        size.width * 0.2635000,
        size.height * 0.8076667,
        size.width * 0.2646667,
        size.height * 0.8190000);
    path_71.cubicTo(
        size.width * 0.2656667,
        size.height * 0.8335000,
        size.width * 0.2685000,
        size.height * 0.8486667,
        size.width * 0.2746667,
        size.height * 0.8618333);
    path_71.close();

    Paint paint_71_fill = Paint()..style = PaintingStyle.fill;
    paint_71_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_71, paint_71_fill);

    Path path_72 = Path();
    path_72.moveTo(size.width * 0.2793333, size.height * 0.4758333);
    path_72.cubicTo(
        size.width * 0.2683333,
        size.height * 0.4870000,
        size.width * 0.2618333,
        size.height * 0.4983333,
        size.width * 0.2573333,
        size.height * 0.5090000);
    path_72.cubicTo(
        size.width * 0.2546667,
        size.height * 0.5153333,
        size.width * 0.2528333,
        size.height * 0.5220000,
        size.width * 0.2521667,
        size.height * 0.5288333);
    path_72.cubicTo(
        size.width * 0.2463333,
        size.height * 0.5333333,
        size.width * 0.2418333,
        size.height * 0.5383333,
        size.width * 0.2378333,
        size.height * 0.5441667);
    path_72.cubicTo(
        size.width * 0.2370000,
        size.height * 0.5398333,
        size.width * 0.2366667,
        size.height * 0.5351667,
        size.width * 0.2368333,
        size.height * 0.5305000);
    path_72.cubicTo(
        size.width * 0.2375000,
        size.height * 0.5140000,
        size.width * 0.2455000,
        size.height * 0.4946667,
        size.width * 0.2551667,
        size.height * 0.4811667);
    path_72.lineTo(size.width * 0.2550000, size.height * 0.4810000);
    path_72.cubicTo(
        size.width * 0.2626667,
        size.height * 0.4775000,
        size.width * 0.2708333,
        size.height * 0.4758333,
        size.width * 0.2793333,
        size.height * 0.4758333);
    path_72.close();

    Paint paint_72_fill = Paint()..style = PaintingStyle.fill;
    paint_72_fill.color = Color(0xffFF736B).withOpacity(1.0);
    canvas.drawPath(path_72, paint_72_fill);

    Path path_73 = Path();
    path_73.moveTo(size.width * 0.2551667, size.height * 0.4808333);
    path_73.lineTo(size.width * 0.2553333, size.height * 0.4810000);
    path_73.cubicTo(
        size.width * 0.2456667,
        size.height * 0.4943333,
        size.width * 0.2376667,
        size.height * 0.5136667,
        size.width * 0.2370000,
        size.height * 0.5303333);
    path_73.cubicTo(
        size.width * 0.2368333,
        size.height * 0.5351667,
        size.width * 0.2371667,
        size.height * 0.5396667,
        size.width * 0.2380000,
        size.height * 0.5440000);
    path_73.cubicTo(
        size.width * 0.2338333,
        size.height * 0.5501667,
        size.width * 0.2303333,
        size.height * 0.5571667,
        size.width * 0.2268333,
        size.height * 0.5653333);
    path_73.lineTo(size.width * 0.2266667, size.height * 0.5655000);
    path_73.cubicTo(
        size.width * 0.2218333,
        size.height * 0.5568333,
        size.width * 0.2191667,
        size.height * 0.5468333,
        size.width * 0.2191667,
        size.height * 0.5363333);
    path_73.cubicTo(
        size.width * 0.2190000,
        size.height * 0.5113333,
        size.width * 0.2340000,
        size.height * 0.4900000,
        size.width * 0.2551667,
        size.height * 0.4808333);
    path_73.close();

    Paint paint_73_fill = Paint()..style = PaintingStyle.fill;
    paint_73_fill.color = Color(0xffFF564F).withOpacity(1.0);
    canvas.drawPath(path_73, paint_73_fill);

    Path path_74 = Path();
    path_74.moveTo(size.width * 0.2471667, size.height * 0.2615000);
    path_74.cubicTo(
        size.width * 0.2465000,
        size.height * 0.2633333,
        size.width * 0.2460000,
        size.height * 0.2651667,
        size.width * 0.2455000,
        size.height * 0.2671667);
    path_74.cubicTo(
        size.width * 0.2390000,
        size.height * 0.2906667,
        size.width * 0.2391667,
        size.height * 0.3153333,
        size.width * 0.2418333,
        size.height * 0.3395000);
    path_74.cubicTo(
        size.width * 0.2431667,
        size.height * 0.3516667,
        size.width * 0.2451667,
        size.height * 0.3640000,
        size.width * 0.2498333,
        size.height * 0.3753333);
    path_74.cubicTo(
        size.width * 0.2431667,
        size.height * 0.3700000,
        size.width * 0.2375000,
        size.height * 0.3628333,
        size.width * 0.2340000,
        size.height * 0.3550000);
    path_74.cubicTo(
        size.width * 0.2258333,
        size.height * 0.3373333,
        size.width * 0.2255000,
        size.height * 0.3170000,
        size.width * 0.2253333,
        size.height * 0.2975000);
    path_74.lineTo(size.width * 0.2251667, size.height * 0.2975000);
    path_74.cubicTo(
        size.width * 0.2251667,
        size.height * 0.2968333,
        size.width * 0.2253333,
        size.height * 0.2963333,
        size.width * 0.2253333,
        size.height * 0.2956667);
    path_74.lineTo(size.width * 0.2253333, size.height * 0.2956667);
    path_74.cubicTo(
        size.width * 0.2271667,
        size.height * 0.2816667,
        size.width * 0.2358333,
        size.height * 0.2698333,
        size.width * 0.2471667,
        size.height * 0.2615000);
    path_74.close();

    Paint paint_74_fill = Paint()..style = PaintingStyle.fill;
    paint_74_fill.color = Color(0xff86AEBA).withOpacity(1.0);
    canvas.drawPath(path_74, paint_74_fill);

    Path path_75 = Path();
    path_75.moveTo(size.width * 0.3203333, size.height * 0.3158333);
    path_75.cubicTo(
        size.width * 0.3185000,
        size.height * 0.3291667,
        size.width * 0.3171667,
        size.height * 0.3433333,
        size.width * 0.3165000,
        size.height * 0.3575000);
    path_75.cubicTo(
        size.width * 0.3160000,
        size.height * 0.3703333,
        size.width * 0.3161667,
        size.height * 0.3831667,
        size.width * 0.3171667,
        size.height * 0.3955000);
    path_75.cubicTo(
        size.width * 0.3175000,
        size.height * 0.3996667,
        size.width * 0.3178333,
        size.height * 0.4036667,
        size.width * 0.3185000,
        size.height * 0.4076667);
    path_75.cubicTo(
        size.width * 0.3188333,
        size.height * 0.4106667,
        size.width * 0.3193333,
        size.height * 0.4136667,
        size.width * 0.3198333,
        size.height * 0.4166667);
    path_75.cubicTo(
        size.width * 0.3200000,
        size.height * 0.4171667,
        size.width * 0.3200000,
        size.height * 0.4176667,
        size.width * 0.3201667,
        size.height * 0.4183333);
    path_75.cubicTo(
        size.width * 0.3248333,
        size.height * 0.4440000,
        size.width * 0.3340000,
        size.height * 0.4688333,
        size.width * 0.3490000,
        size.height * 0.4901667);
    path_75.cubicTo(
        size.width * 0.3708333,
        size.height * 0.5211667,
        size.width * 0.4065000,
        size.height * 0.5443333,
        size.width * 0.4381667,
        size.height * 0.5651667);

    Paint paint_75_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_75_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_75_stroke.strokeCap = StrokeCap.round;
    paint_75_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_75, paint_75_stroke);

    Path path_76 = Path();
    path_76.moveTo(size.width * 0.2263333, size.height * 0.4043333);
    path_76.cubicTo(
        size.width * 0.2203333,
        size.height * 0.3846667,
        size.width * 0.2210000,
        size.height * 0.3365000,
        size.width * 0.2248333,
        size.height * 0.2973333);
    path_76.cubicTo(
        size.width * 0.2248333,
        size.height * 0.2966667,
        size.width * 0.2250000,
        size.height * 0.2961667,
        size.width * 0.2250000,
        size.height * 0.2955000);
    path_76.cubicTo(
        size.width * 0.2251667,
        size.height * 0.2938333,
        size.width * 0.2253333,
        size.height * 0.2920000,
        size.width * 0.2255000,
        size.height * 0.2903333);
    path_76.cubicTo(
        size.width * 0.2278333,
        size.height * 0.2688333,
        size.width * 0.2325000,
        size.height * 0.2461667,
        size.width * 0.2470000,
        size.height * 0.2301667);
    path_76.cubicTo(
        size.width * 0.2575000,
        size.height * 0.2186667,
        size.width * 0.2723333,
        size.height * 0.2118333,
        size.width * 0.2873333,
        size.height * 0.2083333);
    path_76.cubicTo(
        size.width * 0.2883333,
        size.height * 0.2081667,
        size.width * 0.2893333,
        size.height * 0.2078333,
        size.width * 0.2903333,
        size.height * 0.2076667);
    path_76.cubicTo(
        size.width * 0.3045000,
        size.height * 0.2046667,
        size.width * 0.3191667,
        size.height * 0.2043333,
        size.width * 0.3336667,
        size.height * 0.2038333);
    path_76.cubicTo(
        size.width * 0.3826667,
        size.height * 0.2023333,
        size.width * 0.4318333,
        size.height * 0.2008333,
        size.width * 0.4808333,
        size.height * 0.1993333);

    Paint paint_76_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_76_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_76_stroke.strokeCap = StrokeCap.round;
    paint_76_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_76, paint_76_stroke);

    Path path_77 = Path();
    path_77.moveTo(size.width * 0.4805000, size.height * 0.1995000);
    path_77.cubicTo(
        size.width * 0.4806667,
        size.height * 0.1995000,
        size.width * 0.4808333,
        size.height * 0.1995000,
        size.width * 0.4811667,
        size.height * 0.1993333);
    path_77.cubicTo(
        size.width * 0.4946667,
        size.height * 0.1975000,
        size.width * 0.5051667,
        size.height * 0.1961667,
        size.width * 0.5128333,
        size.height * 0.1866667);
    path_77.cubicTo(
        size.width * 0.5205000,
        size.height * 0.1770000,
        size.width * 0.5246667,
        size.height * 0.1648333,
        size.width * 0.5315000,
        size.height * 0.1546667);
    path_77.cubicTo(
        size.width * 0.5448333,
        size.height * 0.1345000,
        size.width * 0.5681667,
        size.height * 0.1223333,
        size.width * 0.5920000,
        size.height * 0.1176667);
    path_77.cubicTo(
        size.width * 0.6158333,
        size.height * 0.1130000,
        size.width * 0.6403333,
        size.height * 0.1133333,
        size.width * 0.6645000,
        size.height * 0.1161667);
    path_77.cubicTo(
        size.width * 0.6680000,
        size.height * 0.1165000,
        size.width * 0.6735000,
        size.height * 0.1171667,
        size.width * 0.6798333,
        size.height * 0.1181667);
    path_77.cubicTo(
        size.width * 0.7001667,
        size.height * 0.1213333,
        size.width * 0.7303333,
        size.height * 0.1295000,
        size.width * 0.7423333,
        size.height * 0.1543333);
    path_77.cubicTo(
        size.width * 0.7508333,
        size.height * 0.1721667,
        size.width * 0.7490000,
        size.height * 0.1976667,
        size.width * 0.7481667,
        size.height * 0.2175000);
    path_77.cubicTo(
        size.width * 0.7445000,
        size.height * 0.3060000,
        size.width * 0.7380000,
        size.height * 0.3908333,
        size.width * 0.7315000,
        size.height * 0.4850000);

    Paint paint_77_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_77_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_77_stroke.strokeCap = StrokeCap.round;
    paint_77_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_77, paint_77_stroke);

    Path path_78 = Path();
    path_78.moveTo(size.width * 0.6060000, size.height * 0.2175000);
    path_78.cubicTo(
        size.width * 0.6061667,
        size.height * 0.2211667,
        size.width * 0.6061667,
        size.height * 0.2248333,
        size.width * 0.6061667,
        size.height * 0.2285000);
    path_78.cubicTo(
        size.width * 0.6063333,
        size.height * 0.2501667,
        size.width * 0.6051667,
        size.height * 0.2716667,
        size.width * 0.6093333,
        size.height * 0.2930000);
    path_78.cubicTo(
        size.width * 0.6111667,
        size.height * 0.3028333,
        size.width * 0.6138333,
        size.height * 0.3110000,
        size.width * 0.6193333,
        size.height * 0.3193333);
    path_78.cubicTo(
        size.width * 0.6250000,
        size.height * 0.3275000,
        size.width * 0.6320000,
        size.height * 0.3355000,
        size.width * 0.6473333,
        size.height * 0.3355000);
    path_78.cubicTo(
        size.width * 0.6703333,
        size.height * 0.3355000,
        size.width * 0.6808333,
        size.height * 0.3170000,
        size.width * 0.6841667,
        size.height * 0.2966667);
    path_78.cubicTo(
        size.width * 0.6850000,
        size.height * 0.2918333,
        size.width * 0.6856667,
        size.height * 0.2868333,
        size.width * 0.6861667,
        size.height * 0.2818333);
    path_78.cubicTo(
        size.width * 0.6885000,
        size.height * 0.2623333,
        size.width * 0.6891667,
        size.height * 0.2418333,
        size.width * 0.6886667,
        size.height * 0.2173333);

    Paint paint_78_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_78_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_78_stroke.strokeCap = StrokeCap.round;
    paint_78_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_78, paint_78_stroke);

    Path path_79 = Path();
    path_79.moveTo(size.width * 0.6068333, size.height * 0.2285000);
    path_79.cubicTo(
        size.width * 0.6101667,
        size.height * 0.2248333,
        size.width * 0.6135000,
        size.height * 0.2210000,
        size.width * 0.6178333,
        size.height * 0.2188333);
    path_79.cubicTo(
        size.width * 0.6221667,
        size.height * 0.2165000,
        size.width * 0.6278333,
        size.height * 0.2160000,
        size.width * 0.6320000,
        size.height * 0.2186667);
    path_79.cubicTo(
        size.width * 0.6376667,
        size.height * 0.2225000,
        size.width * 0.6383333,
        size.height * 0.2305000,
        size.width * 0.6383333,
        size.height * 0.2373333);
    path_79.cubicTo(
        size.width * 0.6383333,
        size.height * 0.2518333,
        size.width * 0.6385000,
        size.height * 0.2663333,
        size.width * 0.6385000,
        size.height * 0.2810000);
    path_79.cubicTo(
        size.width * 0.6385000,
        size.height * 0.2890000,
        size.width * 0.6390000,
        size.height * 0.2980000,
        size.width * 0.6451667,
        size.height * 0.3031667);
    path_79.cubicTo(
        size.width * 0.6503333,
        size.height * 0.3075000,
        size.width * 0.6580000,
        size.height * 0.3075000,
        size.width * 0.6641667,
        size.height * 0.3050000);
    path_79.cubicTo(
        size.width * 0.6703333,
        size.height * 0.3025000,
        size.width * 0.6821667,
        size.height * 0.2896667,
        size.width * 0.6855000,
        size.height * 0.2818333);

    Paint paint_79_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_79_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_79_stroke.strokeCap = StrokeCap.round;
    paint_79_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_79, paint_79_stroke);

    Path path_80 = Path();
    path_80.moveTo(size.width * 0.6976667, size.height * 0.1946667);
    path_80.cubicTo(
        size.width * 0.6958333,
        size.height * 0.1946667,
        size.width * 0.6938333,
        size.height * 0.1943333,
        size.width * 0.6918333,
        size.height * 0.1933333);
    path_80.cubicTo(
        size.width * 0.6801667,
        size.height * 0.1880000,
        size.width * 0.6691667,
        size.height * 0.1773333,
        size.width * 0.6588333,
        size.height * 0.1698333);
    path_80.cubicTo(
        size.width * 0.6541667,
        size.height * 0.1665000,
        size.width * 0.6493333,
        size.height * 0.1630000,
        size.width * 0.6465000,
        size.height * 0.1578333);
    path_80.cubicTo(
        size.width * 0.6456667,
        size.height * 0.1563333,
        size.width * 0.6451667,
        size.height * 0.1546667,
        size.width * 0.6448333,
        size.height * 0.1530000);
    path_80.cubicTo(
        size.width * 0.6443333,
        size.height * 0.1498333,
        size.width * 0.6446667,
        size.height * 0.1466667,
        size.width * 0.6463333,
        size.height * 0.1440000);
    path_80.cubicTo(
        size.width * 0.6468333,
        size.height * 0.1431667,
        size.width * 0.6473333,
        size.height * 0.1425000,
        size.width * 0.6481667,
        size.height * 0.1418333);
    path_80.cubicTo(
        size.width * 0.6495000,
        size.height * 0.1406667,
        size.width * 0.6508333,
        size.height * 0.1400000,
        size.width * 0.6525000,
        size.height * 0.1396667);
    path_80.cubicTo(
        size.width * 0.6550000,
        size.height * 0.1390000,
        size.width * 0.6576667,
        size.height * 0.1391667,
        size.width * 0.6600000,
        size.height * 0.1398333);
    path_80.cubicTo(
        size.width * 0.6640000,
        size.height * 0.1410000,
        size.width * 0.6676667,
        size.height * 0.1433333,
        size.width * 0.6711667,
        size.height * 0.1456667);
    path_80.cubicTo(
        size.width * 0.6806667,
        size.height * 0.1520000,
        size.width * 0.6901667,
        size.height * 0.1583333,
        size.width * 0.6985000,
        size.height * 0.1660000);
    path_80.cubicTo(
        size.width * 0.7018333,
        size.height * 0.1691667,
        size.width * 0.7051667,
        size.height * 0.1725000,
        size.width * 0.7070000,
        size.height * 0.1766667);
    path_80.cubicTo(
        size.width * 0.7080000,
        size.height * 0.1788333,
        size.width * 0.7083333,
        size.height * 0.1810000,
        size.width * 0.7083333,
        size.height * 0.1830000);
    path_80.cubicTo(
        size.width * 0.7083333,
        size.height * 0.1870000,
        size.width * 0.7065000,
        size.height * 0.1905000,
        size.width * 0.7036667,
        size.height * 0.1926667);
    path_80.cubicTo(
        size.width * 0.7020000,
        size.height * 0.1938333,
        size.width * 0.7000000,
        size.height * 0.1946667,
        size.width * 0.6976667,
        size.height * 0.1946667);
    path_80.close();

    Paint paint_80_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_80_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_80_stroke.strokeCap = StrokeCap.round;
    paint_80_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_80, paint_80_stroke);

    Path path_81 = Path();
    path_81.moveTo(size.width * 0.2263333, size.height * 0.4043333);
    path_81.cubicTo(
        size.width * 0.2295000,
        size.height * 0.4225000,
        size.width * 0.2460000,
        size.height * 0.4425000,
        size.width * 0.2693333,
        size.height * 0.4436667);
    path_81.cubicTo(
        size.width * 0.2893333,
        size.height * 0.4446667,
        size.width * 0.3103333,
        size.height * 0.4345000,
        size.width * 0.3196667,
        size.height * 0.4166667);

    Paint paint_81_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_81_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_81_stroke.strokeCap = StrokeCap.round;
    paint_81_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_81, paint_81_stroke);

    Path path_82 = Path();
    path_82.moveTo(size.width * 0.2251667, size.height * 0.2955000);
    path_82.cubicTo(
        size.width * 0.2273333,
        size.height * 0.2816667,
        size.width * 0.2358333,
        size.height * 0.2698333,
        size.width * 0.2471667,
        size.height * 0.2615000);
    path_82.cubicTo(
        size.width * 0.2526667,
        size.height * 0.2573333,
        size.width * 0.2586667,
        size.height * 0.2541667,
        size.width * 0.2648333,
        size.height * 0.2516667);
    path_82.cubicTo(
        size.width * 0.2841667,
        size.height * 0.2441667,
        size.width * 0.3053333,
        size.height * 0.2436667,
        size.width * 0.3260000,
        size.height * 0.2431667);
    path_82.cubicTo(
        size.width * 0.4186667,
        size.height * 0.2411667,
        size.width * 0.5113333,
        size.height * 0.2393333,
        size.width * 0.6038333,
        size.height * 0.2373333);

    Paint paint_82_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_82_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_82_stroke.strokeCap = StrokeCap.round;
    paint_82_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_82, paint_82_stroke);

    Path path_83 = Path();
    path_83.moveTo(size.width * 0.2906667, size.height * 0.2080000);
    path_83.cubicTo(
        size.width * 0.2673333,
        size.height * 0.2193333,
        size.width * 0.2540000,
        size.height * 0.2400000,
        size.width * 0.2470000,
        size.height * 0.2615000);
    path_83.cubicTo(
        size.width * 0.2463333,
        size.height * 0.2633333,
        size.width * 0.2458333,
        size.height * 0.2651667,
        size.width * 0.2453333,
        size.height * 0.2671667);
    path_83.cubicTo(
        size.width * 0.2388333,
        size.height * 0.2906667,
        size.width * 0.2390000,
        size.height * 0.3153333,
        size.width * 0.2416667,
        size.height * 0.3395000);
    path_83.cubicTo(
        size.width * 0.2430000,
        size.height * 0.3516667,
        size.width * 0.2450000,
        size.height * 0.3640000,
        size.width * 0.2496667,
        size.height * 0.3753333);
    path_83.cubicTo(
        size.width * 0.2500000,
        size.height * 0.3761667,
        size.width * 0.2505000,
        size.height * 0.3771667,
        size.width * 0.2508333,
        size.height * 0.3780000);
    path_83.cubicTo(
        size.width * 0.2563333,
        size.height * 0.3900000,
        size.width * 0.2656667,
        size.height * 0.4008333,
        size.width * 0.2781667,
        size.height * 0.4055000);
    path_83.cubicTo(
        size.width * 0.2906667,
        size.height * 0.4101667,
        size.width * 0.3045000,
        size.height * 0.4080000,
        size.width * 0.3166667,
        size.height * 0.3956667);

    Paint paint_83_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_83_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_83_stroke.strokeCap = StrokeCap.round;
    paint_83_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_83, paint_83_stroke);

    Path path_84 = Path();
    path_84.moveTo(size.width * 0.2251667, size.height * 0.2973333);
    path_84.cubicTo(
        size.width * 0.2253333,
        size.height * 0.3168333,
        size.width * 0.2256667,
        size.height * 0.3371667,
        size.width * 0.2338333,
        size.height * 0.3548333);
    path_84.cubicTo(
        size.width * 0.2375000,
        size.height * 0.3626667,
        size.width * 0.2430000,
        size.height * 0.3698333,
        size.width * 0.2496667,
        size.height * 0.3751667);
    path_84.cubicTo(
        size.width * 0.2583333,
        size.height * 0.3821667,
        size.width * 0.2688333,
        size.height * 0.3860000,
        size.width * 0.2798333,
        size.height * 0.3846667);
    path_84.cubicTo(
        size.width * 0.2953333,
        size.height * 0.3825000,
        size.width * 0.3075000,
        size.height * 0.3705000,
        size.width * 0.3161667,
        size.height * 0.3575000);

    Paint paint_84_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_84_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_84_stroke.strokeCap = StrokeCap.round;
    paint_84_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_84, paint_84_stroke);

    Path path_85 = Path();
    path_85.moveTo(size.width * 0.3043333, size.height * 0.2958333);
    path_85.cubicTo(
        size.width * 0.3126667,
        size.height * 0.3066667,
        size.width * 0.3261667,
        size.height * 0.3046667,
        size.width * 0.3366667,
        size.height * 0.3033333);
    path_85.cubicTo(
        size.width * 0.3451667,
        size.height * 0.3023333,
        size.width * 0.3715000,
        size.height * 0.3090000,
        size.width * 0.3948333,
        size.height * 0.3036667);
    path_85.cubicTo(
        size.width * 0.4370000,
        size.height * 0.2940000,
        size.width * 0.4493333,
        size.height * 0.3061667,
        size.width * 0.4926667,
        size.height * 0.3058333);
    path_85.cubicTo(
        size.width * 0.5215000,
        size.height * 0.3055000,
        size.width * 0.5465000,
        size.height * 0.2973333,
        size.width * 0.5750000,
        size.height * 0.3021667);

    Paint paint_85_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_85_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_85_stroke.strokeCap = StrokeCap.round;
    paint_85_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_85, paint_85_stroke);

    Path path_86 = Path();
    path_86.moveTo(size.width * 0.7313333, size.height * 0.4848333);
    path_86.cubicTo(
        size.width * 0.7300000,
        size.height * 0.5081667,
        size.width * 0.7321667,
        size.height * 0.5331667,
        size.width * 0.7571667,
        size.height * 0.5433333);
    path_86.cubicTo(
        size.width * 0.7913333,
        size.height * 0.5571667,
        size.width * 0.8180000,
        size.height * 0.5440000,
        size.width * 0.8395000,
        size.height * 0.5685000);
    path_86.cubicTo(
        size.width * 0.8428333,
        size.height * 0.5723333,
        size.width * 0.8453333,
        size.height * 0.5795000,
        size.width * 0.8471667,
        size.height * 0.5880000);
    path_86.cubicTo(
        size.width * 0.8513333,
        size.height * 0.6078333,
        size.width * 0.8516667,
        size.height * 0.6351667,
        size.width * 0.8518333,
        size.height * 0.6476667);
    path_86.cubicTo(
        size.width * 0.8520000,
        size.height * 0.6591667,
        size.width * 0.8521667,
        size.height * 0.6708333,
        size.width * 0.8521667,
        size.height * 0.6823333);
    path_86.cubicTo(
        size.width * 0.8528333,
        size.height * 0.7351667,
        size.width * 0.8531667,
        size.height * 0.7881667,
        size.width * 0.8536667,
        size.height * 0.8410000);

    Paint paint_86_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_86_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_86_stroke.strokeCap = StrokeCap.round;
    paint_86_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_86, paint_86_stroke);

    Path path_87 = Path();
    path_87.moveTo(size.width * 0.6400000, size.height * 0.8891667);
    path_87.cubicTo(
        size.width * 0.6846667,
        size.height * 0.8891667,
        size.width * 0.7303333,
        size.height * 0.8901667,
        size.width * 0.7686667,
        size.height * 0.8891667);
    path_87.cubicTo(
        size.width * 0.7753333,
        size.height * 0.8890000,
        size.width * 0.7816667,
        size.height * 0.8888333,
        size.width * 0.7878333,
        size.height * 0.8885000);
    path_87.cubicTo(
        size.width * 0.7918333,
        size.height * 0.8883333,
        size.width * 0.7965000,
        size.height * 0.8878333,
        size.width * 0.8011667,
        size.height * 0.8871667);
    path_87.cubicTo(
        size.width * 0.8128333,
        size.height * 0.8855000,
        size.width * 0.8258333,
        size.height * 0.8825000,
        size.width * 0.8343333,
        size.height * 0.8775000);
    path_87.cubicTo(
        size.width * 0.8461667,
        size.height * 0.8705000,
        size.width * 0.8538333,
        size.height * 0.8581667,
        size.width * 0.8536667,
        size.height * 0.8408333);

    Paint paint_87_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_87_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_87_stroke.strokeCap = StrokeCap.round;
    paint_87_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_87, paint_87_stroke);

    Path path_88 = Path();
    path_88.moveTo(size.width * 0.5726667, size.height * 0.8460000);
    path_88.cubicTo(
        size.width * 0.5788333,
        size.height * 0.8473333,
        size.width * 0.5850000,
        size.height * 0.8483333,
        size.width * 0.5906667,
        size.height * 0.8485000);
    path_88.cubicTo(
        size.width * 0.6045000,
        size.height * 0.8491667,
        size.width * 0.6160000,
        size.height * 0.8461667,
        size.width * 0.6220000,
        size.height * 0.8375000);
    path_88.cubicTo(
        size.width * 0.6295000,
        size.height * 0.8268333,
        size.width * 0.6261667,
        size.height * 0.8118333,
        size.width * 0.6315000,
        size.height * 0.7998333);
    path_88.cubicTo(
        size.width * 0.6333333,
        size.height * 0.7955000,
        size.width * 0.6370000,
        size.height * 0.7913333,
        size.width * 0.6416667,
        size.height * 0.7908333);
    path_88.cubicTo(
        size.width * 0.6480000,
        size.height * 0.7901667,
        size.width * 0.6530000,
        size.height * 0.7963333,
        size.width * 0.6560000,
        size.height * 0.8020000);
    path_88.cubicTo(
        size.width * 0.6640000,
        size.height * 0.8170000,
        size.width * 0.6678333,
        size.height * 0.8341667,
        size.width * 0.6673333,
        size.height * 0.8511667);
    path_88.cubicTo(
        size.width * 0.6671667,
        size.height * 0.8548333,
        size.width * 0.6666667,
        size.height * 0.8585000,
        size.width * 0.6656667,
        size.height * 0.8621667);
    path_88.cubicTo(
        size.width * 0.6638333,
        size.height * 0.8690000,
        size.width * 0.6603333,
        size.height * 0.8755000,
        size.width * 0.6550000,
        size.height * 0.8798333);
    path_88.cubicTo(
        size.width * 0.6498333,
        size.height * 0.8841667,
        size.width * 0.6448333,
        size.height * 0.8870000,
        size.width * 0.6400000,
        size.height * 0.8888333);
    path_88.cubicTo(
        size.width * 0.6348333,
        size.height * 0.8908333,
        size.width * 0.6300000,
        size.height * 0.8918333,
        size.width * 0.6255000,
        size.height * 0.8925000);
    path_88.cubicTo(
        size.width * 0.6123333,
        size.height * 0.8945000,
        size.width * 0.6001667,
        size.height * 0.8956667,
        size.width * 0.5878333,
        size.height * 0.8960000);
    path_88.cubicTo(
        size.width * 0.5731667,
        size.height * 0.8963333,
        size.width * 0.5585000,
        size.height * 0.8958333,
        size.width * 0.5426667,
        size.height * 0.8950000);

    Paint paint_88_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_88_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_88_stroke.strokeCap = StrokeCap.round;
    paint_88_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_88, paint_88_stroke);

    Path path_89 = Path();
    path_89.moveTo(size.width * 0.4575000, size.height * 0.8968333);
    path_89.cubicTo(
        size.width * 0.4768333,
        size.height * 0.8978333,
        size.width * 0.5066667,
        size.height * 0.8983333,
        size.width * 0.5250000,
        size.height * 0.8971667);
    path_89.cubicTo(
        size.width * 0.5308333,
        size.height * 0.8968333,
        size.width * 0.5370000,
        size.height * 0.8961667,
        size.width * 0.5425000,
        size.height * 0.8946667);
    path_89.cubicTo(
        size.width * 0.5473333,
        size.height * 0.8933333,
        size.width * 0.5518333,
        size.height * 0.8913333,
        size.width * 0.5556667,
        size.height * 0.8881667);
    path_89.cubicTo(
        size.width * 0.5638333,
        size.height * 0.8815000,
        size.width * 0.5676667,
        size.height * 0.8710000,
        size.width * 0.5696667,
        size.height * 0.8608333);
    path_89.cubicTo(
        size.width * 0.5703333,
        size.height * 0.8578333,
        size.width * 0.5708333,
        size.height * 0.8550000,
        size.width * 0.5711667,
        size.height * 0.8521667);
    path_89.cubicTo(
        size.width * 0.5715000,
        size.height * 0.8501667,
        size.width * 0.5716667,
        size.height * 0.8481667,
        size.width * 0.5718333,
        size.height * 0.8461667);
    path_89.cubicTo(
        size.width * 0.5723333,
        size.height * 0.8410000,
        size.width * 0.5723333,
        size.height * 0.8360000,
        size.width * 0.5721667,
        size.height * 0.8310000);
    path_89.cubicTo(
        size.width * 0.5721667,
        size.height * 0.8303333,
        size.width * 0.5720000,
        size.height * 0.8296667,
        size.width * 0.5720000,
        size.height * 0.8290000);
    path_89.cubicTo(
        size.width * 0.5716667,
        size.height * 0.8240000,
        size.width * 0.5708333,
        size.height * 0.8190000,
        size.width * 0.5698333,
        size.height * 0.8138333);
    path_89.cubicTo(
        size.width * 0.5695000,
        size.height * 0.8120000,
        size.width * 0.5690000,
        size.height * 0.8103333,
        size.width * 0.5686667,
        size.height * 0.8085000);
    path_89.cubicTo(
        size.width * 0.5665000,
        size.height * 0.7995000,
        size.width * 0.5616667,
        size.height * 0.7925000,
        size.width * 0.5561667,
        size.height * 0.7913333);
    path_89.cubicTo(
        size.width * 0.5515000,
        size.height * 0.7903333,
        size.width * 0.5466667,
        size.height * 0.7933333,
        size.width * 0.5440000,
        size.height * 0.7973333);
    path_89.cubicTo(
        size.width * 0.5416667,
        size.height * 0.8010000,
        size.width * 0.5408333,
        size.height * 0.8053333,
        size.width * 0.5401667,
        size.height * 0.8096667);
    path_89.cubicTo(
        size.width * 0.5401667,
        size.height * 0.8101667,
        size.width * 0.5400000,
        size.height * 0.8106667,
        size.width * 0.5400000,
        size.height * 0.8111667);
    path_89.cubicTo(
        size.width * 0.5390000,
        size.height * 0.8181667,
        size.width * 0.5385000,
        size.height * 0.8268333,
        size.width * 0.5361667,
        size.height * 0.8341667);
    path_89.cubicTo(
        size.width * 0.5345000,
        size.height * 0.8395000,
        size.width * 0.5320000,
        size.height * 0.8441667,
        size.width * 0.5276667,
        size.height * 0.8471667);
    path_89.cubicTo(
        size.width * 0.5271667,
        size.height * 0.8475000,
        size.width * 0.5265000,
        size.height * 0.8480000,
        size.width * 0.5260000,
        size.height * 0.8483333);
    path_89.cubicTo(
        size.width * 0.5141667,
        size.height * 0.8555000,
        size.width * 0.4960000,
        size.height * 0.8558333,
        size.width * 0.4808333,
        size.height * 0.8540000);

    Paint paint_89_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_89_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_89_stroke.strokeCap = StrokeCap.round;
    paint_89_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_89, paint_89_stroke);

    Path path_90 = Path();
    path_90.moveTo(size.width * 0.5723333, size.height * 0.8521667);
    path_90.cubicTo(
        size.width * 0.5928333,
        size.height * 0.8541667,
        size.width * 0.6293333,
        size.height * 0.8558333,
        size.width * 0.6318333,
        size.height * 0.8703333);
    path_90.cubicTo(
        size.width * 0.6338333,
        size.height * 0.8818333,
        size.width * 0.6265000,
        size.height * 0.8856667,
        size.width * 0.6210000,
        size.height * 0.8886667);
    path_90.cubicTo(
        size.width * 0.6135000,
        size.height * 0.8928333,
        size.width * 0.6041667,
        size.height * 0.8941667,
        size.width * 0.5878333,
        size.height * 0.8960000);

    Paint paint_90_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_90_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_90_stroke.strokeCap = StrokeCap.round;
    paint_90_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_90, paint_90_stroke);

    Path path_91 = Path();
    path_91.moveTo(size.width * 0.4788333, size.height * 0.8711667);
    path_91.cubicTo(
        size.width * 0.4965000,
        size.height * 0.8740000,
        size.width * 0.5168333,
        size.height * 0.8748333,
        size.width * 0.5341667,
        size.height * 0.8708333);
    path_91.cubicTo(
        size.width * 0.5513333,
        size.height * 0.8668333,
        size.width * 0.5703333,
        size.height * 0.8583333,
        size.width * 0.5721667,
        size.height * 0.8306667);
    path_91.cubicTo(
        size.width * 0.5721667,
        size.height * 0.8303333,
        size.width * 0.5721667,
        size.height * 0.8301667,
        size.width * 0.5721667,
        size.height * 0.8300000);

    Paint paint_91_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_91_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_91_stroke.strokeCap = StrokeCap.round;
    paint_91_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_91, paint_91_stroke);

    Path path_92 = Path();
    path_92.moveTo(size.width * 0.6661667, size.height * 0.8623333);
    path_92.cubicTo(
        size.width * 0.6905000,
        size.height * 0.8653333,
        size.width * 0.7178333,
        size.height * 0.8656667,
        size.width * 0.7420000,
        size.height * 0.8628333);
    path_92.cubicTo(
        size.width * 0.7518333,
        size.height * 0.8616667,
        size.width * 0.7618333,
        size.height * 0.8600000,
        size.width * 0.7711667,
        size.height * 0.8573333);
    path_92.cubicTo(
        size.width * 0.7848333,
        size.height * 0.8533333,
        size.width * 0.7973333,
        size.height * 0.8468333,
        size.width * 0.8070000,
        size.height * 0.8361667);
    path_92.cubicTo(
        size.width * 0.8218333,
        size.height * 0.8198333,
        size.width * 0.8288333,
        size.height * 0.7980000,
        size.width * 0.8346667,
        size.height * 0.7768333);
    path_92.cubicTo(
        size.width * 0.8361667,
        size.height * 0.7710000,
        size.width * 0.8376667,
        size.height * 0.7650000,
        size.width * 0.8390000,
        size.height * 0.7588333);
    path_92.cubicTo(
        size.width * 0.8445000,
        size.height * 0.7338333,
        size.width * 0.8481667,
        size.height * 0.7068333,
        size.width * 0.8518333,
        size.height * 0.6825000);
    path_92.cubicTo(
        size.width * 0.8518333,
        size.height * 0.6821667,
        size.width * 0.8520000,
        size.height * 0.6816667,
        size.width * 0.8520000,
        size.height * 0.6813333);

    Paint paint_92_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_92_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_92_stroke.strokeCap = StrokeCap.round;
    paint_92_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_92, paint_92_stroke);

    Path path_93 = Path();
    path_93.moveTo(size.width * 0.8348333, size.height * 0.5758333);
    path_93.cubicTo(
        size.width * 0.8426667,
        size.height * 0.6355000,
        size.width * 0.8433333,
        size.height * 0.6950000,
        size.width * 0.8393333,
        size.height * 0.7586667);
    path_93.cubicTo(
        size.width * 0.8383333,
        size.height * 0.7758333,
        size.width * 0.8368333,
        size.height * 0.7933333,
        size.width * 0.8351667,
        size.height * 0.8111667);
    path_93.cubicTo(
        size.width * 0.8328333,
        size.height * 0.8346667,
        size.width * 0.8320000,
        size.height * 0.8780000,
        size.width * 0.8013333,
        size.height * 0.8870000);

    Paint paint_93_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_93_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_93_stroke.strokeCap = StrokeCap.round;
    paint_93_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_93, paint_93_stroke);

    Path path_94 = Path();
    path_94.moveTo(size.width * 0.3278333, size.height * 0.7158333);
    path_94.cubicTo(
        size.width * 0.3320000,
        size.height * 0.7150000,
        size.width * 0.3358333,
        size.height * 0.7145000,
        size.width * 0.3393333,
        size.height * 0.7145000);
    path_94.cubicTo(
        size.width * 0.3458333,
        size.height * 0.7143333,
        size.width * 0.3513333,
        size.height * 0.7160000,
        size.width * 0.3563333,
        size.height * 0.7203333);
    path_94.cubicTo(
        size.width * 0.3595000,
        size.height * 0.7230000,
        size.width * 0.3620000,
        size.height * 0.7263333,
        size.width * 0.3638333,
        size.height * 0.7300000);
    path_94.cubicTo(
        size.width * 0.3668333,
        size.height * 0.7353333,
        size.width * 0.3685000,
        size.height * 0.7415000,
        size.width * 0.3695000,
        size.height * 0.7475000);
    path_94.cubicTo(
        size.width * 0.3710000,
        size.height * 0.7576667,
        size.width * 0.3705000,
        size.height * 0.7680000,
        size.width * 0.3705000,
        size.height * 0.7781667);
    path_94.cubicTo(
        size.width * 0.3705000,
        size.height * 0.7855000,
        size.width * 0.3708333,
        size.height * 0.7930000,
        size.width * 0.3736667,
        size.height * 0.7998333);
    path_94.cubicTo(
        size.width * 0.3751667,
        size.height * 0.8031667,
        size.width * 0.3773333,
        size.height * 0.8061667,
        size.width * 0.3800000,
        size.height * 0.8086667);
    path_94.cubicTo(
        size.width * 0.3828333,
        size.height * 0.8111667,
        size.width * 0.3861667,
        size.height * 0.8128333,
        size.width * 0.3900000,
        size.height * 0.8130000);
    path_94.cubicTo(
        size.width * 0.3955000,
        size.height * 0.8135000,
        size.width * 0.4006667,
        size.height * 0.8110000,
        size.width * 0.4046667,
        size.height * 0.8070000);
    path_94.cubicTo(
        size.width * 0.4060000,
        size.height * 0.8056667,
        size.width * 0.4071667,
        size.height * 0.8041667,
        size.width * 0.4081667,
        size.height * 0.8026667);
    path_94.cubicTo(
        size.width * 0.4116667,
        size.height * 0.7971667,
        size.width * 0.4133333,
        size.height * 0.7906667,
        size.width * 0.4143333,
        size.height * 0.7841667);
    path_94.cubicTo(
        size.width * 0.4145000,
        size.height * 0.7833333,
        size.width * 0.4146667,
        size.height * 0.7826667,
        size.width * 0.4146667,
        size.height * 0.7818333);
    path_94.cubicTo(
        size.width * 0.4170000,
        size.height * 0.7651667,
        size.width * 0.4173333,
        size.height * 0.7483333,
        size.width * 0.4156667,
        size.height * 0.7316667);
    path_94.cubicTo(
        size.width * 0.4151667,
        size.height * 0.7265000,
        size.width * 0.4143333,
        size.height * 0.7213333,
        size.width * 0.4131667,
        size.height * 0.7163333);
    path_94.cubicTo(
        size.width * 0.4103333,
        size.height * 0.7041667,
        size.width * 0.4050000,
        size.height * 0.6930000,
        size.width * 0.3951667,
        size.height * 0.6858333);

    Paint paint_94_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_94_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_94_stroke.strokeCap = StrokeCap.round;
    paint_94_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_94, paint_94_stroke);

    Path path_95 = Path();
    path_95.moveTo(size.width * 0.3636667, size.height * 0.7300000);
    path_95.cubicTo(
        size.width * 0.3405000,
        size.height * 0.7291667,
        size.width * 0.3276667,
        size.height * 0.7345000,
        size.width * 0.3273333,
        size.height * 0.7603333);
    path_95.cubicTo(
        size.width * 0.3271667,
        size.height * 0.7748333,
        size.width * 0.3263333,
        size.height * 0.7895000,
        size.width * 0.3276667,
        size.height * 0.8040000);
    path_95.cubicTo(
        size.width * 0.3280000,
        size.height * 0.8083333,
        size.width * 0.3286667,
        size.height * 0.8126667,
        size.width * 0.3295000,
        size.height * 0.8170000);
    path_95.cubicTo(
        size.width * 0.3301667,
        size.height * 0.8203333,
        size.width * 0.3311667,
        size.height * 0.8236667,
        size.width * 0.3325000,
        size.height * 0.8268333);
    path_95.cubicTo(
        size.width * 0.3343333,
        size.height * 0.8313333,
        size.width * 0.3366667,
        size.height * 0.8353333,
        size.width * 0.3400000,
        size.height * 0.8388333);
    path_95.cubicTo(
        size.width * 0.3485000,
        size.height * 0.8478333,
        size.width * 0.3613333,
        size.height * 0.8508333,
        size.width * 0.3736667,
        size.height * 0.8523333);
    path_95.cubicTo(
        size.width * 0.3845000,
        size.height * 0.8536667,
        size.width * 0.3958333,
        size.height * 0.8536667,
        size.width * 0.4063333,
        size.height * 0.8505000);
    path_95.cubicTo(
        size.width * 0.4146667,
        size.height * 0.8480000,
        size.width * 0.4225000,
        size.height * 0.8431667,
        size.width * 0.4276667,
        size.height * 0.8363333);
    path_95.cubicTo(
        size.width * 0.4290000,
        size.height * 0.8345000,
        size.width * 0.4303333,
        size.height * 0.8326667,
        size.width * 0.4313333,
        size.height * 0.8305000);
    path_95.cubicTo(
        size.width * 0.4345000,
        size.height * 0.8240000,
        size.width * 0.4351667,
        size.height * 0.8165000,
        size.width * 0.4361667,
        size.height * 0.8091667);
    path_95.cubicTo(
        size.width * 0.4363333,
        size.height * 0.8080000,
        size.width * 0.4365000,
        size.height * 0.8068333,
        size.width * 0.4366667,
        size.height * 0.8056667);
    path_95.cubicTo(
        size.width * 0.4376667,
        size.height * 0.7995000,
        size.width * 0.4390000,
        size.height * 0.7935000,
        size.width * 0.4425000,
        size.height * 0.7883333);
    path_95.cubicTo(
        size.width * 0.4465000,
        size.height * 0.7823333,
        size.width * 0.4540000,
        size.height * 0.7778333,
        size.width * 0.4610000,
        size.height * 0.7795000);
    path_95.cubicTo(
        size.width * 0.4691667,
        size.height * 0.7813333,
        size.width * 0.4733333,
        size.height * 0.7896667,
        size.width * 0.4756667,
        size.height * 0.7980000);
    path_95.cubicTo(
        size.width * 0.4760000,
        size.height * 0.7993333,
        size.width * 0.4763333,
        size.height * 0.8005000,
        size.width * 0.4765000,
        size.height * 0.8016667);
    path_95.cubicTo(
        size.width * 0.4768333,
        size.height * 0.8030000,
        size.width * 0.4770000,
        size.height * 0.8043333,
        size.width * 0.4773333,
        size.height * 0.8056667);
    path_95.cubicTo(
        size.width * 0.4793333,
        size.height * 0.8156667,
        size.width * 0.4805000,
        size.height * 0.8260000,
        size.width * 0.4806667,
        size.height * 0.8361667);
    path_95.cubicTo(
        size.width * 0.4808333,
        size.height * 0.8418333,
        size.width * 0.4806667,
        size.height * 0.8475000,
        size.width * 0.4803333,
        size.height * 0.8530000);
    path_95.cubicTo(
        size.width * 0.4800000,
        size.height * 0.8588333,
        size.width * 0.4793333,
        size.height * 0.8648333,
        size.width * 0.4783333,
        size.height * 0.8706667);
    path_95.cubicTo(
        size.width * 0.4781667,
        size.height * 0.8716667,
        size.width * 0.4780000,
        size.height * 0.8725000,
        size.width * 0.4778333,
        size.height * 0.8735000);

    Paint paint_95_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_95_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_95_stroke.strokeCap = StrokeCap.round;
    paint_95_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_95, paint_95_stroke);

    Path path_96 = Path();
    path_96.moveTo(size.width * 0.3151667, size.height * 0.6641667);
    path_96.cubicTo(
        size.width * 0.3141667,
        size.height * 0.6645000,
        size.width * 0.3133333,
        size.height * 0.6650000,
        size.width * 0.3125000,
        size.height * 0.6655000);
    path_96.cubicTo(
        size.width * 0.3101667,
        size.height * 0.6666667,
        size.width * 0.3080000,
        size.height * 0.6680000,
        size.width * 0.3060000,
        size.height * 0.6693333);
    path_96.cubicTo(
        size.width * 0.3030000,
        size.height * 0.6715000,
        size.width * 0.3000000,
        size.height * 0.6738333,
        size.width * 0.2973333,
        size.height * 0.6765000);
    path_96.cubicTo(
        size.width * 0.2955000,
        size.height * 0.6783333,
        size.width * 0.2936667,
        size.height * 0.6803333,
        size.width * 0.2918333,
        size.height * 0.6825000);
    path_96.cubicTo(
        size.width * 0.2900000,
        size.height * 0.6846667,
        size.width * 0.2883333,
        size.height * 0.6870000,
        size.width * 0.2868333,
        size.height * 0.6893333);
    path_96.cubicTo(
        size.width * 0.2775000,
        size.height * 0.7035000,
        size.width * 0.2718333,
        size.height * 0.7206667,
        size.width * 0.2686667,
        size.height * 0.7361667);
    path_96.cubicTo(
        size.width * 0.2681667,
        size.height * 0.7383333,
        size.width * 0.2678333,
        size.height * 0.7403333,
        size.width * 0.2675000,
        size.height * 0.7425000);
    path_96.cubicTo(
        size.width * 0.2651667,
        size.height * 0.7563333,
        size.width * 0.2636667,
        size.height * 0.7703333,
        size.width * 0.2633333,
        size.height * 0.7843333);
    path_96.cubicTo(
        size.width * 0.2630000,
        size.height * 0.7958333,
        size.width * 0.2633333,
        size.height * 0.8073333,
        size.width * 0.2645000,
        size.height * 0.8186667);
    path_96.cubicTo(
        size.width * 0.2658333,
        size.height * 0.8331667,
        size.width * 0.2686667,
        size.height * 0.8483333,
        size.width * 0.2746667,
        size.height * 0.8615000);
    path_96.cubicTo(
        size.width * 0.2791667,
        size.height * 0.8713333,
        size.width * 0.2853333,
        size.height * 0.8800000,
        size.width * 0.2940000,
        size.height * 0.8866667);
    path_96.cubicTo(
        size.width * 0.2953333,
        size.height * 0.8876667,
        size.width * 0.2966667,
        size.height * 0.8885000,
        size.width * 0.2980000,
        size.height * 0.8895000);
    path_96.cubicTo(
        size.width * 0.3116667,
        size.height * 0.8978333,
        size.width * 0.3283333,
        size.height * 0.8993333,
        size.width * 0.3445000,
        size.height * 0.9008333);
    path_96.cubicTo(
        size.width * 0.3508333,
        size.height * 0.9013333,
        size.width * 0.3581667,
        size.height * 0.9020000,
        size.width * 0.3661667,
        size.height * 0.9023333);
    path_96.cubicTo(
        size.width * 0.3823333,
        size.height * 0.9031667,
        size.width * 0.4010000,
        size.height * 0.9033333,
        size.width * 0.4181667,
        size.height * 0.9023333);
    path_96.cubicTo(
        size.width * 0.4328333,
        size.height * 0.9015000,
        size.width * 0.4465000,
        size.height * 0.8996667,
        size.width * 0.4565000,
        size.height * 0.8965000);
    path_96.cubicTo(
        size.width * 0.4568333,
        size.height * 0.8963333,
        size.width * 0.4571667,
        size.height * 0.8963333,
        size.width * 0.4575000,
        size.height * 0.8961667);
    path_96.cubicTo(
        size.width * 0.4713333,
        size.height * 0.8915000,
        size.width * 0.4763333,
        size.height * 0.8820000,
        size.width * 0.4778333,
        size.height * 0.8736667);

    Paint paint_96_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_96_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_96_stroke.strokeCap = StrokeCap.round;
    paint_96_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_96, paint_96_stroke);

    Path path_97 = Path();
    path_97.moveTo(size.width * 0.4061667, size.height * 0.8506667);
    path_97.cubicTo(
        size.width * 0.4140000,
        size.height * 0.8503333,
        size.width * 0.4305000,
        size.height * 0.8496667,
        size.width * 0.4380000,
        size.height * 0.8516667);
    path_97.cubicTo(
        size.width * 0.4455000,
        size.height * 0.8536667,
        size.width * 0.4526667,
        size.height * 0.8581667,
        size.width * 0.4561667,
        size.height * 0.8650000);
    path_97.cubicTo(
        size.width * 0.4600000,
        size.height * 0.8726667,
        size.width * 0.4585000,
        size.height * 0.8828333,
        size.width * 0.4526667,
        size.height * 0.8891667);
    path_97.cubicTo(
        size.width * 0.4445000,
        size.height * 0.8983333,
        size.width * 0.4278333,
        size.height * 0.9018333,
        size.width * 0.4181667,
        size.height * 0.9023333);
    path_97.cubicTo(
        size.width * 0.4170000,
        size.height * 0.9023333,
        size.width * 0.4158333,
        size.height * 0.9025000,
        size.width * 0.4150000,
        size.height * 0.9023333);

    Paint paint_97_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_97_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_97_stroke.strokeCap = StrokeCap.round;
    paint_97_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_97, paint_97_stroke);

    Path path_98 = Path();
    path_98.moveTo(size.width * 0.4311667, size.height * 0.8306667);
    path_98.cubicTo(
        size.width * 0.4400000,
        size.height * 0.8230000,
        size.width * 0.4406667,
        size.height * 0.8165000,
        size.width * 0.4436667,
        size.height * 0.8101667);
    path_98.cubicTo(
        size.width * 0.4466667,
        size.height * 0.8038333,
        size.width * 0.4505000,
        size.height * 0.7976667,
        size.width * 0.4563333,
        size.height * 0.7940000);
    path_98.cubicTo(
        size.width * 0.4623333,
        size.height * 0.7905000,
        size.width * 0.4715000,
        size.height * 0.7908333,
        size.width * 0.4755000,
        size.height * 0.7983333);

    Paint paint_98_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_98_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_98_stroke.strokeCap = StrokeCap.round;
    paint_98_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_98, paint_98_stroke);

    Path path_99 = Path();
    path_99.moveTo(size.width * 0.3151667, size.height * 0.6641667);
    path_99.cubicTo(
        size.width * 0.3248333,
        size.height * 0.6595000,
        size.width * 0.3368333,
        size.height * 0.6566667,
        size.width * 0.3505000,
        size.height * 0.6548333);
    path_99.cubicTo(
        size.width * 0.3918333,
        size.height * 0.6491667,
        size.width * 0.4480000,
        size.height * 0.6536667,
        size.width * 0.4988333,
        size.height * 0.6531667);
    path_99.cubicTo(
        size.width * 0.5061667,
        size.height * 0.6531667,
        size.width * 0.5133333,
        size.height * 0.6530000,
        size.width * 0.5203333,
        size.height * 0.6525000);
    path_99.cubicTo(
        size.width * 0.5245000,
        size.height * 0.6523333,
        size.width * 0.5285000,
        size.height * 0.6520000,
        size.width * 0.5326667,
        size.height * 0.6516667);
    path_99.cubicTo(
        size.width * 0.5330000,
        size.height * 0.6516667,
        size.width * 0.5333333,
        size.height * 0.6516667,
        size.width * 0.5336667,
        size.height * 0.6515000);
    path_99.cubicTo(
        size.width * 0.5426667,
        size.height * 0.6506667,
        size.width * 0.5516667,
        size.height * 0.6488333,
        size.width * 0.5600000,
        size.height * 0.6453333);
    path_99.cubicTo(
        size.width * 0.5723333,
        size.height * 0.6400000,
        size.width * 0.5866667,
        size.height * 0.6356667,
        size.width * 0.5915000,
        size.height * 0.6051667);

    Paint paint_99_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_99_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_99_stroke.strokeCap = StrokeCap.round;
    paint_99_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_99, paint_99_stroke);

    Path path_100 = Path();
    path_100.moveTo(size.width * 0.6008333, size.height * 0.4416667);
    path_100.cubicTo(
        size.width * 0.5990000,
        size.height * 0.4925000,
        size.width * 0.5976667,
        size.height * 0.5345000,
        size.width * 0.5916667,
        size.height * 0.6051667);

    Paint paint_100_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_100_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_100_stroke.strokeCap = StrokeCap.round;
    paint_100_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_100, paint_100_stroke);

    Path path_101 = Path();
    path_101.moveTo(size.width * 0.4158333, size.height * 0.7316667);
    path_101.cubicTo(
        size.width * 0.4325000,
        size.height * 0.7320000,
        size.width * 0.4491667,
        size.height * 0.7325000,
        size.width * 0.4660000,
        size.height * 0.7330000);
    path_101.cubicTo(
        size.width * 0.4781667,
        size.height * 0.7333333,
        size.width * 0.4903333,
        size.height * 0.7338333,
        size.width * 0.5025000,
        size.height * 0.7341667);
    path_101.cubicTo(
        size.width * 0.5076667,
        size.height * 0.7343333,
        size.width * 0.5128333,
        size.height * 0.7345000,
        size.width * 0.5181667,
        size.height * 0.7346667);
    path_101.cubicTo(
        size.width * 0.5371667,
        size.height * 0.7351667,
        size.width * 0.5561667,
        size.height * 0.7355000,
        size.width * 0.5750000,
        size.height * 0.7353333);
    path_101.cubicTo(
        size.width * 0.5751667,
        size.height * 0.7353333,
        size.width * 0.5753333,
        size.height * 0.7353333,
        size.width * 0.5756667,
        size.height * 0.7353333);
    path_101.cubicTo(
        size.width * 0.5825000,
        size.height * 0.7353333,
        size.width * 0.5891667,
        size.height * 0.7351667,
        size.width * 0.5958333,
        size.height * 0.7350000);
    path_101.cubicTo(
        size.width * 0.5995000,
        size.height * 0.7348333,
        size.width * 0.6030000,
        size.height * 0.7348333,
        size.width * 0.6066667,
        size.height * 0.7346667);
    path_101.cubicTo(
        size.width * 0.6070000,
        size.height * 0.7346667,
        size.width * 0.6073333,
        size.height * 0.7346667,
        size.width * 0.6076667,
        size.height * 0.7346667);
    path_101.cubicTo(
        size.width * 0.6186667,
        size.height * 0.7341667,
        size.width * 0.6298333,
        size.height * 0.7335000,
        size.width * 0.6405000,
        size.height * 0.7305000);
    path_101.cubicTo(
        size.width * 0.6511667,
        size.height * 0.7275000,
        size.width * 0.6613333,
        size.height * 0.7218333,
        size.width * 0.6681667,
        size.height * 0.7131667);
    path_101.cubicTo(
        size.width * 0.6706667,
        size.height * 0.7098333,
        size.width * 0.6726667,
        size.height * 0.7063333,
        size.width * 0.6741667,
        size.height * 0.7026667);
    path_101.cubicTo(
        size.width * 0.6786667,
        size.height * 0.6915000,
        size.width * 0.6793333,
        size.height * 0.6786667,
        size.width * 0.6798333,
        size.height * 0.6663333);
    path_101.cubicTo(
        size.width * 0.6800000,
        size.height * 0.6616667,
        size.width * 0.6801667,
        size.height * 0.6570000,
        size.width * 0.6805000,
        size.height * 0.6523333);
    path_101.cubicTo(
        size.width * 0.6806667,
        size.height * 0.6493333,
        size.width * 0.6808333,
        size.height * 0.6463333,
        size.width * 0.6808333,
        size.height * 0.6431667);
    path_101.cubicTo(
        size.width * 0.6811667,
        size.height * 0.6368333,
        size.width * 0.6815000,
        size.height * 0.6305000,
        size.width * 0.6818333,
        size.height * 0.6241667);
    path_101.cubicTo(
        size.width * 0.6823333,
        size.height * 0.6151667,
        size.width * 0.6828333,
        size.height * 0.6060000,
        size.width * 0.6833333,
        size.height * 0.5970000);
    path_101.cubicTo(
        size.width * 0.6846667,
        size.height * 0.5733333,
        size.width * 0.6858333,
        size.height * 0.5495000,
        size.width * 0.6868333,
        size.height * 0.5275000);

    Paint paint_101_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_101_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_101_stroke.strokeCap = StrokeCap.round;
    paint_101_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_101, paint_101_stroke);

    Path path_102 = Path();
    path_102.moveTo(size.width * 0.5755000, size.height * 0.7360000);
    path_102.cubicTo(
        size.width * 0.5843333,
        size.height * 0.7635000,
        size.width * 0.5896667,
        size.height * 0.7925000,
        size.width * 0.5908333,
        size.height * 0.8211667);
    path_102.cubicTo(
        size.width * 0.5911667,
        size.height * 0.8301667,
        size.width * 0.5911667,
        size.height * 0.8391667,
        size.width * 0.5906667,
        size.height * 0.8481667);

    Paint paint_102_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_102_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_102_stroke.strokeCap = StrokeCap.round;
    paint_102_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_102, paint_102_stroke);

    Path path_103 = Path();
    path_103.moveTo(size.width * 0.5338333, size.height * 0.6523333);
    path_103.cubicTo(
        size.width * 0.5415000,
        size.height * 0.6631667,
        size.width * 0.5485000,
        size.height * 0.6743333,
        size.width * 0.5545000,
        size.height * 0.6858333);
    path_103.cubicTo(
        size.width * 0.5581667,
        size.height * 0.6926667,
        size.width * 0.5615000,
        size.height * 0.6998333,
        size.width * 0.5645000,
        size.height * 0.7070000);
    path_103.cubicTo(
        size.width * 0.5661667,
        size.height * 0.7110000,
        size.width * 0.5678333,
        size.height * 0.7150000,
        size.width * 0.5693333,
        size.height * 0.7190000);
    path_103.cubicTo(
        size.width * 0.5711667,
        size.height * 0.7240000,
        size.width * 0.5730000,
        size.height * 0.7290000,
        size.width * 0.5746667,
        size.height * 0.7340000);

    Paint paint_103_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_103_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_103_stroke.strokeCap = StrokeCap.round;
    paint_103_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_103, paint_103_stroke);

    Path path_104 = Path();
    path_104.moveTo(size.width * 0.4403333, size.height * 0.5650000);
    path_104.cubicTo(
        size.width * 0.4756667,
        size.height * 0.5868333,
        size.width * 0.5080000,
        size.height * 0.6165000,
        size.width * 0.5326667,
        size.height * 0.6506667);

    Paint paint_104_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_104_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_104_stroke.strokeCap = StrokeCap.round;
    paint_104_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_104, paint_104_stroke);

    Path path_105 = Path();
    path_105.moveTo(size.width * 0.3505000, size.height * 0.6546667);
    path_105.cubicTo(
        size.width * 0.3715000,
        size.height * 0.6186667,
        size.width * 0.4041667,
        size.height * 0.5890000,
        size.width * 0.4381667,
        size.height * 0.5650000);

    Paint paint_105_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_105_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_105_stroke.strokeCap = StrokeCap.round;
    paint_105_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_105, paint_105_stroke);

    Path path_106 = Path();
    path_106.moveTo(size.width * 0.5641667, size.height * 0.3553333);
    path_106.cubicTo(
        size.width * 0.5890000,
        size.height * 0.3546667,
        size.width * 0.6205000,
        size.height * 0.3568333,
        size.width * 0.6328333,
        size.height * 0.3783333);
    path_106.cubicTo(
        size.width * 0.6393333,
        size.height * 0.3898333,
        size.width * 0.6388333,
        size.height * 0.4038333,
        size.width * 0.6381667,
        size.height * 0.4170000);
    path_106.cubicTo(
        size.width * 0.6365000,
        size.height * 0.4511667,
        size.width * 0.6346667,
        size.height * 0.4853333,
        size.width * 0.6330000,
        size.height * 0.5195000);
    path_106.cubicTo(
        size.width * 0.6318333,
        size.height * 0.5420000,
        size.width * 0.6318333,
        size.height * 0.5675000,
        size.width * 0.6483333,
        size.height * 0.5830000);
    path_106.cubicTo(
        size.width * 0.6576667,
        size.height * 0.5918333,
        size.width * 0.6700000,
        size.height * 0.5950000,
        size.width * 0.6830000,
        size.height * 0.5966667);
    path_106.cubicTo(
        size.width * 0.7035000,
        size.height * 0.5991667,
        size.width * 0.7261667,
        size.height * 0.5980000,
        size.width * 0.7430000,
        size.height * 0.6093333);
    path_106.cubicTo(
        size.width * 0.7640000,
        size.height * 0.6235000,
        size.width * 0.7690000,
        size.height * 0.6518333,
        size.width * 0.7711667,
        size.height * 0.6771667);
    path_106.cubicTo(
        size.width * 0.7761667,
        size.height * 0.7338333,
        size.width * 0.7756667,
        size.height * 0.7981667,
        size.width * 0.7713333,
        size.height * 0.8573333);
    path_106.cubicTo(
        size.width * 0.7705000,
        size.height * 0.8680000,
        size.width * 0.7696667,
        size.height * 0.8785000,
        size.width * 0.7686667,
        size.height * 0.8888333);

    Paint paint_106_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_106_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_106_stroke.strokeCap = StrokeCap.round;
    paint_106_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_106, paint_106_stroke);

    Path path_107 = Path();
    path_107.moveTo(size.width * 0.5956667, size.height * 0.7340000);
    path_107.cubicTo(
        size.width * 0.5948333,
        size.height * 0.7291667,
        size.width * 0.5943333,
        size.height * 0.7243333,
        size.width * 0.5943333,
        size.height * 0.7195000);
    path_107.cubicTo(
        size.width * 0.5940000,
        size.height * 0.6985000,
        size.width * 0.6008333,
        size.height * 0.6773333,
        size.width * 0.6135000,
        size.height * 0.6606667);
    path_107.cubicTo(
        size.width * 0.6291667,
        size.height * 0.6400000,
        size.width * 0.6535000,
        size.height * 0.6263333,
        size.width * 0.6793333,
        size.height * 0.6236667);

    Paint paint_107_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001250000;
    paint_107_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_107_stroke.strokeCap = StrokeCap.round;
    paint_107_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_107, paint_107_stroke);

    Path path_108 = Path();
    path_108.moveTo(size.width * 0.6065000, size.height * 0.7340000);
    path_108.cubicTo(
        size.width * 0.6060000,
        size.height * 0.7291667,
        size.width * 0.6058333,
        size.height * 0.7243333,
        size.width * 0.6061667,
        size.height * 0.7196667);
    path_108.cubicTo(
        size.width * 0.6073333,
        size.height * 0.7028333,
        size.width * 0.6136667,
        size.height * 0.6865000,
        size.width * 0.6241667,
        size.height * 0.6733333);
    path_108.cubicTo(
        size.width * 0.6376667,
        size.height * 0.6565000,
        size.width * 0.6580000,
        size.height * 0.6451667,
        size.width * 0.6795000,
        size.height * 0.6426667);

    Paint paint_108_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_108_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_108_stroke.strokeCap = StrokeCap.round;
    paint_108_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_108, paint_108_stroke);

    Path path_109 = Path();
    path_109.moveTo(size.width * 0.6130000, size.height * 0.7326667);
    path_109.cubicTo(
        size.width * 0.6128333,
        size.height * 0.7283333,
        size.width * 0.6130000,
        size.height * 0.7240000,
        size.width * 0.6136667,
        size.height * 0.7196667);
    path_109.cubicTo(
        size.width * 0.6156667,
        size.height * 0.7050000,
        size.width * 0.6218333,
        size.height * 0.6908333,
        size.width * 0.6311667,
        size.height * 0.6795000);
    path_109.cubicTo(
        size.width * 0.6433333,
        size.height * 0.6648333,
        size.width * 0.6611667,
        size.height * 0.6548333,
        size.width * 0.6800000,
        size.height * 0.6520000);
    path_109.cubicTo(
        size.width * 0.6800000,
        size.height * 0.6520000,
        size.width * 0.6801667,
        size.height * 0.6520000,
        size.width * 0.6801667,
        size.height * 0.6520000);

    Paint paint_109_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_109_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_109_stroke.strokeCap = StrokeCap.round;
    paint_109_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_109, paint_109_stroke);

    Path path_110 = Path();
    path_110.moveTo(size.width * 0.4148333, size.height * 0.7158333);
    path_110.cubicTo(
        size.width * 0.4663333,
        size.height * 0.7168333,
        size.width * 0.5178333,
        size.height * 0.7180000,
        size.width * 0.5695000,
        size.height * 0.7190000);
    path_110.cubicTo(
        size.width * 0.5778333,
        size.height * 0.7191667,
        size.width * 0.5861667,
        size.height * 0.7193333,
        size.width * 0.5943333,
        size.height * 0.7195000);
    path_110.cubicTo(
        size.width * 0.5946667,
        size.height * 0.7195000,
        size.width * 0.5950000,
        size.height * 0.7195000,
        size.width * 0.5953333,
        size.height * 0.7195000);
    path_110.cubicTo(
        size.width * 0.5988333,
        size.height * 0.7195000,
        size.width * 0.6025000,
        size.height * 0.7196667,
        size.width * 0.6061667,
        size.height * 0.7196667);
    path_110.cubicTo(
        size.width * 0.6086667,
        size.height * 0.7196667,
        size.width * 0.6111667,
        size.height * 0.7196667,
        size.width * 0.6136667,
        size.height * 0.7195000);
    path_110.cubicTo(
        size.width * 0.6351667,
        size.height * 0.7190000,
        size.width * 0.6566667,
        size.height * 0.7156667,
        size.width * 0.6723333,
        size.height * 0.7016667);

    Paint paint_110_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_110_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_110_stroke.strokeCap = StrokeCap.round;
    paint_110_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_110, paint_110_stroke);

    Path path_111 = Path();
    path_111.moveTo(size.width * 0.3333333, size.height * 0.7150000);
    path_111.cubicTo(
        size.width * 0.3351667,
        size.height * 0.7148333,
        size.width * 0.3371667,
        size.height * 0.7145000,
        size.width * 0.3393333,
        size.height * 0.7143333);
    path_111.cubicTo(
        size.width * 0.3505000,
        size.height * 0.7133333,
        size.width * 0.3650000,
        size.height * 0.7135000,
        size.width * 0.3721667,
        size.height * 0.7198333);
    path_111.cubicTo(
        size.width * 0.3781667,
        size.height * 0.7251667,
        size.width * 0.3805000,
        size.height * 0.7333333,
        size.width * 0.3808333,
        size.height * 0.7413333);
    path_111.cubicTo(
        size.width * 0.3813333,
        size.height * 0.7493333,
        size.width * 0.3818333,
        size.height * 0.7571667,
        size.width * 0.3821667,
        size.height * 0.7651667);
    path_111.cubicTo(
        size.width * 0.3825000,
        size.height * 0.7731667,
        size.width * 0.3830000,
        size.height * 0.7815000,
        size.width * 0.3888333,
        size.height * 0.7868333);
    path_111.cubicTo(
        size.width * 0.3946667,
        size.height * 0.7923333,
        size.width * 0.4065000,
        size.height * 0.7950000,
        size.width * 0.4141667,
        size.height * 0.7840000);

    Paint paint_111_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_111_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_111_stroke.strokeCap = StrokeCap.round;
    paint_111_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_111, paint_111_stroke);

    Path path_112 = Path();
    path_112.moveTo(size.width * 0.4636667, size.height * 0.7056667);
    path_112.cubicTo(
        size.width * 0.4973333,
        size.height * 0.7061667,
        size.width * 0.5310000,
        size.height * 0.7065000,
        size.width * 0.5646667,
        size.height * 0.7070000);
    path_112.cubicTo(
        size.width * 0.5695000,
        size.height * 0.7070000,
        size.width * 0.5745000,
        size.height * 0.7071667,
        size.width * 0.5793333,
        size.height * 0.7071667);

    Paint paint_112_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_112_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_112_stroke.strokeCap = StrokeCap.round;
    paint_112_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_112, paint_112_stroke);

    Path path_113 = Path();
    path_113.moveTo(size.width * 0.2605000, size.height * 0.7845000);
    path_113.cubicTo(
        size.width * 0.2303333,
        size.height * 0.7845000,
        size.width * 0.1996667,
        size.height * 0.7848333,
        size.width * 0.1710000,
        size.height * 0.7943333);
    path_113.cubicTo(
        size.width * 0.1423333,
        size.height * 0.8038333,
        size.width * 0.1158333,
        size.height * 0.8243333,
        size.width * 0.1070000,
        size.height * 0.8531667);
    path_113.cubicTo(
        size.width * 0.1058333,
        size.height * 0.8566667,
        size.width * 0.1051667,
        size.height * 0.8600000,
        size.width * 0.1050000,
        size.height * 0.8631667);
    path_113.cubicTo(
        size.width * 0.1046667,
        size.height * 0.8686667,
        size.width * 0.1060000,
        size.height * 0.8736667,
        size.width * 0.1100000,
        size.height * 0.8785000);
    path_113.cubicTo(
        size.width * 0.1171667,
        size.height * 0.8871667,
        size.width * 0.1300000,
        size.height * 0.8893333,
        size.width * 0.1413333,
        size.height * 0.8893333);
    path_113.cubicTo(
        size.width * 0.1935000,
        size.height * 0.8890000,
        size.width * 0.2456667,
        size.height * 0.8903333,
        size.width * 0.2978333,
        size.height * 0.8901667);

    Paint paint_113_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002500000;
    paint_113_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_113_stroke.strokeCap = StrokeCap.round;
    paint_113_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_113, paint_113_stroke);

    Path path_114 = Path();
    path_114.moveTo(size.width * 0.1061667, size.height * 0.8631667);
    path_114.cubicTo(
        size.width * 0.1620000,
        size.height * 0.8628333,
        size.width * 0.2178333,
        size.height * 0.8625000,
        size.width * 0.2735000,
        size.height * 0.8621667);

    Paint paint_114_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_114_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_114_stroke.strokeCap = StrokeCap.round;
    paint_114_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_114, paint_114_stroke);

    Path path_115 = Path();
    path_115.moveTo(size.width * 0.2973333, size.height * 0.6766667);
    path_115.cubicTo(
        size.width * 0.2830000,
        size.height * 0.7045000,
        size.width * 0.2791667,
        size.height * 0.7291667,
        size.width * 0.2760000,
        size.height * 0.7601667);
    path_115.cubicTo(
        size.width * 0.2728333,
        size.height * 0.7911667,
        size.width * 0.2766667,
        size.height * 0.8330000,
        size.width * 0.2925000,
        size.height * 0.8598333);
    path_115.cubicTo(
        size.width * 0.3085000,
        size.height * 0.8865000,
        size.width * 0.3355000,
        size.height * 0.8983333,
        size.width * 0.3661667,
        size.height * 0.9025000);
    path_115.cubicTo(
        size.width * 0.3663333,
        size.height * 0.9025000,
        size.width * 0.3663333,
        size.height * 0.9025000,
        size.width * 0.3665000,
        size.height * 0.9025000);

    Paint paint_115_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_115_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_115_stroke.strokeCap = StrokeCap.round;
    paint_115_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_115, paint_115_stroke);

    Path path_116 = Path();
    path_116.moveTo(size.width * 0.4990000, size.height * 0.5645000);
    path_116.cubicTo(
        size.width * 0.5021667,
        size.height * 0.5646667,
        size.width * 0.5053333,
        size.height * 0.5648333,
        size.width * 0.5085000,
        size.height * 0.5648333);
    path_116.cubicTo(
        size.width * 0.5293333,
        size.height * 0.5656667,
        size.width * 0.5488333,
        size.height * 0.5665000,
        size.width * 0.5696667,
        size.height * 0.5675000);
    path_116.cubicTo(
        size.width * 0.5726667,
        size.height * 0.5676667,
        size.width * 0.5758333,
        size.height * 0.5676667,
        size.width * 0.5790000,
        size.height * 0.5678333);

    Paint paint_116_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001250000;
    paint_116_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_116_stroke.strokeCap = StrokeCap.round;
    paint_116_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_116, paint_116_stroke);

    Path path_117 = Path();
    path_117.moveTo(size.width * 0.2565000, size.height * 0.6608333);
    path_117.cubicTo(
        size.width * 0.2633333,
        size.height * 0.6586667,
        size.width * 0.2711667,
        size.height * 0.6600000,
        size.width * 0.2770000,
        size.height * 0.6641667);
    path_117.cubicTo(
        size.width * 0.2795000,
        size.height * 0.6658333,
        size.width * 0.2816667,
        size.height * 0.6678333,
        size.width * 0.2833333,
        size.height * 0.6706667);
    path_117.cubicTo(
        size.width * 0.2856667,
        size.height * 0.6745000,
        size.width * 0.2870000,
        size.height * 0.6801667,
        size.width * 0.2866667,
        size.height * 0.6895000);

    Paint paint_117_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_117_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_117_stroke.strokeCap = StrokeCap.round;
    paint_117_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_117, paint_117_stroke);

    Path path_118 = Path();
    path_118.moveTo(size.width * 0.2743333, size.height * 0.6523333);
    path_118.cubicTo(
        size.width * 0.2818333,
        size.height * 0.6526667,
        size.width * 0.2911667,
        size.height * 0.6580000,
        size.width * 0.2931667,
        size.height * 0.6683333);
    path_118.cubicTo(
        size.width * 0.2938333,
        size.height * 0.6723333,
        size.width * 0.2935000,
        size.height * 0.6770000,
        size.width * 0.2915000,
        size.height * 0.6823333);

    Paint paint_118_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_118_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_118_stroke.strokeCap = StrokeCap.round;
    paint_118_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_118, paint_118_stroke);

    Path path_119 = Path();
    path_119.moveTo(size.width * 0.2466667, size.height * 0.7213333);
    path_119.cubicTo(
        size.width * 0.2466667,
        size.height * 0.7213333,
        size.width * 0.2466667,
        size.height * 0.7211667,
        size.width * 0.2466667,
        size.height * 0.7213333);
    path_119.cubicTo(
        size.width * 0.2453333,
        size.height * 0.7056667,
        size.width * 0.2536667,
        size.height * 0.6905000,
        size.width * 0.2635000,
        size.height * 0.6815000);
    path_119.cubicTo(
        size.width * 0.2683333,
        size.height * 0.6770000,
        size.width * 0.2756667,
        size.height * 0.6730000,
        size.width * 0.2831667,
        size.height * 0.6705000);
    path_119.cubicTo(
        size.width * 0.2863333,
        size.height * 0.6695000,
        size.width * 0.2896667,
        size.height * 0.6686667,
        size.width * 0.2930000,
        size.height * 0.6683333);
    path_119.cubicTo(
        size.width * 0.2975000,
        size.height * 0.6678333,
        size.width * 0.3018333,
        size.height * 0.6680000,
        size.width * 0.3055000,
        size.height * 0.6691667);

    Paint paint_119_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0008333333;
    paint_119_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_119_stroke.strokeCap = StrokeCap.round;
    paint_119_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_119, paint_119_stroke);

    Path path_120 = Path();
    path_120.moveTo(size.width * 0.2553333, size.height * 0.4810000);
    path_120.cubicTo(
        size.width * 0.2456667,
        size.height * 0.4943333,
        size.width * 0.2376667,
        size.height * 0.5136667,
        size.width * 0.2370000,
        size.height * 0.5303333);
    path_120.cubicTo(
        size.width * 0.2368333,
        size.height * 0.5351667,
        size.width * 0.2371667,
        size.height * 0.5396667,
        size.width * 0.2380000,
        size.height * 0.5440000);
    path_120.cubicTo(
        size.width * 0.2400000,
        size.height * 0.5546667,
        size.width * 0.2450000,
        size.height * 0.5640000,
        size.width * 0.2528333,
        size.height * 0.5726667);
    path_120.cubicTo(
        size.width * 0.2638333,
        size.height * 0.5850000,
        size.width * 0.2888333,
        size.height * 0.5941667,
        size.width * 0.3080000,
        size.height * 0.5891667);

    Paint paint_120_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_120_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_120_stroke.strokeCap = StrokeCap.round;
    paint_120_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_120, paint_120_stroke);

    Path path_121 = Path();
    path_121.moveTo(size.width * 0.2793333, size.height * 0.4758333);
    path_121.cubicTo(
        size.width * 0.2683333,
        size.height * 0.4870000,
        size.width * 0.2618333,
        size.height * 0.4983333,
        size.width * 0.2573333,
        size.height * 0.5090000);
    path_121.cubicTo(
        size.width * 0.2546667,
        size.height * 0.5153333,
        size.width * 0.2528333,
        size.height * 0.5220000,
        size.width * 0.2521667,
        size.height * 0.5288333);
    path_121.cubicTo(
        size.width * 0.2516667,
        size.height * 0.5335000,
        size.width * 0.2516667,
        size.height * 0.5381667,
        size.width * 0.2525000,
        size.height * 0.5428333);
    path_121.cubicTo(
        size.width * 0.2546667,
        size.height * 0.5563333,
        size.width * 0.2628333,
        size.height * 0.5688333,
        size.width * 0.2743333,
        size.height * 0.5761667);
    path_121.cubicTo(
        size.width * 0.2858333,
        size.height * 0.5835000,
        size.width * 0.3091667,
        size.height * 0.5855000,
        size.width * 0.3215000,
        size.height * 0.5793333);

    Paint paint_121_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_121_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_121_stroke.strokeCap = StrokeCap.round;
    paint_121_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_121, paint_121_stroke);

    Path path_122 = Path();
    path_122.moveTo(size.width * 0.2978333, size.height * 0.5175000);
    path_122.cubicTo(
        size.width * 0.3015000,
        size.height * 0.5065000,
        size.width * 0.3091667,
        size.height * 0.4968333,
        size.width * 0.3190000,
        size.height * 0.4906667);

    Paint paint_122_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0008333333;
    paint_122_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_122_stroke.strokeCap = StrokeCap.round;
    paint_122_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_122, paint_122_stroke);

    Path path_123 = Path();
    path_123.moveTo(size.width * 0.2978333, size.height * 0.5175000);
    path_123.cubicTo(
        size.width * 0.3000000,
        size.height * 0.5181667,
        size.width * 0.3021667,
        size.height * 0.5188333,
        size.width * 0.3041667,
        size.height * 0.5198333);
    path_123.cubicTo(
        size.width * 0.3171667,
        size.height * 0.5258333,
        size.width * 0.3265000,
        size.height * 0.5400000,
        size.width * 0.3250000,
        size.height * 0.5541667);
    path_123.cubicTo(
        size.width * 0.3243333,
        size.height * 0.5608333,
        size.width * 0.3198333,
        size.height * 0.5681667,
        size.width * 0.3131667,
        size.height * 0.5680000);
    path_123.cubicTo(
        size.width * 0.3080000,
        size.height * 0.5680000,
        size.width * 0.3040000,
        size.height * 0.5633333,
        size.width * 0.3013333,
        size.height * 0.5586667);
    path_123.cubicTo(
        size.width * 0.2951667,
        size.height * 0.5473333,
        size.width * 0.2933333,
        size.height * 0.5336667,
        size.width * 0.2965000,
        size.height * 0.5211667);
    path_123.cubicTo(
        size.width * 0.2970000,
        size.height * 0.5200000,
        size.width * 0.2973333,
        size.height * 0.5188333,
        size.width * 0.2978333,
        size.height * 0.5175000);
    path_123.close();

    Paint paint_123_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0008333333;
    paint_123_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_123_stroke.strokeCap = StrokeCap.round;
    paint_123_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_123, paint_123_stroke);

    Path path_124 = Path();
    path_124.moveTo(size.width * 0.2268333, size.height * 0.5651667);
    path_124.cubicTo(
        size.width * 0.2303333,
        size.height * 0.5571667,
        size.width * 0.2338333,
        size.height * 0.5500000,
        size.width * 0.2380000,
        size.height * 0.5438333);
    path_124.cubicTo(
        size.width * 0.2420000,
        size.height * 0.5380000,
        size.width * 0.2465000,
        size.height * 0.5330000,
        size.width * 0.2523333,
        size.height * 0.5285000);
    path_124.cubicTo(
        size.width * 0.2555000,
        size.height * 0.5260000,
        size.width * 0.2588333,
        size.height * 0.5238333,
        size.width * 0.2628333,
        size.height * 0.5216667);
    path_124.cubicTo(
        size.width * 0.2735000,
        size.height * 0.5160000,
        size.width * 0.2863333,
        size.height * 0.5141667,
        size.width * 0.2978333,
        size.height * 0.5173333);

    Paint paint_124_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0008333333;
    paint_124_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_124_stroke.strokeCap = StrokeCap.round;
    paint_124_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_124, paint_124_stroke);

    Path path_125 = Path();
    path_125.moveTo(size.width * 0.6521667, size.height * 0.1398333);
    path_125.cubicTo(
        size.width * 0.6523333,
        size.height * 0.1398333,
        size.width * 0.6523333,
        size.height * 0.1398333,
        size.width * 0.6521667,
        size.height * 0.1398333);
    path_125.cubicTo(
        size.width * 0.6538333,
        size.height * 0.1413333,
        size.width * 0.6565000,
        size.height * 0.1415000,
        size.width * 0.6583333,
        size.height * 0.1435000);
    path_125.cubicTo(
        size.width * 0.6603333,
        size.height * 0.1456667,
        size.width * 0.6603333,
        size.height * 0.1495000,
        size.width * 0.6628333,
        size.height * 0.1511667);
    path_125.cubicTo(
        size.width * 0.6665000,
        size.height * 0.1535000,
        size.width * 0.6726667,
        size.height * 0.1516667,
        size.width * 0.6765000,
        size.height * 0.1546667);
    path_125.cubicTo(
        size.width * 0.6791667,
        size.height * 0.1568333,
        size.width * 0.6791667,
        size.height * 0.1610000,
        size.width * 0.6813333,
        size.height * 0.1636667);
    path_125.cubicTo(
        size.width * 0.6836667,
        size.height * 0.1665000,
        size.width * 0.6865000,
        size.height * 0.1661667,
        size.width * 0.6895000,
        size.height * 0.1673333);
    path_125.cubicTo(
        size.width * 0.6938333,
        size.height * 0.1690000,
        size.width * 0.6941667,
        size.height * 0.1720000,
        size.width * 0.6955000,
        size.height * 0.1758333);
    path_125.cubicTo(
        size.width * 0.6975000,
        size.height * 0.1813333,
        size.width * 0.7041667,
        size.height * 0.1786667,
        size.width * 0.7073333,
        size.height * 0.1831667);

    Paint paint_125_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_125_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_125_stroke.strokeCap = StrokeCap.round;
    paint_125_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_125, paint_125_stroke);

    Path path_126 = Path();
    path_126.moveTo(size.width * 0.6461667, size.height * 0.1441667);
    path_126.cubicTo(
        size.width * 0.6461667,
        size.height * 0.1441667,
        size.width * 0.6461667,
        size.height * 0.1443333,
        size.width * 0.6461667,
        size.height * 0.1441667);
    path_126.cubicTo(
        size.width * 0.6496667,
        size.height * 0.1455000,
        size.width * 0.6525000,
        size.height * 0.1453333,
        size.width * 0.6545000,
        size.height * 0.1493333);
    path_126.cubicTo(
        size.width * 0.6563333,
        size.height * 0.1528333,
        size.width * 0.6566667,
        size.height * 0.1573333,
        size.width * 0.6598333,
        size.height * 0.1601667);
    path_126.cubicTo(
        size.width * 0.6628333,
        size.height * 0.1626667,
        size.width * 0.6671667,
        size.height * 0.1616667,
        size.width * 0.6705000,
        size.height * 0.1631667);
    path_126.cubicTo(
        size.width * 0.6745000,
        size.height * 0.1651667,
        size.width * 0.6745000,
        size.height * 0.1681667,
        size.width * 0.6765000,
        size.height * 0.1716667);
    path_126.cubicTo(
        size.width * 0.6790000,
        size.height * 0.1758333,
        size.width * 0.6820000,
        size.height * 0.1755000,
        size.width * 0.6861667,
        size.height * 0.1770000);
    path_126.cubicTo(
        size.width * 0.6903333,
        size.height * 0.1785000,
        size.width * 0.6915000,
        size.height * 0.1810000,
        size.width * 0.6933333,
        size.height * 0.1845000);
    path_126.cubicTo(
        size.width * 0.6950000,
        size.height * 0.1876667,
        size.width * 0.6960000,
        size.height * 0.1873333,
        size.width * 0.6991667,
        size.height * 0.1885000);
    path_126.cubicTo(
        size.width * 0.7010000,
        size.height * 0.1891667,
        size.width * 0.7026667,
        size.height * 0.1898333,
        size.width * 0.7030000,
        size.height * 0.1915000);

    Paint paint_126_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_126_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_126_stroke.strokeCap = StrokeCap.round;
    paint_126_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_126, paint_126_stroke);

    Path path_127 = Path();
    path_127.moveTo(size.width * 0.6448333, size.height * 0.1531667);
    path_127.cubicTo(
        size.width * 0.6478333,
        size.height * 0.1538333,
        size.width * 0.6506667,
        size.height * 0.1561667,
        size.width * 0.6523333,
        size.height * 0.1586667);
    path_127.cubicTo(
        size.width * 0.6546667,
        size.height * 0.1623333,
        size.width * 0.6560000,
        size.height * 0.1636667,
        size.width * 0.6601667,
        size.height * 0.1660000);
    path_127.cubicTo(
        size.width * 0.6628333,
        size.height * 0.1675000,
        size.width * 0.6668333,
        size.height * 0.1685000,
        size.width * 0.6690000,
        size.height * 0.1706667);
    path_127.cubicTo(
        size.width * 0.6711667,
        size.height * 0.1726667,
        size.width * 0.6721667,
        size.height * 0.1756667,
        size.width * 0.6743333,
        size.height * 0.1776667);
    path_127.cubicTo(
        size.width * 0.6766667,
        size.height * 0.1796667,
        size.width * 0.6793333,
        size.height * 0.1805000,
        size.width * 0.6821667,
        size.height * 0.1818333);
    path_127.cubicTo(
        size.width * 0.6853333,
        size.height * 0.1833333,
        size.width * 0.6866667,
        size.height * 0.1851667,
        size.width * 0.6886667,
        size.height * 0.1878333);
    path_127.cubicTo(
        size.width * 0.6911667,
        size.height * 0.1910000,
        size.width * 0.6945000,
        size.height * 0.1928333,
        size.width * 0.6978333,
        size.height * 0.1946667);
    path_127.cubicTo(
        size.width * 0.6980000,
        size.height * 0.1946667,
        size.width * 0.6980000,
        size.height * 0.1948333,
        size.width * 0.6981667,
        size.height * 0.1948333);

    Paint paint_127_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0004166667;
    paint_127_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_127_stroke.strokeCap = StrokeCap.round;
    paint_127_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_127, paint_127_stroke);

    Path path_128 = Path();
    path_128.moveTo(size.width * 0.5606667, size.height * 0.3156667);
    path_128.cubicTo(
        size.width * 0.5625000,
        size.height * 0.3286667,
        size.width * 0.5636667,
        size.height * 0.3420000,
        size.width * 0.5640000,
        size.height * 0.3555000);
    path_128.cubicTo(
        size.width * 0.5645000,
        size.height * 0.3725000,
        size.width * 0.5638333,
        size.height * 0.3896667,
        size.width * 0.5616667,
        size.height * 0.4061667);
    path_128.cubicTo(
        size.width * 0.5578333,
        size.height * 0.4355000,
        size.width * 0.5481667,
        size.height * 0.4643333,
        size.width * 0.5311667,
        size.height * 0.4885000);
    path_128.cubicTo(
        size.width * 0.5300000,
        size.height * 0.4901667,
        size.width * 0.5286667,
        size.height * 0.4920000,
        size.width * 0.5273333,
        size.height * 0.4936667);
    path_128.cubicTo(
        size.width * 0.5051667,
        size.height * 0.5221667,
        size.width * 0.4701667,
        size.height * 0.5455000,
        size.width * 0.4403333,
        size.height * 0.5651667);

    Paint paint_128_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_128_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_128_stroke.strokeCap = StrokeCap.round;
    paint_128_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_128, paint_128_stroke);

    Path path_129 = Path();
    path_129.moveTo(size.width * 0.3033333, size.height * 0.2958333);
    path_129.cubicTo(
        size.width * 0.3061667,
        size.height * 0.2906667,
        size.width * 0.3108333,
        size.height * 0.2905000,
        size.width * 0.3108333,
        size.height * 0.2905000);
    path_129.lineTo(size.width * 0.5646667, size.height * 0.2905000);
    path_129.cubicTo(
        size.width * 0.5646667,
        size.height * 0.2905000,
        size.width * 0.5740000,
        size.height * 0.2890000,
        size.width * 0.5751667,
        size.height * 0.3023333);
    path_129.cubicTo(
        size.width * 0.5760000,
        size.height * 0.3128333,
        size.width * 0.5715000,
        size.height * 0.3153333,
        size.width * 0.5655000,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.5650000,
        size.height * 0.3153333,
        size.width * 0.5635000,
        size.height * 0.3153333,
        size.width * 0.5606667,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.5568333,
        size.height * 0.3153333,
        size.width * 0.5510000,
        size.height * 0.3153333,
        size.width * 0.5435000,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.5315000,
        size.height * 0.3153333,
        size.width * 0.5151667,
        size.height * 0.3153333,
        size.width * 0.4968333,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.4345000,
        size.height * 0.3153333,
        size.width * 0.3483333,
        size.height * 0.3153333,
        size.width * 0.3203333,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.3145000,
        size.height * 0.3153333,
        size.width * 0.3111667,
        size.height * 0.3153333,
        size.width * 0.3111667,
        size.height * 0.3153333);
    path_129.cubicTo(
        size.width * 0.3111667,
        size.height * 0.3153333,
        size.width * 0.3003333,
        size.height * 0.3146667,
        size.width * 0.3015000,
        size.height * 0.3026667);
    path_129.cubicTo(
        size.width * 0.3018333,
        size.height * 0.2996667,
        size.width * 0.3025000,
        size.height * 0.2975000,
        size.width * 0.3033333,
        size.height * 0.2958333);
    path_129.close();

    Paint paint_129_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004166667;
    paint_129_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_129_stroke.strokeCap = StrokeCap.round;
    paint_129_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_129, paint_129_stroke);

    Path path_130 = Path();
    path_130.moveTo(size.width * 0.3190000, size.height * 0.4906667);
    path_130.cubicTo(
        size.width * 0.3316667,
        size.height * 0.5016667,
        size.width * 0.3396667,
        size.height * 0.5180000,
        size.width * 0.3396667,
        size.height * 0.5361667);
    path_130.cubicTo(
        size.width * 0.3396667,
        size.height * 0.5530000,
        size.width * 0.3326667,
        size.height * 0.5683333,
        size.width * 0.3215000,
        size.height * 0.5793333);
    path_130.cubicTo(
        size.width * 0.3175000,
        size.height * 0.5833333,
        size.width * 0.3128333,
        size.height * 0.5866667,
        size.width * 0.3078333,
        size.height * 0.5893333);
    path_130.cubicTo(
        size.width * 0.2993333,
        size.height * 0.5940000,
        size.width * 0.2896667,
        size.height * 0.5965000,
        size.width * 0.2791667,
        size.height * 0.5965000);
    path_130.cubicTo(
        size.width * 0.2565000,
        size.height * 0.5965000,
        size.width * 0.2366667,
        size.height * 0.5840000,
        size.width * 0.2263333,
        size.height * 0.5653333);
    path_130.cubicTo(
        size.width * 0.2215000,
        size.height * 0.5566667,
        size.width * 0.2188333,
        size.height * 0.5466667,
        size.width * 0.2188333,
        size.height * 0.5361667);
    path_130.cubicTo(
        size.width * 0.2188333,
        size.height * 0.5113333,
        size.width * 0.2336667,
        size.height * 0.4901667,
        size.width * 0.2550000,
        size.height * 0.4808333);
    path_130.cubicTo(
        size.width * 0.2623333,
        size.height * 0.4775000,
        size.width * 0.2705000,
        size.height * 0.4758333,
        size.width * 0.2791667,
        size.height * 0.4758333);
    path_130.cubicTo(
        size.width * 0.2945000,
        size.height * 0.4758333,
        size.width * 0.3085000,
        size.height * 0.4813333,
        size.width * 0.3190000,
        size.height * 0.4906667);
    path_130.close();

    Paint paint_130_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_130_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_130_stroke.strokeCap = StrokeCap.round;
    paint_130_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_130, paint_130_stroke);

    Path path_131 = Path();
    path_131.moveTo(size.width * 0.4445000, size.height * 0.6220000);
    path_131.cubicTo(
        size.width * 0.4445000,
        size.height * 0.6291667,
        size.width * 0.4386667,
        size.height * 0.6350000,
        size.width * 0.4315000,
        size.height * 0.6350000);
    path_131.cubicTo(
        size.width * 0.4243333,
        size.height * 0.6350000,
        size.width * 0.4185000,
        size.height * 0.6291667,
        size.width * 0.4185000,
        size.height * 0.6220000);
    path_131.cubicTo(
        size.width * 0.4185000,
        size.height * 0.6148333,
        size.width * 0.4243333,
        size.height * 0.6090000,
        size.width * 0.4315000,
        size.height * 0.6090000);
    path_131.cubicTo(
        size.width * 0.4386667,
        size.height * 0.6091667,
        size.width * 0.4445000,
        size.height * 0.6148333,
        size.width * 0.4445000,
        size.height * 0.6220000);
    path_131.close();

    Paint paint_131_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001250000;
    paint_131_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_131_stroke.strokeCap = StrokeCap.round;
    paint_131_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_131, paint_131_stroke);

    Path path_132 = Path();
    path_132.moveTo(size.width * 0.5446667, size.height * 0.4128333);
    path_132.cubicTo(
        size.width * 0.5511667,
        size.height * 0.4141667,
        size.width * 0.5546667,
        size.height * 0.4156667,
        size.width * 0.5546667,
        size.height * 0.4171667);
    path_132.cubicTo(
        size.width * 0.5546667,
        size.height * 0.4188333,
        size.width * 0.5506667,
        size.height * 0.4203333,
        size.width * 0.5436667,
        size.height * 0.4216667);
    path_132.cubicTo(
        size.width * 0.5331667,
        size.height * 0.4236667,
        size.width * 0.5158333,
        size.height * 0.4253333,
        size.width * 0.4945000,
        size.height * 0.4265000);
    path_132.cubicTo(
        size.width * 0.4781667,
        size.height * 0.4273333,
        size.width * 0.4595000,
        size.height * 0.4278333,
        size.width * 0.4396667,
        size.height * 0.4278333);
    path_132.cubicTo(
        size.width * 0.3771667,
        size.height * 0.4278333,
        size.width * 0.3261667,
        size.height * 0.4233333,
        size.width * 0.3246667,
        size.height * 0.4175000);
    path_132.cubicTo(
        size.width * 0.3246667,
        size.height * 0.4173333,
        size.width * 0.3246667,
        size.height * 0.4173333,
        size.width * 0.3246667,
        size.height * 0.4171667);
    path_132.cubicTo(
        size.width * 0.3246667,
        size.height * 0.4113333,
        size.width * 0.3761667,
        size.height * 0.4066667,
        size.width * 0.4396667,
        size.height * 0.4066667);
    path_132.cubicTo(
        size.width * 0.4600000,
        size.height * 0.4066667,
        size.width * 0.4790000,
        size.height * 0.4071667,
        size.width * 0.4955000,
        size.height * 0.4080000);
    path_132.cubicTo(
        size.width * 0.5171667,
        size.height * 0.4090000,
        size.width * 0.5343333,
        size.height * 0.4108333,
        size.width * 0.5446667,
        size.height * 0.4128333);
    path_132.close();

    Paint paint_132_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_132_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_132_stroke.strokeCap = StrokeCap.round;
    paint_132_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_132, paint_132_stroke);

    Path path_133 = Path();
    path_133.moveTo(size.width * 0.4276667, size.height * 0.8365000);
    path_133.cubicTo(
        size.width * 0.4276667,
        size.height * 0.8365000,
        size.width * 0.4276667,
        size.height * 0.8365000,
        size.width * 0.4276667,
        size.height * 0.8365000);
    path_133.cubicTo(
        size.width * 0.3826667,
        size.height * 0.8353333,
        size.width * 0.3471667,
        size.height * 0.8320000,
        size.width * 0.3325000,
        size.height * 0.8270000);
    path_133.cubicTo(
        size.width * 0.3325000,
        size.height * 0.8270000,
        size.width * 0.3323333,
        size.height * 0.8270000,
        size.width * 0.3323333,
        size.height * 0.8270000);

    Paint paint_133_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_133_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_133_stroke.strokeCap = StrokeCap.round;
    paint_133_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_133, paint_133_stroke);

    Path path_134 = Path();
    path_134.moveTo(size.width * 0.5360000, size.height * 0.8336667);
    path_134.cubicTo(
        size.width * 0.5330000,
        size.height * 0.8340000,
        size.width * 0.5300000,
        size.height * 0.8341667,
        size.width * 0.5268333,
        size.height * 0.8345000);
    path_134.cubicTo(
        size.width * 0.5130000,
        size.height * 0.8355000,
        size.width * 0.4975000,
        size.height * 0.8363333,
        size.width * 0.4808333,
        size.height * 0.8366667);

    Paint paint_134_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_134_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_134_stroke.strokeCap = StrokeCap.round;
    paint_134_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_134, paint_134_stroke);

    Path path_135 = Path();
    path_135.moveTo(size.width * 0.5700000, size.height * 0.8135000);
    path_135.cubicTo(
        size.width * 0.5815000,
        size.height * 0.8158333,
        size.width * 0.5880000,
        size.height * 0.8185000,
        size.width * 0.5880000,
        size.height * 0.8213333);
    path_135.cubicTo(
        size.width * 0.5880000,
        size.height * 0.8240000,
        size.width * 0.5821667,
        size.height * 0.8265000,
        size.width * 0.5721667,
        size.height * 0.8286667);

    Paint paint_135_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_135_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_135_stroke.strokeCap = StrokeCap.round;
    paint_135_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_135, paint_135_stroke);

    Path path_136 = Path();
    path_136.moveTo(size.width * 0.4775000, size.height * 0.8060000);
    path_136.cubicTo(
        size.width * 0.4955000,
        size.height * 0.8063333,
        size.width * 0.5123333,
        size.height * 0.8071667,
        size.width * 0.5271667,
        size.height * 0.8081667);
    path_136.cubicTo(
        size.width * 0.5316667,
        size.height * 0.8085000,
        size.width * 0.5358333,
        size.height * 0.8088333,
        size.width * 0.5400000,
        size.height * 0.8093333);

    Paint paint_136_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_136_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_136_stroke.strokeCap = StrokeCap.round;
    paint_136_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_136, paint_136_stroke);

    Path path_137 = Path();
    path_137.moveTo(size.width * 0.4046667, size.height * 0.8070000);
    path_137.cubicTo(
        size.width * 0.4046667,
        size.height * 0.8070000,
        size.width * 0.4046667,
        size.height * 0.8070000,
        size.width * 0.4046667,
        size.height * 0.8070000);
    path_137.cubicTo(
        size.width * 0.4148333,
        size.height * 0.8065000,
        size.width * 0.4255000,
        size.height * 0.8061667,
        size.width * 0.4365000,
        size.height * 0.8060000);

    Paint paint_137_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_137_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_137_stroke.strokeCap = StrokeCap.round;
    paint_137_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_137, paint_137_stroke);

    Path path_138 = Path();
    path_138.moveTo(size.width * 0.3293333, size.height * 0.8171667);
    path_138.cubicTo(
        size.width * 0.3293333,
        size.height * 0.8171667,
        size.width * 0.3295000,
        size.height * 0.8171667,
        size.width * 0.3295000,
        size.height * 0.8171667);
    path_138.cubicTo(
        size.width * 0.3376667,
        size.height * 0.8136667,
        size.width * 0.3558333,
        size.height * 0.8106667,
        size.width * 0.3800000,
        size.height * 0.8086667);

    Paint paint_138_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_138_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_138_stroke.strokeCap = StrokeCap.round;
    paint_138_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_138, paint_138_stroke);

    Path path_139 = Path();
    path_139.moveTo(size.width * 0.5025000, size.height * 0.7341667);
    path_139.cubicTo(
        size.width * 0.5050000,
        size.height * 0.7378333,
        size.width * 0.5065000,
        size.height * 0.7421667,
        size.width * 0.5065000,
        size.height * 0.7468333);
    path_139.cubicTo(
        size.width * 0.5065000,
        size.height * 0.7593333,
        size.width * 0.4963333,
        size.height * 0.7693333,
        size.width * 0.4840000,
        size.height * 0.7693333);
    path_139.cubicTo(
        size.width * 0.4715000,
        size.height * 0.7693333,
        size.width * 0.4615000,
        size.height * 0.7591667,
        size.width * 0.4615000,
        size.height * 0.7468333);
    path_139.cubicTo(
        size.width * 0.4615000,
        size.height * 0.7416667,
        size.width * 0.4633333,
        size.height * 0.7368333,
        size.width * 0.4663333,
        size.height * 0.7330000);

    Paint paint_139_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001250000;
    paint_139_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_139_stroke.strokeCap = StrokeCap.round;
    paint_139_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_139, paint_139_stroke);

    Path path_140 = Path();
    path_140.moveTo(size.width * 0.2676667, size.height * 0.7361667);
    path_140.cubicTo(
        size.width * 0.2591667,
        size.height * 0.7333333,
        size.width * 0.2518333,
        size.height * 0.7280000,
        size.width * 0.2466667,
        size.height * 0.7211667);
    path_140.cubicTo(
        size.width * 0.2411667,
        size.height * 0.7138333,
        size.width * 0.2378333,
        size.height * 0.7048333,
        size.width * 0.2378333,
        size.height * 0.6950000);
    path_140.cubicTo(
        size.width * 0.2378333,
        size.height * 0.6805000,
        size.width * 0.2450000,
        size.height * 0.6676667,
        size.width * 0.2558333,
        size.height * 0.6598333);
    path_140.cubicTo(
        size.width * 0.2611667,
        size.height * 0.6560000,
        size.width * 0.2675000,
        size.height * 0.6533333,
        size.width * 0.2743333,
        size.height * 0.6521667);
    path_140.cubicTo(
        size.width * 0.2765000,
        size.height * 0.6518333,
        size.width * 0.2788333,
        size.height * 0.6516667,
        size.width * 0.2811667,
        size.height * 0.6516667);
    path_140.cubicTo(
        size.width * 0.2931667,
        size.height * 0.6516667,
        size.width * 0.3040000,
        size.height * 0.6565000,
        size.width * 0.3118333,
        size.height * 0.6643333);

    Paint paint_140_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_140_stroke.color = Color(0xff000000).withOpacity(1.0);
    paint_140_stroke.strokeCap = StrokeCap.round;
    paint_140_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_140, paint_140_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
