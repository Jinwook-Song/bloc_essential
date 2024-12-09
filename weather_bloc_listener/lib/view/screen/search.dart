import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? _city;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  void _submit() {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });

    final form = _formkey.currentState;

    if (form != null && form.validate()) {
      form.save();
      Navigator.of(context).pop(_city!.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Form(
        key: _formkey,
        autovalidateMode: _autovalidateMode,
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: true,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                    labelText: 'City name',
                    hintText: 'more than 2 characters',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
                validator: (String? input) {
                  if (input == null || input.trim().length < 2) {
                    return 'City name should be more than 2 characters.';
                  }
                  return null;
                },
                onSaved: (String? newValue) {
                  _city = newValue;
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _submit,
                child: Text(
                  "How's weather?",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
