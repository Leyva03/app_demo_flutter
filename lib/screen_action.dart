import 'package:flutter/material.dart';

class ScreenAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actions'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                CheckboxListTile(
                  title: Text('Open'),
                  subtitle: Text('opens an unlocked door'),
                  value: false,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                  },
                ),
                Divider(),
                CheckboxListTile(
                  title: Text('Close'),
                  subtitle: Text('closes an open door'),
                  value: false,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                  },
                ),
                Divider(),
                CheckboxListTile(
                  title: Text('Lock'),
                  subtitle: Text('Locks a door or all the doors in a room or group of rooms, if closed'),
                  value: false,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                  },
                ),
                Divider(),
                CheckboxListTile(
                  title: Text('Unlock'),
                  subtitle: Text('Unlocks a locked door or all the locked doors in an room'),
                  value: false,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                  },
                ),
                Divider(),
                CheckboxListTile(
                  title: Text('Unlock Shortly'),
                  subtitle: Text('Unlocks a door during 10 seconds and the locks it if its closed'),
                  value: false,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                  },
                ),
                Divider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle the submit button action here
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
