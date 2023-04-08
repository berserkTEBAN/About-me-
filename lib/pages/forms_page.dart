import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:intl/intl.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  String _nombre = '';
  String _numero = '';
  String _email = '';
  String _fecha = '';
  String _apodo = '';

  List<String> _carreras = [
    'Desarrollo de Software',
    'Mecatronica',
    'Ingieneria civil',
    'Negocios',
    'Ingieneria Industrial',
    'Quimica Farmaceutica',
    'Energias Renovables'
  ];

  String _carrerasSeleccionado = '';

  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
        actions: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/luis.jpg"),
              radius: 25.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearDir(),
          Divider(),
          _crearNumero(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _mostrarInformacion(),
          Divider(),
          _mostrarInformacion2(),
          Divider(),
          _mostrarInformacion3(),
        ],
      ),
    );
  }

  // Método para crear un input básico
  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Nombre De La Persona',
        labelText: 'Nombre: ',
        helperText: 'Solo Debes Escribir Letras',
        counter: Text('Letras: ${_nombre.length}'),
        icon: Icon(Icons.accessibility), // Icono al principio
        suffixIcon: Icon(Icons.account_circle), // Icono al final
      ),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearNumero() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: '+(52)-427-123-456-78',
        labelText: 'Numero telefonico: ',
        helperText: 'Numero de tu contacto',
        icon: Icon(Icons.call), // Icono al principio
        suffixIcon: Icon(Icons.call_end), // Icono al final
      ),
      onChanged: (value) {
        setState(() {
          _numero = value;
        });
      },
    );
  }

  // Crear método para crear input de email
  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'correo@correo.com',
        labelText: 'Correo Electronico: ',
        helperText: 'Escribe el correo de tu contacto',
        icon: Icon(Icons.email), // Icono al principio
        suffixIcon: Icon(Icons.alternate_email), // Icono al final
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _crearDir() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'fulanito',
        labelText: 'Apodo: ',
        helperText: 'Escribele un apodo a tu contacto',
        icon: Icon(Icons.attribution), // Icono al principio
        suffixIcon: Icon(Icons.assignment_ind_rounded), // Icono al final
      ),
      onChanged: (value) {
        setState(() {
          _apodo = value;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: '25/01/2023',
        labelText: 'Fecha De Nacimiento: ',
        helperText: 'Dia de nacimiento de tu contacto',
        icon: Icon(Icons.calendar_today), // Icono al principio
        suffixIcon: Icon(Icons.cake), // Icono al final
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

// Método que muestra el DatePicker
  _selectDate(BuildContext context) async {
    DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(0),
        lastDate: new DateTime(3050),
        locale: Locale('es', 'ES'));
    if (fechaSeleccionada != null) {
      setState(() {
        // _fecha = fechaSeleccionada.toString();
        var formateador = new DateFormat('dd-MM-yyyy');
        _fecha = formateador.format(fechaSeleccionada);
        _controller.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getMunicipios() {
    // Variable de retorno
    List<DropdownMenuItem<String>> listaCarreras = [];

    _carreras.forEach((carreras) {
      listaCarreras
          .add(DropdownMenuItem(child: Text(carreras), value: carreras));
    });
    return listaCarreras;
  }

// Método para crear el DropDawn
  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.calculate),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
            // value: _municipioSeleccionado,
            items: getMunicipios(),
            onChanged: (value) {
              setState(() {
                _carrerasSeleccionado = value!;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _mostrarInformacion() {
    return ListTile(
      title: Text('\nAmigo: $_nombre\n'),
      subtitle: Text('\nApodo: $_apodo\n'),
    );
  }

  Widget _mostrarInformacion2() {
    return ListTile(
      title: Text('Correo: $_email'),
      subtitle: Text('Numero: $_numero'),
    );
  }

  Widget _mostrarInformacion3() {
    return ListTile(
      title: Text('Carrera: $_carrerasSeleccionado\n'),
      subtitle: Text('Cumpleaños: $_fecha\n'),
    );
  }
}
