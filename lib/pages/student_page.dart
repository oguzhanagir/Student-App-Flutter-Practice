import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_app/repository/student_repository.dart';


class StudentPage extends ConsumerWidget {

  const StudentPage( {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final studentsRepository = ref.watch(studentsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Öğrenci Sayfası")),
      body: Column(
        children: [
          const PhysicalModel(
            color: Colors.white,
            elevation: 10,
            child: Center(
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0,vertical: 32.0),
                child: Text('${studentsRepository.student.length} Öğrenci'),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index)=> ListTile(
                  title: const Text("Ali"),
                  leading: const Text("👨👩") ,
                  trailing: IconButton(
                    onPressed: (){

                    },
                    icon:  Icon(Icons.favorite_border),
                  ),
                ),
                separatorBuilder: (context,index) => Divider(),
                itemCount: 10
            ),
          ),
        ],
      ),
    );
  }
}
