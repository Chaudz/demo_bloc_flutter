import 'package:bloc_demo/rotate_bloc/rotate_bloc.dart';
import 'package:bloc_demo/rotate_bloc/rotate_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../rotate_bloc/rotate_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Center(
             child: BlocBuilder<RotateBloc,RotateState>(builder: (context,state){
               return  Transform.rotate(
                 angle: state.angle,
                 child: Container(
                   width: 100,
                   height: 100,
                   decoration: BoxDecoration(
                     color: Colors.red
                   ),
                 )
               );
             }),
           ),
            SizedBox(height: 30),
            FloatingActionButton(onPressed: (){
              context.read<RotateBloc>().add(RotateEvent(20));
            }, child: Icon(Icons.rotate_90_degrees_cw),)
            // FloatingActionButton(onPressed: onPressed)
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
