import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DeteksiKotak(),
    );
  }
}

class DeteksiKotak extends StatefulWidget {
  const DeteksiKotak({super.key});

  @override
  _DeteksiKotakState createState() => _DeteksiKotakState();
}

class _DeteksiKotakState extends State<DeteksiKotak> {
  // var awal di ontap nanti
  int jumlahTaps = 0;
  int jumlahDobelTap = 0;
  int tapLong = 0;

  // menentukan posisi
  final double ukuranBox = 150.0;
  double posX = 0.0;
  double posY = 0.0;

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendeteksi Gestur'),
      ),
      // pakai widget Stack biar bisa pakai children
      body: Stack(
        children: [
          // untuk bisa gerakin posisi kotak nya
          Positioned(
            top: posY,
            left: posX,

            // fungsi buat menghitung jumlah tap yang terjadi
            child: GestureDetector(
              onTap: () {
                setState(() {
                  jumlahTaps++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  jumlahDobelTap++;
                });
              },
              onLongPress: () {
                setState(() {
                  tapLong++;
                });
              },
              // pakai onPanUpdate biar lancar ketika digerakan vertikal/horizontal
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  double deltaX = details.delta.dx;
                  double deltaY = details.delta.dy;
                  posX += deltaX;
                  posY += deltaY;
                });
              },
              child: Container(
                width: ukuranBox,
                height: ukuranBox,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Taps: $jumlahTaps - Double Taps: $jumlahDobelTap - Long Press: $tapLong',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }

  // fungsi buat ke tengah
  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - ukuranBox / 2;
    posY = (MediaQuery.of(context).size.height / 2) - ukuranBox / 2 - 30;

    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
