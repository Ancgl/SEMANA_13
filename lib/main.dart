 
 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PantallaFinanzas(),
    debugShowCheckedModeBanner: false,
  ));
}

class PantallaFinanzas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 162, 167),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Finanza personal", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            // Datos del usuario
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue[100],
                  child: Icon(Icons.person, size: 35, color: Colors.blue),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jhon Anco", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Jhon@gmail.com", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Saldo Actual",
                  style: TextStyle(fontSize: 18, 
                                  fontWeight: FontWeight.bold),
                ),
                Text(
                  "1000.00",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
           
            Text("Movimientos", style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 2, 2, 3), fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            movimiento("04/06/2025", "Ingreso por proyecto", "1,500.00", Colors.black),
            movimiento("05/06/2025", "Pago universidad", "800.00", Colors.red),
            movimiento("05/06/2025", "Pago de luz", "120.00", Colors.red),
          ],
        ),
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 51, 165, 231),
        child: Text("Nuevo", style: TextStyle(fontSize: 15)),
      ),
      
    );
  }

  Widget movimiento(String fecha, String detalle, String monto, Color colorMonto) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fecha, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(monto, style: TextStyle(color: colorMonto, fontWeight: FontWeight.bold)),
            ],
          ),
          Text(detalle),
        ],
      ),
    );
  }
}
