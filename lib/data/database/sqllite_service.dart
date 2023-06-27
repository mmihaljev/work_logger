import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        user_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        total_earnings REAL NOT NULL,
        total_active_projects INTEGER NOT NULL,
        total_active_earnings REAL NOT NULL,
        total_active_projects INTEGER NOT NULL
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

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'work-logger.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Create new item
  static Future<int> createItem(String? title, String? descrption) async {
    final db = await DatabaseHelper.db();

    final data = {'title': title, 'description': descrption};
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Read all items
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DatabaseHelper.db();
    return db.query('items', orderBy: "id");
  }

  // Get a single item by id
  //We dont use this method, it is for you if you want it.
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await DatabaseHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // Update an item by id
  static Future<int> updateItem(
      int id, String title, String? descrption) async {
    final db = await DatabaseHelper.db();

    final data = {
      'title': title,
      'description': descrption,
      'createdAt': DateTime.now().toString()
    };

    final result =
    await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItem(int id) async {
    final db = await DatabaseHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}