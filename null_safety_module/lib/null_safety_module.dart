import 'package:flutter/material.dart';
import 'package:unsound_null_safety/main.dart';

class SomeDto {
  late final int id;
  final String title;
  final String? name;
  String? someData;

  SomeDto(this.title, {this.name, this.someData}) {
    id = 0;
  }
}

class SomeWidget extends StatelessWidget {
  final SomeDto someDto;

  const SomeWidget(this.someDto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            '${someDto.title} + ${someDto.id} 123',
          ),
        ),
        UnSoundWidget()
      ],
    );
  }
}
