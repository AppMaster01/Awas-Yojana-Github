// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types

int index = 0;

class Yojana_Chek {
  final Chek_Name, Chek_Description, Chek_link;

  Yojana_Chek({
    this.Chek_Name,
    this.Chek_Description,
    this.Chek_link,
  });
}

final List<Yojana_Chek> Yojana_ChekList = List.generate(
    Chek_Name.length,
    (index) => Yojana_Chek(
          Chek_Name: Chek_Name[index],
          Chek_Description: Chek_Description[index],
          Chek_link: Chek_link[index],
        ));

List Chek_Name = [
  'आवास योजना चेक करें (ग्रामीण)',
  'आवास योजना चेक करें (शहरी)',
];

List Chek_Description = [
  'ग्रामीण क्षेत्र के उपभोक्ता अपना बआवास योजना चेक करने के लिए नीचे दी गई बटन को दबाकर 12 अंकों का अकाउंट नंबर दर्ज करें !',
  'शहरी क्षेत्र के उपभोक्ता अपना बआवास योजना चेक करने के लिए दी गई बटन को दबाकर 10 अंकों का अकाउंट नंबर दर्ज करें ! या रजिस्टर्ड मोबाइल न. डालकर अपना बिजली बिल चेक करें ।',
];

List Chek_link = ['https://pmaymis.gov.in/', 'https://pmaymis.gov.in/'];
