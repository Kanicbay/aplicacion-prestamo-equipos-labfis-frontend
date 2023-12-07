import 'package:flutter/material.dart';

class DeviceLoanInformationScreen extends StatefulWidget {
  static const routeName = '/informationDevice';
  const DeviceLoanInformationScreen({super.key});

  @override
  State<DeviceLoanInformationScreen> createState() =>
      _DeviceLoanInformationScreenState();
}

class _DeviceLoanInformationScreenState
    extends State<DeviceLoanInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: const Text('Equipos y Accesorios',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        backgroundColor: Color.fromARGB(255, 37, 149, 190),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner, color: Colors.black),
          )
        ],
      ),
      body: Center(
        child: Text('No hay solicitudes por aquí'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 37, 149, 190),
      ),
    );
  }
}
