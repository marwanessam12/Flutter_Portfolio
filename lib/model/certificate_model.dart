class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Carpooling Mobile Application Security ',
    organization: 'UGRF By Nile University',
    date: 'JAN 2025',
    skills:
        " Data protection . Authentication with MFA. Cyber threats via secure coding practices",
    credential:
        'https://drive.google.com/file/d/1Pz7zrWRXDRAX5KAiQ99clxTsPi3t9guc/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'TechVerse Carnival',
    organization: 'Nile University',
    date: 'DEC 2024',
    skills: " Problem Solving. Tech Solutions",
    credential:
        'https://drive.google.com/file/d/13Mz1yNLRDO9pw1I9V1WX0Meq51-jjELN/view?usp=drive_link',
  ),
  CertificateModel(
      name: 'Mobile App Development',
      organization: 'Etisalat E &',
      date: 'AUG 2024',
      skills: 'Flutter . Dart . FireBase . UI/UX',
      credential:
          'https://drive.google.com/file/d/1MpU1j8OD0bx0CGiAp03K2ezYDi1t9XqW/view?usp=drive_link'),
  CertificateModel(
    name: 'Embedded Systems Diploma',
    organization: 'Amit Learning',
    date: 'OCT 2023',
    skills:
        'Embedded Systems Tools. Embedded C Programming. Interfacing Protocol. Real Time Operating Systems',
    credential:
        'https://drive.google.com/file/d/1n41ws74J5i00P8RLGc_KS1ke95dhOyHz/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'Automotive Engineering Assistant Intern',
    organization: 'BMW Deutschland- Global Auto',
    date: 'AUG 2022',
    skills: 'Assisted in building automotive prototypes and conducting tests',
    credential:
        'https://drive.google.com/file/d/1EP1X-KkYYMLF5RP9a8vfM64LIkdrPvnc/view?usp=drive_link',
  ),
  CertificateModel(
    name: 'Digital Marketing',
    organization: 'Google',
    date: 'OCT 2022',
    skills: 'Social media marketing. Data-driven marketing strategies.',
    credential:
        'https://drive.google.com/file/d/1T67uLIMG6gwUWOlEDDWODQW8WNW8YIx8/view?usp=drive_link',
  ),
  // ),
  // CertificateModel(
  //   name: 'Modularizing and Organizing Flutter Code',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Clean Architecture',
  //   credential: '',
  // ),
  // CertificateModel(
  //   name: 'Powering Your App with Live Web Data',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . API\'s',
  //   credential: '',
  // ),
  // CertificateModel(
  //   name: 'Firebase Cloud Firestore',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . FireStore',
  //   credential: '',
  // ),
];
