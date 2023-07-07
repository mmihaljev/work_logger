import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:work_logger/data/models/user_model.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/widgets.dart';

class DatabaseHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        user_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        total_earnings REAL NOT NULL,
        total_active_projects INTEGER NOT NULL,
        total_active_earnings REAL NOT NULL,
      )
      """);
    await database.execute("""CREATE TABLE client(
        client_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        user_id INTEGER NOT NULL,
        client_name TEXT NOT NULL,
        client_mail TEXT,
        client_address TEXT,
        FOREIGN KEY (user_id) REFERENCES user (user_id) ON DELETE CASCADE ON UPDATE NO ACTION,
      )
      """);
    await database.execute("""CREATE TABLE project(
        project_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        client_id INTEGER NOT NULL,
        project_name TEXT NOT NULL,
        project_description TEXT,
        project_salary REAL,
        time_started TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        time_ended TIMESTAMP,
        time_total REAL,
        salary_total REAL,
        FOREIGN KEY (client_id) REFERENCES client (client_id) ON DELETE CASCADE ON UPDATE NO ACTION,
      )
      """);
    await database.execute("""CREATE TABLE task(
        task_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        project_id INTEGER NOT NULL,
        task_name TEXT NOT NULL,
        task_description TEXT,
        time_started TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        time_ended TIMESTAMP,
        time_total REAL,
        FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE ON UPDATE NO ACTION,
      )
      """);
    await database.execute("""CREATE TABLE session(
        session_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        task_id INTEGER NOT NULL,
        session_description TEXT,
        time_started TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        time_ended TIMESTAMP,
        time_paused REAL,
        FOREIGN KEY (task_id) REFERENCES task (task_id) ON DELETE CASCADE ON UPDATE NO ACTION,
      )
      """);
  }

  final database = sql.openDatabase(
    'work-logger.db',
    version: 1,
    onCreate: (sql.Database database, int version) async {
      await createTables(database);
    },
  );

  //! USER related database operations
  // Adding new user
  Future<void> insertDog(Global user) async {
    final db = await database;

    await db.insert(
      'user',
      user.toMap(),
    );
  }

  // Retrieve user from database
  Future<List<Global>> getUser() async {
    final db = await database;

    final List<Map<String, dynamic>> users = await db.query('user', limit: 1);

    List<Global> user = [];

    users.forEach((element) {
      user.add(Global.fromMap(element));
    });

    return user;
  }

  // Update user
  Future<void> updateUser(Global user) async {
    final db = await database;

    await db.update(
      'user',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.userID],
    );
  }
}
