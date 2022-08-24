import 'package:flutter/material.dart';
import 'package:student_app/repository/teacher_repository.dart';

class TeacherPage extends StatefulWidget {
  final TeacherRepository teacherRepository;
  const TeacherPage(this.teacherRepository, {Key? key}) : super(key: key);

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Öğretmen Sayfası")),
        body: Column(
          children: [
            const PhysicalModel(
              color: Colors.white,
              elevation: 10,
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                  child: Text("10 Öğretmen"),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => const ListTile(
                        title: Text("Öğretmen Adı"),
                        leading: Text("👨👩"),
                      ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10),
            ),

          ],
        ),
    );
  }
}
