import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      20,
      (index) =>
          Ogrenci(index + 1, 'isim ${index + 1}', 'soyIsim ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci Listesi'),
      ),
      body: ListView.builder(
          itemCount: tumOgrenciler.length,
          itemBuilder: (BuildContext context, int index) {
            var e = tumOgrenciler[index];
            return ListTile(
              leading: CircleAvatar(child: Text(e.id.toString())),
              title: Text(e.isim),
              subtitle: Text(e.soyIsim),
            );
          }),
    );
  }

  ListView buildListViewklasik() {
    return ListView(
      children: tumOgrenciler
          .map((e) => ListTile(
                leading: CircleAvatar(child: Text(e.id.toString())),
                title: Text(e.isim),
                subtitle: Text(e.soyIsim),
              ))
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyIsim;

  Ogrenci(this.id, this.isim, this.soyIsim);
}
