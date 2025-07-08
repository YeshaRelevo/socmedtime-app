import 'package:flutter/material.dart';


class Addsocial extends StatefulWidget {
  const Addsocial({super.key});

  @override
  State<Addsocial> createState() => _AddsocialState();
}

class _AddsocialState extends State<Addsocial> {

    final _formKey = GlobalKey<FormState>();
    String _name ='';
    String _description = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('Add Social App',
                  style: TextStyle(
                      fontSize:25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Social Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is Missing!';
                  }
                  return null;
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Input Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.deepPurple)
                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Missing description!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Is used',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.deepPurple)
                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Missing!';
                  }
                  return null;
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Is Day',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.deepPurple)
                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Missing!';
                  }
                  return null;
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FilledButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            print('The Form is Validated');
                          }
                        },
                        child: Text('ADD'),
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.deepPurple
                        ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

