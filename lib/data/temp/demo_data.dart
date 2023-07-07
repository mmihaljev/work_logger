import 'package:flutter/material.dart';
import 'package:work_logger/data/models/user_model.dart';

import '../models/client_model.dart';
import '../models/project_model.dart';

final List<Client> clients = [
  Client(clientID: 1, clientName: 'Facebook'),
  Client(clientID: 2, clientName: 'Netflix'),
  Client(clientID: 3, clientName: 'HBO')
];

final List<Project> projects = [
  Project(
      projectID: 1,
      clientID: 1,
      projectName: 'Edit messages',
      timeStarted: DateTime.now().toString(),
      projectDescription: 'Add new feature so users can edit sent messages.'
  ),
  Project(
      projectID: 2,
      clientID: 1,
      projectName: 'Add themes',
      timeStarted: DateTime.now().toString(),
      projectDescription: 'Create new themes for messages.'),
  Project(
      projectID: 3,
      clientID: 2,
      projectName: 'Adding movies',
      timeStarted: DateTime.now().toString(),
      projectDescription: 'Add new movies on site.'),
  Project(
      projectID: 4,
      clientID: 3,
      projectName: 'New signUp form',
      timeStarted: DateTime.now().toString(),
      projectDescription: 'Create a new signup form for website.')
];

final List<Widget> imageSliders = projects
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.indigo,
                            Colors.purple,
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(
                          20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item.projectName}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '${item.projectDescription}',
                            style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
