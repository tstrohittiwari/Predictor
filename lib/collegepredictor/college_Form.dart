import 'package:flutter/material.dart';
import 'package:predictor/collegepredictor/collegecard/listView.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedCategory = 'SC';
  String selectedExam = 'JEE Advanced';
  String domicileValue = 'Andaman and Nicobar Islands';
  String selectedGender = 'Male';
  TextEditingController jeeRankController = TextEditingController();

  List<String> indianStatesAndUTs = [
    'Andaman and Nicobar Islands',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chandigarh',
    'Chhattisgarh',
    'Dadra and Nagar Haveli and Daman and Diu',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu and Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Lakshadweep',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Puducherry',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 5),
                const Text(
                  "Your Rank",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const Text(
                  "Predictor",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const SizedBox(
                  height: 5,
                ),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButtonFormField<String>(
                    value: selectedCategory,
                    items: ['SC', 'ST', 'OBC', 'OPEN', 'EWS', 'PWD']
                        .map((category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value!;
                      });
                    },
                    decoration: const InputDecoration(labelText: 'Category'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButtonFormField<String>(
                    value: selectedExam,
                    items: ['JEE Advanced', 'JEE Mains', 'UPTU', 'WBJEE']
                        .map((exam) {
                      return DropdownMenuItem<String>(
                        value: exam,
                        child: Text(exam),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedExam = value!;
                      });
                    },
                    decoration: const InputDecoration(labelText: 'Exam'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: jeeRankController,
                  decoration: const InputDecoration(labelText: 'JEE Rank'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your JEE Rank';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,

                    value: domicileValue,
                    items: indianStatesAndUTs.map((state) {
                      return DropdownMenuItem<String>(
                        value: state,
                        child: Text(state),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        domicileValue = value!;
                      });
                    },
                    decoration: const InputDecoration(labelText: 'Domicile'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      const Text("Gender : ",style: TextStyle(fontSize: 18)),
                      Radio(
                        value: 'Male',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      const Text('Male'),
                      Radio(
                        value: 'Female',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      const Text('Female'),
                      Radio(
                        value: 'Other',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      const Text('Other'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Access the field values and perform actions here
                        print('Category: $selectedCategory');
                        print('Exam: $selectedExam');
                        print('JEE Rank: ${jeeRankController.text}');
                        print('Domicile: $domicileValue');
                        print('Gender: $selectedGender');
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CollegeList()),
                      );
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
