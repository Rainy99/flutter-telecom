import 'dart:math';

class Contact{
  int phone;
  String city;

  Contact(this.phone,this.city);
}

class TestData{
  final Random random = new Random();

  List<Contact> getTestData() {
    var list = new List<Contact>();
    for (int i = 0; i < 20; i++) {
      var contact = new Contact(random.nextInt(999999999), "上海市");
      list.add(contact);
    }
    return list;
  }
}