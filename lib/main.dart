import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_app/pages/student_page.dart';

import 'pages/message_page.dart';
import 'pages/teacher_page.dart';
import 'repository/student_repository.dart';


void main() {
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Öğrenci Uygulaması'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final studentRepository = ref.watch(studentsProvider);
    final teacherRepository = ref.watch(teacherProvider);
    final studentRepository = ref.watch(studentsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
             TextButton(
                 onPressed: _studentsGo(context),
                 child: Text("${studentRepository.student.length} Öğrenci"),

             ),
            TextButton(
              onPressed: _teachersGo(context),
              child: Text("${teacherRepository.} Öğretmen"),

            ),
            TextButton(
              onPressed: _messagesGo(context),
              child: Text("${studentRepository.student.length} Öğrenci"),

            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              child: Text("Öğrenci Adı"),
            ),
            ListTile(
              title: const Text("Öğrenciler"),
              onTap: (){
                _studentsGo(context);
              },
            ),
            ListTile(
              title: const Text("Öğretmenler"),
              onTap: (){
                _teachersGo(context);
              },
            ),
            ListTile(
              title: const Text("Mesajlar"),
              onTap: (){
                _messagesGo(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


void _studentsGo(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
  return StudentPage();
  },));
}

void _teachersGo(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return TeacherPage();
  },));
}


void _messagesGo(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return MessagePage();
  },));
}

