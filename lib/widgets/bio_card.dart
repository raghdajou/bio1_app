import 'package:flutter/material.dart';
class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.symmetric(horizontal: 20),
      child:ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)
          ),
          leading: const Icon(Icons.email),
          title: const Text('Email' ,
            style:TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          subtitle: const Text('raghdajouda22@gmail.com'),
          trailing: IconButton(onPressed: (){}, icon: Icon (Icons.send))

      ),
    );
  }
}