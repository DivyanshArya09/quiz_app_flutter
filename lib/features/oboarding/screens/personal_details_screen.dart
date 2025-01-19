import 'package:flutter/material.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  late TextEditingController _nameTC;
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _nameTC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameTC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Personal Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _spacer(),
              Text(
                'Enter your name to get started ! 🌈',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              _spacer(),
              TextFormField(
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _formKey.currentState!.validate();
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                controller: _nameTC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  helperText: 'Your name will be used to display your score.',
                ),
              ),
              _spacer(
                height: 90,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/quiz',
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              _spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _spacer({double? height = 20}) {
    return SizedBox(
      height: height,
    );
  }
}
