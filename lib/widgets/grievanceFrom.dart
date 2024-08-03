import 'package:flutter/material.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart'; // Ensure this file exists and contains the AppColors definition

class GrievanceFormScreen extends StatefulWidget {
  @override
  _GrievanceFormScreenState createState() => _GrievanceFormScreenState();
}

class _GrievanceFormScreenState extends State<GrievanceFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? grievanceType;
  String? taluk;
  String? union;
  String? townPanchayat;
  String? villagePanchayat;
  String? villageTown;
  String? wardNo;
  String? streetName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Grievance Form',
            style: AppTextStyles.headerStyle,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.lightGreen[100],
          toolbarHeight: 80.0),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildDropdownField(
                label: 'Grievance Type',
                value: grievanceType,
                hint: 'Select Grievance Type',
                items: ['Type 1', 'Type 2', 'Type 3'],
                onChanged: (newValue) {
                  setState(() {
                    grievanceType = newValue;
                  });
                },
              ),
              _buildTextField(
                label: 'Grievance',
                hint: 'Enter your query',
                maxLines: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Grievance Location',
                  style: AppTextStyles.defaultStyle
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              _buildDropdownField(
                label: 'Taluk',
                value: taluk,
                hint: 'Select Taluk',
                items: ['Taluk 1', 'Taluk 2', 'Taluk 3'],
                onChanged: (newValue) {
                  setState(() {
                    taluk = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Union',
                value: union,
                hint: 'Select Union',
                items: ['Union 1', 'Union 2', 'Union 3'],
                onChanged: (newValue) {
                  setState(() {
                    union = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Town Panchayat',
                value: townPanchayat,
                hint: 'Select Town Panchayat',
                items: [
                  'Town Panchayat 1',
                  'Town Panchayat 2',
                  'Town Panchayat 3'
                ],
                onChanged: (newValue) {
                  setState(() {
                    townPanchayat = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Village Panchayat',
                value: villagePanchayat,
                hint: 'Select Village Panchayat',
                items: [
                  'Village Panchayat 1',
                  'Village Panchayat 2',
                  'Village Panchayat 3'
                ],
                onChanged: (newValue) {
                  setState(() {
                    villagePanchayat = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Village / Town',
                value: villageTown,
                hint: 'Select Village / Town',
                items: ['Village 1', 'Town 1', 'Village 2', 'Town 2'],
                onChanged: (newValue) {
                  setState(() {
                    villageTown = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Ward No',
                value: wardNo,
                hint: 'Select Ward No',
                items: ['Ward 1', 'Ward 2', 'Ward 3'],
                onChanged: (newValue) {
                  setState(() {
                    wardNo = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: 'Street Name',
                value: streetName,
                hint: 'Select Street',
                items: ['Street 1', 'Street 2', 'Street 3'],
                onChanged: (newValue) {
                  setState(() {
                    streetName = newValue;
                  });
                },
              ),
              // SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     if (_formKey.currentState?.validate() ?? false) {
              //       // Process the form submission
              //     }
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ),
              //   ),
              //   child: Text('Submit'),
              // ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Process the form submission
                        }
                      },
                      child: Text(
                        'Submit',
                        style: AppTextStyles.defaultStyle.copyWith(
                          color: AppColors.textLightColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: AppButtonStyles.elevatedButtonStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String? value,
    required String hint,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.defaultStyle
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 12.0), // Adjust vertical padding
                  hintText: hint,
                  hintStyle: TextStyle(color: AppColors.hintTextColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.hintTextColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.hintTextColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.hintTextColor,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: SizedBox(
                    height: 40.0, // Adjust height here
                    child: DropdownButton<String>(
                      value: value,
                      onChanged: (newValue) {
                        onChanged(newValue);
                        state.didChange(newValue);
                      },
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      hint: Align(
                        alignment: Alignment.center,
                        child: Text(
                          hint,
                          style: TextStyle(color: AppColors.hintTextColor),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.defaultStyle
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: AppColors.hintTextColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: AppColors.hintTextColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: AppColors.hintTextColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: AppColors.hintTextColor,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            maxLines: maxLines,
            validator: (value) =>
                value?.isEmpty == true ? 'Please enter $label' : null,
          ),
        ],
      ),
    );
  }
}
