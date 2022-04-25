import 'package:flutter/material.dart';

bool chkIndonesia = false;
bool chkInggris = false;
bool chkArab = false;
bool chkSunda = false;
bool chkJawa = false;
bool chkMadura = false;
bool chkMandarin = false;
bool chkJepang = false;
bool chkKorea = false;

class Bahasa extends StatefulWidget {
  const Bahasa({Key? key}) : super(key: key);

  @override
  State<Bahasa> createState() => _BahasaState();
}

class _BahasaState extends State<Bahasa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Kemampuan Berbahasa"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkIndonesia,
                      onChanged: (bool? value) {
                        setState(() {
                          chkIndonesia = value!;
                        });
                      }),
                  const Text("Indonesia")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkInggris,
                      onChanged: (bool? value) {
                        setState(() {
                          chkInggris = value!;
                        });
                      }),
                  const Text("Inggris")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkArab,
                      onChanged: (bool? value) {
                        setState(() {
                          chkArab = value!;
                        });
                      }),
                  const Text("Arab")
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkSunda,
                      onChanged: (bool? value) {
                        setState(() {
                          chkSunda = value!;
                        });
                      }),
                  const Text("Sunda")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkJawa,
                      onChanged: (bool? value) {
                        setState(() {
                          chkJawa = value!;
                        });
                      }),
                  const Text("Jawa")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkMadura,
                      onChanged: (bool? value) {
                        setState(() {
                          chkMadura = value!;
                        });
                      }),
                  const Text("Madura")
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkMandarin,
                      onChanged: (bool? value) {
                        setState(() {
                          chkMandarin = value!;
                        });
                      }),
                  const Text("Mandarin")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkJepang,
                      onChanged: (bool? value) {
                        setState(() {
                          chkJepang = value!;
                        });
                      }),
                  const Text("Jepang")
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value: chkKorea,
                      onChanged: (bool? value) {
                        setState(() {
                          chkKorea = value!;
                        });
                      }),
                  const Text("Korea")
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

String cariBahasa() {
  String _bahasa = "";

  if (chkIndonesia) {
    _bahasa += "Indonesia ";
  }
  if (chkInggris) {
    _bahasa += "Inggris ";
  }
  if (chkArab) {
    _bahasa += "Arab ";
  }
  if (chkSunda) {
    _bahasa += "Sunda ";
  }
  if (chkJawa) {
    _bahasa += "Jawa ";
  }
  if (chkMadura) {
    _bahasa += "Madura ";
  }
  if (chkMandarin) {
    _bahasa += "Mandarin ";
  }
  if (chkJepang) {
    _bahasa += "Jepang ";
  }
  if (chkKorea) {
    _bahasa += "Korea ";
  }

  if (_bahasa.length > 0) {
    _bahasa = _bahasa.substring(0, _bahasa.length - 1);
  }

  return _bahasa;
}
