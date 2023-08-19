import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import the GetX package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: SimpleForm(),
    );
  }
}

class SimpleForm extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final RxString name = "".obs ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Simple Form Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                onFieldSubmitted: (String username) {
                  name.value = username; // Update the RxString value
                },
              ),
              TextFormField(
                // controller: _nameController,
                onFieldSubmitted: (String username) {
                  name.value = username; // Update the RxString value
                },
              ),
              SizedBox(height: 16.0),
              Obx(() => Text("My name is ${name.value}")),
               FloatingActionButton(
                onPressed: () {
                  Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: Icon(Icons.color_lens),
              ),
              // Observe changes in name
            ],
          ),
        ),
      ),
    );
  }
}
// class SimpleForm extends StatelessWidget {
//   final TextEditingController _nameController = TextEditingController();
//   final RxString name = "".obs;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.changeTheme(
//             Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
//           );
//         },
//         child: Icon(Icons.color_lens),
//       ),
//       // ... rest of your Scaffold content
//     );
//   }
// }

