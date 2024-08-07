import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScaffoldWidget(
      title: "Sobre",
      goBackButton: false,
      child: Column(
        children: [
          ExpansionTile(
            title: Text("Ajuda e Feedback"),
            children: <Widget>[
              ExpansionTile(
                title: Text("Níveis de Severidade"),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Severidade baixa: A água está formando pequenas poças na rua. Há água o suficiente para molhar os pés.',
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Severidade média: A água está mais profunda e cobre parcialmente a rua, dificultando a passagem de veículos e pedestres, caso um adulto se arriscasse a atravessar, a água chegaria à altura da canela.',
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Severidade alta: A água está alta, cobrindo totalmente a rua, caso um adulto se arriscasse a atravessar, a água chegaria à altura do joelho.',
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Informações"),
            children: <Widget>[
              ListTile(title: Text('Flood Watch')),
              ListTile(title: Text('Versão 1.0.0')),
              ListTile(
                title: Text(
                  'Desenvolvido por: Antônio Vinícius Gomes Vieira e João Carlos Gobatto da Cunha',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Fale Conosco"),
            children: <Widget>[
              ListTile(
                title: Text('Informações de Contato:'),
              ),
              ListTile(
                title: Text('E-mail: nossocontato@floodwatch.com'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}