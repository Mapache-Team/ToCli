import 'package:flutter/material.dart';
import 'package:tocli/pages/pagina_home.dart';
import 'package:tocli/pages/pagina_crear.dart';
import 'package:tocli/pages/pagina_perfil.dart';

class BNavigator extends StatefulWidget {
  const BNavigator({super.key});

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int paginaActual = 0;
  List<Widget> paginas = [PaginaHome(), PaginaCrear(), PaginaPerfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: paginas[paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: paginaActual,
            onTap: (int index) => setState(() {
                  paginaActual = index;
                }),
            backgroundColor: Color(0xFFEBD4CB),
            selectedItemColor: Color(0xFF4A2E2A),
            unselectedItemColor: Color(0xFF9C8C84),
            iconSize: 25.0,
            selectedFontSize: 14.0,
            unselectedFontSize: 12.0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add), label: 'Crear'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
            ]));
  }
}
