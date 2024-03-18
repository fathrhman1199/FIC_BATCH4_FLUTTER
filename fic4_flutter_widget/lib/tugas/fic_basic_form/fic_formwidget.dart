import 'package:flutter/material.dart';

class FICFormWidget extends StatefulWidget {
  const FICFormWidget({super.key});

  @override
  State<FICFormWidget> createState() => _FICFormWidgetState();
}

bool isOn = false;

var selected = 'flutter';
final dropdownList = <String>['flutter', 'Dart', 'Java', 'C++'];
var sex = 'male';
var isChecked = false;
TextEditingController nameController = TextEditingController();

class _FICFormWidgetState extends State<FICFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Form Widget"),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Nama TextName
              TextField(
                maxLength: 20,
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Nama anda ?",
                ),
              ),
              //Row Pilih Bahasa
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Bahasa Favorit Anda: "),
                  const SizedBox(
                    width: 8,
                  ),
                  DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 20,
                    style: TextStyle(color: Colors.blue[600]),
                    underline: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    items: dropdownList
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) selected = val;
                      });
                    },
                  ),
                ],
              ),
              //Pilih Gender
              LayoutBuilder(builder: (context, constraints) {
                List<String> itemStringList = ["Female", "Male"];

                return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: "Gender",
                          errorText: field.errorText,
                          helperText: "Gender anda apa?",
                        ),
                        child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: "Female",
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 24.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            iconSize: 16,
                            elevation: 16,
                            // style: TextStyle(
                            //   fontSize: Theme.of(context)
                            //       .textTheme
                            //       .bodyMedium!
                            //       .fontSize,
                            //   fontFamily: Theme.of(context)
                            //       .textTheme
                            //       .bodyMedium!
                            //       .fontFamily,
                            // ),
                            underline: Container(
                              height: 0,
                              color: Colors.grey[300],
                            ),
                            onChanged: (String? newValue) {},
                            items: itemStringList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        )),
                      );
                    });
              }),
              //Conect to Instagram
              Row(
                children: [
                  const Text('Connect Instagram'),
                  const SizedBox(
                    width: 8,
                  ),
                  Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                        });
                      }
                    },
                  ),
                ],
              ),
              //Gender Radio Button
              Row(
                children: [
                  const Text('Gender :'),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 'male',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              sex = val;
                            }
                          });
                        },
                      ),
                      const Text('Male'),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 'female',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              sex = val;
                            }
                          });
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                ],
              ),
              //I Agree (checkBox)
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setState(() {
                        if (val != null) {
                          isChecked = val;
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Agree Term & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              //Birthday
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  debugPrint("pickedDate: $pickedDate");
                },
                child: TextFormField(
                  initialValue: '2022-08-01',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Birth date',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    suffixIcon: Icon(Icons.date_range),
                    helperText: "What's your birth date?",
                  ),
                  onChanged: (value) {},
                ),
              ),
            ])),
      ),
    );
  }
}
