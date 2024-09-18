import 'package:flutter/material.dart';

class ScreenInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.primary,
        //foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Group Information'),
      ),
      body: InfoEmployees(),
    );
  }
}

class InfoEmployees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.primary,
        //foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Info Employees'),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                // First TextFormField
                decoration: InputDecoration(
                  labelText: 'Name Group',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                // Second TextFormField
                minLines: 3,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saved')),
                    );
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
