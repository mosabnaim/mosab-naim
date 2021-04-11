import 'teacher.dart';
void main(List<String> arguments) {

var teacher = Teacher.certif(
  certification : Certification.phd ,
 city: 'Gaza',
 subject: 'AUG',
  name: 'Mosab', );
print(teacher.teacherdata());
}
