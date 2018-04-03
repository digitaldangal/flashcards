import 'package:flashcards_flutter/src/firebase_flutter_api.dart';
import 'package:flutter/material.dart';

import 'package:flashcards_flutter/src/courses_list.dart';
import 'package:flashcards_flutter/src/custom_drawer.dart';

import 'package:flashcards_common/common.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        drawer: new CustomDrawer(),
        appBar: new AppBar(
          actions: <Widget>[
            new GestureDetector(
              child: new Icon(Icons.add),
              onTap: () {
                new CourseListBloc(new FirebaseFlutterApi()).create(new CourseData('from app', 0.5));
              },
            ),
          ],
          title: new Text('flashcards'),
          bottom: new TabBar(
            tabs: [
              new Tab(text: 'active'),
              new Tab(text: 'created'),
              new Tab(text: 'popular'),
            ],
          ),
        ),
        body: new TabBarView(
          children: [
            new CoursesList(CoursesQueryType.active),
            new CoursesList(CoursesQueryType.created),
            new CoursesList(CoursesQueryType.popular),
          ],
        ),
      ),
    );
  }
}
