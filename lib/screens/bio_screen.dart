 import 'dart:ui';

import 'package:bio1_app/widgets/bio_card.dart';
import 'package:flutter/material.dart';



class BioScreen extends StatelessWidget {
   const BioScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       //extendBodyBehindAppBar: true,
       appBar: AppBar(
         backgroundColor: Colors.orange.shade300,
         title: Text('Bio',
         ),
         elevation: 0,
         
       ),
       body: Stack(
         children: [
           
               Image.network('https://images.unsplash.com/photo-1619840191346-4300cc617f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
                   height: double.infinity ,fit:BoxFit.cover),
           Column(

             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisSize: MainAxisSize.max,
             children:  [
               const CircleAvatar(
                 radius: 60,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1604782206219-3b9576575203?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3097&q=80'),
               ),
               const SizedBox(height: 20),

               const Text('Raghda Jouda' ,
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   letterSpacing: 2,
                   fontSize:18,


               ),
               ),
               const SizedBox(height: 10),
               const Text('Computer Engineering _Level5' ,
                style: TextStyle(
                fontWeight: FontWeight.w400,
                  color: Colors.white,
                letterSpacing: 2,
                fontSize:18,
              )
              ),
               const Divider(
                 thickness: 2,
                 color:Colors.white24,
                 height: 40,
                 indent: 40,
                 endIndent: 40,
               ),
               BioCard(),
               BioCard(),
               BioCard(),
     ],
           )
           // ,Positioned(bottom: 10,left: 20,right: 20,child:Center(child: Text( 'avatar')))
         ],

       ),
     );
   }
 }


