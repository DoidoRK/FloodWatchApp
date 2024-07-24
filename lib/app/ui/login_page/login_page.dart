//import 'package:flood_watch_app/app/controllers/loading_controller.dart';
import 'package:flood_watch_app/app/controllers/login_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Container Azul no fundo
          Positioned.fill(
            child: Container(
              color: Colors.blue,
              child: Stack(
                children: [
                  // Adiciona o botão de voltar dentro do Container azul
                  Positioned(
                    top:
                        40, // Ajuste conforme necessário para a posição do botão
                    left:
                        20, // Ajuste conforme necessário para a posição do botão
                    child: IconButton(
                      icon: Icon(Icons.chevron_left, color: Colors.white),
                      iconSize: 60, // Tamanho do ícone desejado
                      onPressed: () {
                        // Ação do botão de voltar
                      },
                    ),
                  ),
                  // Texto "FloodWatch" dentro do Container azul
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Text(
                        'FloodWatch',
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container Branco sobreposto
          Positioned(
            top: 250, // Ajustar conforme necessário
            left: 0,
            right: 0,
            bottom: 0, // Para garantir que ocupe o restante da tela
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // O botão de voltar foi movido para o Container azul
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      labelStyle: TextStyle(
                          color: appThemeData
                              .primaryColor), // Cor do texto do rótulo
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda padrão
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda quando em foco
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda quando habilitado
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: appThemeData.primaryColor),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda padrão
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda quando em foco
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: appThemeData.primaryColor,
                            width: 2), // Cor da borda quando habilitado
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appThemeData.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ainda não tem cadastro?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastrar-se',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
