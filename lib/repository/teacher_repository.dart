class TeacherRepository{
  final List<Teacher> student =  [
    Teacher("Suna","Ağır",24,"Kız"),
  ];
}

class Teacher{
  String Name;
  String Surname;
  int Age;
  String Cinsiyet;

  Teacher(this.Name,this.Surname,this.Age,this.Cinsiyet);

}