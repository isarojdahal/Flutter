import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/widgets/custom_saveButton.dart';
import 'package:whatsapp_redesing/widgets/custom_textField.dart';

class AddNewUser extends StatelessWidget {
  const AddNewUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey[500],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.red[900],
        ),
        title: Text("New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              CustomTextField(
                labelText: "Name",
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                labelText: "Last Name",
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "AZ - +994",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Number",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomSaveButton(),
            ],
          ),
        ),
      ),
    );
  }
}
