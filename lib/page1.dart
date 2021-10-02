import 'package:flutter/material.dart';
import 'dart:math';

class Kalkulator extends StatefulWidget {
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  //persegi
  double fieldpanjangpersegi, fieldlebarpersegi;
  String luaspersegi = "KOSONG", kelilingpersegi = "KOSONG";
  // lingkaran
  double diameter;
  String luaslingkaran = "KOSONG", kelilinglingkaran = "KOSONG";
  //segitiga
  double alassegitiga, tinggisegitiga, hitungkeliling;
  String luassegitiga = "KOSONG", kelilingsegitiga = "KOSONG";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("PERHITUNGAN BIDANG DATAR"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "PERSEGI",
              ),
              Tab(
                text: "LINGKARAN",
              ),
              Tab(
                text: "SEGITIGA",
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView(
            //tab1
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                child: TextField(
                  onSubmitted: (value) {
                    try {
                      fieldpanjangpersegi = double.parse(value);
                    } catch (exception) {
                      fieldpanjangpersegi = null;
                    }
                  },
                  onChanged: (value) {
                    try {
                      fieldpanjangpersegi = double.parse(value);
                    } catch (exception) {
                      fieldpanjangpersegi = null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "MASUKAN PANJANG PERSEGI...",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: TextField(
                  onSubmitted: (value) {
                    try {
                      fieldlebarpersegi = double.parse(value);
                    } catch (exception) {
                      fieldlebarpersegi = null;
                    }
                  },
                  onChanged: (value) {
                    try {
                      fieldlebarpersegi = double.parse(value);
                    } catch (exception) {
                      fieldlebarpersegi = null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "MASUKAN LEBAR PERSEGI...",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  child: ElevatedButton(
                      onPressed: () {
                        if (fieldpanjangpersegi == null) {
                          luaspersegi = "ISI DENGAN BENAR";
                          kelilingpersegi = "ISI DENGAN BENAR";
                        } else if (fieldlebarpersegi == null) {
                          luaspersegi = "ISI DENGAN BENAR";
                          kelilingpersegi = "ISI DENGAN BENAR";
                        } else if (fieldpanjangpersegi == null &&
                            fieldlebarpersegi == null) {
                          luaspersegi = "ISI DENGAN BENAR";
                          kelilingpersegi = "ISI DENGAN BENAR";
                        } else {
                          luaspersegi =
                              (fieldlebarpersegi * fieldpanjangpersegi)
                                  .toString();
                          kelilingpersegi = (fieldlebarpersegi +
                                  fieldlebarpersegi +
                                  fieldpanjangpersegi +
                                  fieldpanjangpersegi)
                              .toString();
                        }
                        setState(() {});
                      },
                      child: Text("HASIL"))),
              Text(
                "LUAS PERSEGI : " + luaspersegi,
                style: TextStyle(fontSize: 20),
              ),
              Text("KELILING PERSEGI : " + kelilingpersegi,
                  style: TextStyle(fontSize: 20))
            ],
          ),
          ListView(
            //tab2
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: TextField(
                  onSubmitted: (value) {
                    try {
                      diameter = double.parse(value);
                    } catch (exception) {
                      diameter = null;
                    }
                  },
                  onChanged: (value) {
                    try {
                      diameter = double.parse(value);
                    } catch (exception) {
                      diameter = null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "MASUKAN DIAMETER LINGKARAN...",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  child: ElevatedButton(
                      onPressed: () {
                        if (diameter == null) {
                          luaslingkaran = "ISI DENGAN BENAR";
                          kelilinglingkaran = "ISI DENGAN BENAR";
                        } else {
                          luaslingkaran =
                              (((diameter * 1 / 2) * (diameter * 1 / 2)) * 3.14)
                                  .toString();
                          kelilinglingkaran =
                              (((diameter * 1 / 2) * 2) * 3.14).toString();
                        }
                        setState(() {});
                      },
                      child: Text("HASIL"))),
              Text(
                "LUAS LINGKARAN : " + luaslingkaran,
                style: TextStyle(fontSize: 20),
              ),
              Text("KELILING LINGKARAN : " + kelilinglingkaran,
                  style: TextStyle(fontSize: 20))
            ],
          ),
          ListView(
            //tab3
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                child: TextField(
                  onSubmitted: (value) {
                    try {
                      alassegitiga = double.parse(value);
                    } catch (exception) {
                      alassegitiga = null;
                    }
                  },
                  onChanged: (value) {
                    try {
                      alassegitiga = double.parse(value);
                    } catch (exception) {
                      alassegitiga = null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "MASUKAN LEBAR SEGITIGA...",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: TextField(
                  onSubmitted: (value) {
                    try {
                      tinggisegitiga = double.parse(value);
                    } catch (exception) {
                      tinggisegitiga = null;
                    }
                  },
                  onChanged: (value) {
                    try {
                      tinggisegitiga = double.parse(value);
                    } catch (exception) {
                      tinggisegitiga = null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "MASUKAN TINGGI SEGITIGA...",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (alassegitiga == null) {
                            luassegitiga = "ISI DENGAN BENAR";
                            kelilingsegitiga = "ISI DENGAN BENAR";
                          } else if (tinggisegitiga == null) {
                            luassegitiga = "ISI DENGAN BENAR";
                            kelilingsegitiga = "ISI DENGAN BENAR";
                          } else if (alassegitiga == null &&
                              tinggisegitiga == null) {
                            luassegitiga = "ISI DENGAN BENAR";
                            kelilingsegitiga = "ISI DENGAN BENAR";
                          } else {
                            luassegitiga = (alassegitiga * tinggisegitiga * 0.5)
                                .toString();
                            hitungkeliling = alassegitiga +
                                tinggisegitiga +
                                sqrt(alassegitiga * alassegitiga +
                                    (tinggisegitiga * tinggisegitiga));
                            kelilingsegitiga = hitungkeliling.toString();
                          }
                        });
                      },
                      child: Text("HASIL"))),
              Text(
                "LUAS SEGITIGA : " + luassegitiga,
                style: TextStyle(fontSize: 20),
              ),
              Text("KELILING SEGITIGA : " + kelilingsegitiga,
                  style: TextStyle(fontSize: 20))
            ],
          )
        ]),
      ),
    );
  }
}
