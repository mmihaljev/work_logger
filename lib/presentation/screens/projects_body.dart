import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> sortItems = [
  const DropdownMenuItem(
    child: Text('Date created'),
    value: 'DateCreated',
  ),
  const DropdownMenuItem(
    child: Text('Client'),
    value: 'Client',
  ),
  const DropdownMenuItem(
    child: Text('Salary'),
    value: 'Salary',
  ),
];

class ProjectsBody extends StatefulWidget {
  const ProjectsBody({super.key});

  @override
  State<ProjectsBody> createState() => _ProjectsBodyState();
}

class _ProjectsBodyState extends State<ProjectsBody> {
  String title = 'Projects';
  String? value = 'DateCreated';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 20),
          child: Text(
            "Projects",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            DropdownButtonFormField(
              items: sortItems,
              onChanged: (String? newValue) {
                setState(() {
                  value = newValue;
                });
              },
              value: value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.blueAccent,
                constraints: BoxConstraints(maxHeight: 100, maxWidth: 200)
              ),
              dropdownColor: Colors.indigo,
            )
          ],
        )
      ],
    );
  }
}
