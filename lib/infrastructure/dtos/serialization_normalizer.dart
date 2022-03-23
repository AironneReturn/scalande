bool boolNormalizer(dynamic value) {

  if (value.toString() == '0') {
    return false;
  } else {
    return true;
  }
}

int toJsonBoolNormalizer(bool value) {
  if (value == true) {
    return 1;
  } else {
    return 0;
  }
}

double stringToDoubleNormalizer(dynamic value) {

  return double.tryParse(value.toString()) ?? 0;
}

String dateTimeToDateAsString(dynamic value) {

  return '${value.year}/${value.month.toString().padLeft(2, '0')}/${value.day.toString().padLeft(2, '0')}';
}
DateTime stringToDateTime(String value) {
  try{
  
  List<String> ddmmyyyy  = value.split("/");

  String goodFormatString = "${ddmmyyyy[2]}-${ddmmyyyy[1]}-${ddmmyyyy[0]}";

 
  DateTime toPrint = DateTime.parse(goodFormatString);
  print("HAAAAAA");
 print(toPrint);
  return DateTime.parse(goodFormatString);
   }catch(e){
    print("fdjlkdjf" + e.toString());
    rethrow;
      }
}

String dateTimeToDateWithHoursAsString(dynamic value) {

  return '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')} ${value.hour.toString().padLeft(2, '0')}:${value.minute.toString().padLeft(2, '0')}:${value.second.toString().padLeft(2, '0')}';
}

DateTime convertToDatetime(int timeStamp){
  return DateTime(timeStamp);
}
