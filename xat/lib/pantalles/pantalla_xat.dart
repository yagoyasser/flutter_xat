import 'package:flutter/material.dart';

class PantallaXat extends StatelessWidget {
  const PantallaXat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/gensin-impact/images/5/51/Kamisato_Ayaka_Icon.png/revision/latest/scale-to-width-down/250?cb=20211221231648'),
          )),
        title: Text('Nom Contacte'),
        centerTitle: true,
      ),
      body: _CosPantallaXat()
    );
  }
}

class _CosPantallaXat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Text('Índex: $index');
                },
              ),
            ),
            Text('Món')
          ],
        ),
      ),
    );
  }
}