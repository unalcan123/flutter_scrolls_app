import 'package:flutter/material.dart';

class CardveListTile extends StatelessWidget {
  const CardveListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve Listtile Kullanimi'),
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            children: [
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
              buildColumnTekEleman(),
            ],
          ),
          Text('Selam')
        ],
      )),
    );
  }

  SingleChildScrollView buildSingleChildScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
          buildColumnTekEleman(),
        ],
      ),
    );
  }

  Column buildColumnTekEleman() {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.red.shade400,
          elevation: 12,
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('baslik'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.https),
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
