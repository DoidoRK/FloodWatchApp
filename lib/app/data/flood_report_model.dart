import 'dart:io';
import 'package:flood_watch_app/app/data/comment_model.dart';
import 'package:flood_watch_app/app/data/gps_location_model.dart';
import 'package:flood_watch_app/app/data/user_model.dart';


class RelatoAlagamento {
  Usuario autor;
  int severidade;
  List<File> fotos;
  File video;
  String descricao;
  List<Comentario> comentarios;
  DateTime horaDeCriacao;
  LocalizacaoGPS local;

  RelatoAlagamento({
    required this.autor,
    required this.severidade,
    required this.fotos,
    required this.video,
    required this.descricao,
    required this.comentarios,
    required this.horaDeCriacao,
    required this.local,
  });

  factory RelatoAlagamento.fromMap(Map<String, dynamic> map) {
    return RelatoAlagamento(
      autor: Usuario.fromMap(map['autor']),
      severidade: map['severidade'],
      fotos: List<File>.from(map['fotos'].map((path) => File(path))),
      video: File(map['video']),
      descricao: map['descricao'],
      comentarios: List<Comentario>.from(
        map['comentarios']?.map((x) => Comentario.fromMap(x))),
      horaDeCriacao: DateTime.parse(map['horaDeCriacao']),
      local: LocalizacaoGPS.fromMap(map['local']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'autor': autor.toMap(),
      'severidade': severidade,
      'fotos': fotos.map((file) => file.path).toList(),
      'video': video.path,
      'descricao': descricao,
      'comentarios': comentarios.map((x) => x.toMap()).toList(),
      'horaDeCriacao': horaDeCriacao.toIso8601String(),
      'local': local.toMap(),
    };
  }
}