import 'package:flutter/material.dart';

List<String> agama = ["Silahkan pilih agama Anda", "Islam", "Katolik", "Protestan", "Hindu", "Budha"];
String agamaDipilih = "Silahkan pilih agama Anda";

class Agama extends StatefulWidget {
  const Agama({Key? key}) : super(key: key);

  @override
  State<Agama> createState() => _AgamaState();
}

class _AgamaState extends State<Agama> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Agama"),
        Padding(padding: EdgeInsets.only(right: 20.0)),
        DropdownButton(
          hint: const Text("Silahkan pilih agama Anda"),
          icon: Icon(Icons.arrow_drop_down),
          value: agamaDipilih,
          items: agama.map((String value){
            return DropdownMenuItem(value: value,child: Text(value));
          }).toList(),
          onChanged: (String? value){
            setState(() {
              agamaDipilih = value!;
            });
          },
        )
      ],
    );
  }
}
