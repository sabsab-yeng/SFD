import 'dart:async';

class Validators {
  //List [String, String]
  final validateEmail = StreamTransformer<String, String>.fromHandlers(handleData: (email, sink){
    if(email.contains("@")){
      sink.add(email);
    }
    else{
      sink.addError("ອີເມວບໍຖືກຕອ້ງ!!!..");
    }
  });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(handleData: (password, sink){
    if(password.length > 4){
      sink.add(password);
    }else{
      sink.addError("ລະຫັດຜ່ານຂອງທ່ານຢ່າງໜ້ອຍໃຫ້ມີ 5 ຕົວອັກສອນຂື້ນໄປ");
    }
  }); 
}