import 'package:flutter/material.dart';
import 'package:form_generator/Widgets/card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos Arbolar'),
        centerTitle: true,
        elevation: 3,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 4,
        children: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Clown',
                date: '20/03/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '50',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Bioconstrucción',
                date: '18/04/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '105',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Clown',
                date: '20/03/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '50',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Bioconstrucción',
                date: '18/04/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '105',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Clown',
                date: '20/03/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '50',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/form'),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const FormCard(
                name: 'Bioconstrucción',
                date: '18/04/22',
              ),
              Container(
                child: const Center(
                    child: Text(
                  '105',
                  style: TextStyle(color: Colors.white),
                )),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Agregar Evento',
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () => Navigator.pushNamed(context, '/form_generator'),
      ),
    );
  }
}
