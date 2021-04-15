import 'package:ourESchool/UI/pages/Dashboard/CourseRegistration/CheckBoxModel.dart';
import 'package:ourESchool/UI/pages/Dashboard/CourseRegistration/ChipListChoice.dart';
import 'package:ourESchool/UI/Utility/Resources.dart';
import 'package:ourESchool/UI/Utility/constants.dart';
import 'package:ourESchool/UI/Widgets/TopBar.dart';
import 'package:flutter/material.dart';

class AdminCourseRegistration extends StatefulWidget {
  AdminCourseRegistration({Key key}) : super(key: key);

  _AdminCourseRegistration createState() => _AdminCourseRegistration();
}

List<User> users = [
  User(name: "DAA"),
  User(name: "DBMS"),
  User(name: "SE"),
  User(name: "CN"),
];

class User extends CheckBoxModel {
  final String name;
  User({this.name,}) : super(name);
}


class _AdminCourseRegistration extends State<AdminCourseRegistration>
    with SingleTickerProviderStateMixin {

  _finalListSelection(List<User> finalSelectionResult) {
    print(finalSelectionResult.length.toString());
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 4);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: TopBar(
        child: kBackBtn,
        onPressed: () {
          kbackBtn(context);
        },
        title: "Course Registration",
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
            Container(
              child:  SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ChipListChoice<User>(
                       title: "Btech IT",
                       usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                       ),
                    ChipListChoice<User>(
                        title: "Btech IT-BI",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Btech ECE",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech Robotics",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech Bioinformatics",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech CyberLaw ",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech SE",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech Intelligent Systems",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech Wireless ",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                    ChipListChoice<User>(
                        title: "Mtech Microelectronics",
                        usersDataSet: users.toSet(),
                        finalListResult: _finalListSelection,
                        color: Colors.cyan
                    ),
                  ],
                ),
              ),
            ),
          Container(
            child:  SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ChipListChoice<User>(
                      title: "Btech IT",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech IT-BI",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech ECE",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech Robotics",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech Bioinformatics",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech CyberLaw ",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech SE",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech Intelligent Systems",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech Wireless ",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Mtech Microelectronics",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                ],
              ),
            ),
          ),
          Container(
            child:  SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ChipListChoice<User>(
                      title: "Btech IT",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech IT-BI",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech ECE",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                ],
              ),
            ),
          ),
          Container(
            child:  SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ChipListChoice<User>(
                      title: "Btech IT",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech IT-BI",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                  ChipListChoice<User>(
                      title: "Btech ECE",
                      usersDataSet: users.toSet(),
                      finalListResult: _finalListSelection,
                      color: Colors.cyan
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Stack(
          children: <Widget>[
            Material(
              color: Colors.transparent,
              child: TabBar(
                indicatorWeight: 2,
                controller: _tabController,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                    'Batch 1',
                      style: ktitleStyle.copyWith(
                          color: Theme.of(context).textTheme.body1.color),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Batch 2',
                      style: ktitleStyle.copyWith(
                          color: Theme.of(context).textTheme.body1.color),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Batch 3',
                      style: ktitleStyle.copyWith(
                          color: Theme.of(context).textTheme.body1.color),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Batch 4',
                      style: ktitleStyle.copyWith(
                          color: Theme.of(context).textTheme.body1.color),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
