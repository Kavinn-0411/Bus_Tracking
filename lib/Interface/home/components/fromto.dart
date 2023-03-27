import 'package:bus_tracker/Interface/home/components/displaybus.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class Fromto extends StatefulWidget {
  const Fromto({Key? key});

  @override
  State<Fromto> createState() => _FromtoState();
}

class _FromtoState extends State<Fromto> {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'District Buses';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  MyCustomForm({Key? key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // ignore: unused_field
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
 // MultiValueDropDownController _cntMulti;
  @override
  void initState() {
    _cnt = SingleValueDropDownController();
   // _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
   // _cntMulti.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /*const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Start Location',
                labelText: 'From:'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Destination',
                labelText: 'To:'),
          ),
        ),*/
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Enter your Start location",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        DropDownTextField(
          // initialValue: "name4",

          controller: _cnt,
          
          clearOption: true,
          enableSearch: false,
          dropdownColor: Color.fromARGB(255, 238, 220, 231),
          listPadding: ListPadding(top: 20),
          textFieldFocusNode: textFieldFocusNode,
          searchFocusNode: searchFocusNode,
          searchDecoration: const InputDecoration(
              hintText: "enter your custom hint text here"),
             // key: _formKey,
          validator: (value) {
            if (value == null) {
              return "Required field";
            } else {
              return null;
            }
          },
          dropDownList: const [
            DropDownValueModel(name: 'Tirupparangundram', value: "value5"),
            DropDownValueModel(name: 'MGR Bus stand', value: "value6"),
            DropDownValueModel(name: 'Aarapalayam', value: "value7"),
            DropDownValueModel(name: 'Anna Bus Stand', value: "value8"),
            DropDownValueModel(name: 'Park Town', value: "value9"),
            DropDownValueModel(name: 'Goripalayam', value: "value4"),
          ],
          onChanged: (val) {},
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Enter your Destination",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        DropDownTextField(
          // initialValue: "name4",

          controller: _cnt,
          clearOption: true,
          enableSearch: false,
          dropdownColor: Color.fromARGB(255, 238, 220, 231),
          listPadding: ListPadding(top: 20),
          textFieldFocusNode: textFieldFocusNode,
          searchFocusNode: searchFocusNode,
          searchDecoration: const InputDecoration(
              hintText: "enter your custom hint text here"),
              //key: _formKey,
          validator: (value) {
            if (value == null) {
              return "Required field";
            } else {
              return null;
            }
          },
          dropDownList: const [
            DropDownValueModel(name: 'Tirupparangundram', value: "value5"),
            DropDownValueModel(name: 'MGR Bus stand', value: "value6"),
            DropDownValueModel(name: 'Aarapalayam', value: "value7"),
            DropDownValueModel(name: 'Anna Bus Stand', value: "value8"),
            DropDownValueModel(name: 'Park Town', value: "value9"),
            DropDownValueModel(name: 'Goripalayam', value: "value4"),
          ],
          onChanged: (val) {},
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Displaybus(),
                ),
              );}
              },
              child: const Text('Submit'),
            ),
          ),
      ],
    );
  }
}


