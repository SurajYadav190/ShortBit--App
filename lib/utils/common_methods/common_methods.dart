
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shortbit/utils/custom_widgets/toast.dart';

import 'loder.dart';

validateEmail(String? email) {
  if (email == null ||
      email.isEmpty ||
      !email.contains('@') ||
      !email.contains('.')) {
    CustomFlutterToast.showToast(message: 'Invalid Email ID');
    return false;
  } else {
    return true;
  }
}

validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    CustomFlutterToast.showToast(message: 'Password can\'t be empty');
    return false;
  } else {
    return true;
  }
}

// to convert unix to date format
String convertUnixToDateString(int unixTimestamp) {
  int timestampInMillis = unixTimestamp * 1000;

  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestampInMillis);
  String formattedDate =
      '${_twoDigits(date.day)}-${_twoDigits(date.month)}-${date.year}';
  return formattedDate;
}

String _twoDigits(int n) {
  if (n >= 10) return "$n";
  return "0$n";
}

// convert date to unix
int convertDateTimeToUnix(DateTime dateTime) {
  return dateTime.millisecondsSinceEpoch ~/
      1000; // Divide by 1000 to convert to seconds
}

// // to Pick image from camera and gallery
// Future<File?> pickImage({required ImageSource source}) async {
//   final ImagePicker picker = ImagePicker();
//
//   final XFile? image = await picker.pickImage(source: source);
//
//   if (image != null) {
//     final imageFile = File(image.path);
//     log('----- path ${imageFile}');
//     return imageFile;
//   } else {
//     return null;
//   }
// }

// to get extenstion
String getFileExtension(String fileName) {
  try {
    return "." + fileName.split('.').last;
  } catch (e) {
    return '';
  }
}

///---------------------------------------
// to remove duplicate itmes from list
List<T> removeDuplicateItems<T>(List<T> list) {
  Set<T> uniqueItems = Set<T>();
  List<T> result = [];
  for (var item in list) {
    if (!uniqueItems.contains(item)) {
      uniqueItems.add(item);
      result.add(item);
    }
  }
  return result;
}

void showLoaderDialog({BuildContext ? context,String ? title}) {
   AlertDialog alertDialogs = AlertDialog(
    elevation: 0,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    content: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StaggeredDotsWave(),
        /*CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.blue)),*/
        SizedBox(
          width: 25,
        ),
        Text(
          title!,
          style: TextStyle(fontSize: 18),
        ),
        /* CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(colorFont)),*/
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    barrierColor: Colors.black38,
    context: context!,
    builder: (BuildContext context) {
      return  alertDialogs;
      // return WillPopScope(
      //     onWillPop: () => Future.value(false), child: alertDialogs);
    },
  );
}

// // select multiple images from gallery
//
// Future<List<File>> pickMultipleImagesFromDevice() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     allowMultiple: true,
//     type: FileType.custom,
//     allowedExtensions: ['jpg', 'jpeg', 'png'],
//   );
//
//   List<File> selectedFiles = [];
//
//   if (result != null) {
//     selectedFiles = result.paths.map((path) => File(path!)).toList();
//
//     for (File file in selectedFiles) {
//       print('File ncame: ${file.path}');
//       print('File path: ${file.path}');
//       print('File size: ${await file.length()} bytes');
//       print('--------------');
//     }
//   }
//
//   return selectedFiles;
// }

// /// to select pdf and images from device
//
// Future<List<File>> pickFileFromDevice() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     allowMultiple: true,
//     type: FileType.custom,
//     allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
//   );
//
//   List<File> selectedFiles = [];
//
//   if (result != null) {
//     selectedFiles = result.paths.map((path) => File(path!)).toList();
//
//     for (File file in selectedFiles) {
//       print('File ncame: ${file.path}');
//       print('File path: ${file.path}');
//       print('File size: ${await file.length()} bytes');
//       print('--------------');
//     }
//   }
//
//   return selectedFiles;
// }
