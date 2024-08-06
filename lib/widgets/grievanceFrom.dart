import 'package:flutter/material.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/generated/l10n.dart';

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
          S.of(context).grievanceFormTitle,
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
        backgroundColor: AppColors.secondaryColor,
        toolbarHeight: 80.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildDropdownField(
                label: S.of(context).grievanceType,
                value: grievanceType,
                hint: S.of(context).selectGrievanceType,
                items: [
                  S.of(context).type1,
                  S.of(context).type2,
                  S.of(context).type3
                ],
                onChanged: (newValue) {
                  setState(() {
                    grievanceType = newValue;
                  });
                },
              ),
              _buildTextField(
                label: S.of(context).grievance,
                hint: S.of(context).enterYourQuery,
                maxLines: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  S.of(context).grievanceLocation,
                  style: AppTextStyles.defaultStyle
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              _buildDropdownField(
                label: S.of(context).taluk,
                value: taluk,
                hint: S.of(context).selectTaluk,
                items: ['Taluk 1', 'Taluk 2', 'Taluk 3'],
                onChanged: (newValue) {
                  setState(() {
                    taluk = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: S.of(context).union,
                value: union,
                hint: S.of(context).selectUnion,
                items: ['Union 1', 'Union 2', 'Union 3'],
                onChanged: (newValue) {
                  setState(() {
                    union = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: S.of(context).townPanchayat,
                value: townPanchayat,
                hint: S.of(context).selectTownPanchayat,
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
                label: S.of(context).villagePanchayat,
                value: villagePanchayat,
                hint: S.of(context).selectVillagePanchayat,
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
                label: S.of(context).villageTown,
                value: villageTown,
                hint: S.of(context).selectVillageTown,
                items: ['Village 1', 'Town 1', 'Village 2', 'Town 2'],
                onChanged: (newValue) {
                  setState(() {
                    villageTown = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: S.of(context).wardNo,
                value: wardNo,
                hint: S.of(context).selectWardNo,
                items: ['Ward 1', 'Ward 2', 'Ward 3'],
                onChanged: (newValue) {
                  setState(() {
                    wardNo = newValue;
                  });
                },
              ),
              _buildDropdownField(
                label: S.of(context).streetName,
                value: streetName,
                hint: S.of(context).selectStreetName,
                items: ['Street 1', 'Street 2', 'Street 3'],
                onChanged: (newValue) {
                  setState(() {
                    streetName = newValue;
                  });
                },
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Process the form submission
                        }
                      },
                      child: Text(
                        S.of(context).submit,
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
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: double.infinity),
            child: InputDecorator(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
                hintText: hint,
                hintStyle: TextStyle(color: AppColors.hintTextColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: AppColors.hintTextColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: AppColors.hintTextColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: AppColors.hintTextColor),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded:
                      true, // Ensures the DropdownButton takes full width
                  value: value,
                  onChanged: (newValue) {
                    onChanged(newValue);
                  },
                  items: items.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  hint: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      hint,
                      style: TextStyle(color: AppColors.hintTextColor),
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: AppColors
                        .hintTextColor, // Change the color of the dropdown icon
                    size: 30.0, // Change the size of the dropdown icon
                  ),
                ),
              ),
            ),
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
                borderSide: BorderSide(color: AppColors.hintTextColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: AppColors.hintTextColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: AppColors.hintTextColor),
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
