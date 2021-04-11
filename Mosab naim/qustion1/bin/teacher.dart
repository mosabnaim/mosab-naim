enum Certification { diploma, bc, master, phd }

class Teacher {
  String name;
  String subject;
  String city;
  Certification certification;

  Map teacherdata() {
    return {
      'name': name,
      'city': city,
      'certification': 
      certification == Certification.diploma
          ? 'diploma'
          : certification == Certification.bc
              ? 'bachelor'
              : certification == Certification.master
                  ? 'master'
                  : 'phD',
      'subject': subject
    };
  }

  Teacher._bc(this.certification, this.city, this.subject, this.name);
  Teacher._diploma(this.certification, this.city, this.subject, this.name);
  Teacher._master(this.certification, this.city, this.subject, this.name);
  Teacher(this.certification, this.city, this.subject, this.name) ;

  factory Teacher.certif(
      {String name, String subject, String city, Certification certification}) {
    if (certification == Certification.diploma) {
      return Teacher._diploma(certification, city, subject, name);
    } else if (certification == Certification.bc) {
      return Teacher._bc(certification, city, subject, name);
    } else if (certification == Certification.master) {
      return Teacher._master(certification, city, subject, name);
    } else {
      return Teacher(certification, city, subject, name);
    }
  }
}
