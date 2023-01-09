import 'package:flutter/material.dart';
import '../../infrastructure/controllers/conexion.dart';

class frmManTipoUsuario extends StatefulWidget {
  State<frmManTipoUsuario> createState() => _frmManTipoUsuario();
}

final txtNomTU = TextEditingController();

class _frmManTipoUsuario extends State<frmManTipoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantto. Tipo Ususario'),
      ),
      body: Column(
        children: [
          TextField(
            controller: txtNomTU,
          ),
          ElevatedButton(
            onPressed: () async {
              await addDato(txtNomTU.text);
            },
            child: Text("Guardar"),
          ),
        ],
      ),
    );
  }
}
