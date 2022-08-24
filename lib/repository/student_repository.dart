import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentRepository extends ChangeNotifier{
  final List<Student> student =  [
    Student("Oğuzhan","Ağır",20,"Erkek"),
    Student("Suna","Ağır",24,"Kız"),
  ];

  final Set<Student> followers = {};

  void follow(Student student , bool doFollow){
    if(doFollow){
      followers.add(student);
    }
    else{
      followers.remove(student);
    }
    notifyListeners();
  }
}

final studentsProvider =ChangeNotifierProvider((ref){
  return StudentRepository();
});

class Student{
  String Name;
  String Surname;
  int Age;
  String Cinsiyet;

  Student(this.Name,this.Surname,this.Age,this.Cinsiyet);

}