import 'package:app_prestamo_equipos/providers/information_device.dart';
import 'package:app_prestamo_equipos/screens/loan_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoanDeviceInformation()),
      ],
      child: MaterialApp(
        title: 'App LabFis',
        initialRoute: MainWidget.routeName,
        routes: {
          MainWidget.routeName: (context) => const MainWidget(),
          DeviceLoanInformationScreen.routeName: (context) =>
              const DeviceLoanInformationScreen(),
        },
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  static const routeName = '/';

  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectIndex = 0; //Botton Menu index

  final List<Widget> _mainWidgets = const [
    DeviceLoanInformationScreen(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainWidgets[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 37, 149, 190),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Equipos prestados',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Actividad'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        currentIndex: _selectIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
