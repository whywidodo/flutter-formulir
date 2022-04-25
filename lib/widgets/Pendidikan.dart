import 'package:flutter/material.dart';

List<String> pendidikan = ["Pendidikan terakhir", "SLTA Sederajat", "Diploma", "S1", "S2"];
String pendidikanDipilih = "Pendidikan terakhir";

class Pendidikan extends StatefulWidget {
  const Pendidikan({Key? key}) : super(key: key);

  @override
  State<Pendidikan> createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Pendidikan"),
        Padding(padding: EdgeInsets.only(right: 20.0)),
        DropdownButton(
          hint: const Text("Pendidikan terakhir"),
          icon: Icon(Icons.arrow_drop_down),
          value: pendidikanDipilih,
          items: pendidikan.map((String value) {
            return DropdownMenuItem(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              pendidikanDipilih = value!;
            });
          },
        )
      ],
    );
  }
}
