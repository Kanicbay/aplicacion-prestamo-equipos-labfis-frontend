import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  static const routeName = '/notifications';
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: const Text('Actividad',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        backgroundColor: Color.fromARGB(255, 37, 149, 190),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Row(children: [
            Expanded(
              child: Container(
                color: Color.fromARGB(108, 37, 149, 190),
                padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sin leer (0)',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Marcar todo como leído',
                          style: TextStyle(
                              color: Color.fromARGB(255, 37, 149, 190),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ]),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        'assets/labfis_logo_notification.png',
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nueva solicitud de equipo creada.',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Atenderemos tu solicitud lo antes posible.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        'assets/labfis_logo_notification.png',
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nueva solicitud de equipo creada.',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Atenderemos tu solicitud lo antes posible.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        'assets/labfis_logo_notification.png',
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nueva solicitud de equipo creada.',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Atenderemos tu solicitud lo antes posible.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
