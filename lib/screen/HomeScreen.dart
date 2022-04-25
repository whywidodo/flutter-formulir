// RESPONSI
// 20SA1004
// Wahyu Widodo
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:praktikum5/widgets/Pendidikan.dart';

import '../widgets/Agama.dart';
import '../widgets/Bahasa.dart';
import '../widgets/JenisKelamin.dart';
import '../widgets/Pendidikan.dart';
import '../widgets/StatusPernikahan.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController ctrlNama = TextEditingController();
  TextEditingController ctrlAlamat = TextEditingController();
  TextEditingController ctrlTL = TextEditingController();
  TextEditingController ctrlTGL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera),
        title: const Text("Latihan Flutter"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                _pencarian();
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.list),
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                    ),
                    controller: ctrlNama),
                TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      hintText: "Alamat Lengkap",
                      labelText: "Alamat Lengkap",
                    ),
                    controller: ctrlAlamat),
                TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on),
                      hintText: "Tempat Lahir",
                      labelText: "Tempat Lahir",
                    ),
                    controller: ctrlTL),
                TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      hintText: "Tanggal Lahir",
                      labelText: "Tanggal Lahir",
                    ),
                    controller: ctrlTGL),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                JenisKelamin(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                StatusPernikahan(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Bahasa(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                Agama(),
                const Divider(
                height: 0,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.black12,
                ),
                Pendidikan(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _kirimData();
                        },
                        child: const Text("Proses")
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    ElevatedButton(
                        onPressed: () {
                          _kosongkan();
                        },
                        child: const Text("Kosongkan")
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: "Favourite"),
      //     BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
      //     BottomNavigationBarItem(icon: Icon(Icons.check), label: "Proses"),
      //     BottomNavigationBarItem(icon: Icon(Icons.clear), label: "Kosongkan"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.exit_to_app), label: "Keluar"),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        _kirimData();
      } else if (index == 3) {
        _kosongkan();
      } else if (index == 4) {
        exit(0);
      }
    });
  }

  void _kosongkan() {
    setState(() {
      ctrlNama.text = "";
      ctrlAlamat.text = "";
      ctrlTL.text = "";
      ctrlTGL.text = "";
      jenisKelaminDipilih = "";
      statusPernikahanDipilih = "";
      chkIndonesia = false;
      chkInggris = false;
      chkArab = false;
      chkSunda = false;
      chkJawa = false;
      chkMadura = false;
      chkMandarin = false;
      chkJepang = false;
      chkKorea = false;
      agamaDipilih = "Silahkan pilih agama Anda";
      pendidikanDipilih = "Pendidikan terakhir";
    });
  }

  void _kirimData() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        width: 250.0,
        height: 230.0,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"),
                  ),
                ),
                Text("Nama Lengkap : " + ctrlNama.text),
                Text("Alamat : " + ctrlAlamat.text),
                Text("Tempat Lahir : " + ctrlTL.text),
                Text("Tanggal Lahir : " + ctrlTGL.text),
                Text("Jenis Kelamin : " + jenisKelaminDipilih),
                Text("Status : " + statusPernikahanDipilih),
                Text("Agama : " + agamaDipilih),
                Text("Pendidikan : " + pendidikanDipilih),
                Text("Kemampuan Bahasa : " + cariBahasa())
              ],
            )
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  void _pencarian() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 150.0,
        width: 200.0,
        child: Column(
          children: [
            Text("Proses Pencarian"),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
