
// ignore: unused_import
import 'package:multi_select_flutter/multi_select_flutter.dart';


class FormData {
  var textInput = {'q5' : "", 'q6': "", 'q7': "", 'q11': "", 'q12': "", 'q13': "",
   'q14': "", 'q16': "", 'q17': "", 'q18': ""};

  var multiSelect = {'q1': null, 'q2': null, 'q4': null};

  var radioInput = {'q8': null, 'q9' : null, 'q10': null};

  var picInput = {'q3' : null, 'q11.5': null, 'q15' : null};


  //OK  print(textInput["q14"]);
  //OK  textInput["q14"] = "Hello";
  //OK  textInput["q20"] = "Hi";

  /// Fills the specified index with the specified value
  /// @pre index must be a vaild question number that takes text input
  void enterText(String index, String ans) {
    textInput[index] = ans;
  }

  void enterMultiSelect(String index, MultiSelectItem m) {
    //work with multiselect items properly ? maybe use other data type
    //multiSelect[index] = m;
  }

//Object will be photo
    void enterPhoto(String index, Object m) {
      
  }











}