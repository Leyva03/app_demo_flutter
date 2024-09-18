import 'package:flutter_application_1/screen_info.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'screen_action.dart';

class ScreenGroup extends StatelessWidget {
  final UserGroup userGroup;

  const ScreenGroup({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Options'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            buildOption(context, 'Info', Icons.description, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenInfo(),
                ),
              );
            }),
            buildOption(context, 'Schedule', Icons.calendar_month, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupSchedule(userGroup: userGroup),
                ),
              );
            }),
            buildOption(context, 'Actions', Icons.room_preferences, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenAction(),
                ),
              );
            }),
            buildOption(context, 'Places', Icons.holiday_village, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupPlaces(userGroup: userGroup),
                ),
              );
            }),
            buildOption(context, 'Users', Icons.manage_accounts, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupUsers(userGroup: userGroup),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget buildOption(BuildContext context, String title, IconData icon, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        //height: 100, // Altura del contenedor
        //width: 100, // Anchura del contenedor
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48, //Tamaño icono
                color: Colors.white, //Color icono
              ),
              SizedBox(height: 8),
              Text(title,
              style: TextStyle(
                color: Colors.white,
              )),
            ],
          ),
        ),
      ),
    );
  }
}


class GroupSchedule extends StatelessWidget {
  final UserGroup userGroup;

  const GroupSchedule({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Group Schedule'),
      ),
      body: Center(
        child: Text('Schedule for ${userGroup.name}'),
      ),
    );
  }
}

class EmployeeSchedule extends StatelessWidget {
  final UserGroup userGroup;

  const EmployeeSchedule({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Employee Schedule'),
      ),
      body: Center(
        child: Text('Schedule for ${userGroup.name}'),
      ),
    );
  }
}

class GroupActions extends StatelessWidget {
  final UserGroup userGroup;

  const GroupActions({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Group Actions'),
      ),
      body: Center(
        child: Text('Actions for ${userGroup.name}'),
      ),
    );
  }
}

class GroupPlaces extends StatelessWidget {
  final UserGroup userGroup;

  const GroupPlaces({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Group Places'),
      ),
      body: Center(
        child: Text('Places for ${userGroup.name}'),
      ),
    );
  }
}

class GroupUsers extends StatelessWidget {
  final UserGroup userGroup;

  const GroupUsers({Key? key, required this.userGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text('Group Users'),
      ),
      body: Center(
        child: Text('Users in ${userGroup.name}'),
      ),
    );
  }
}
