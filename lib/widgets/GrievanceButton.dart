import 'package:flutter/material.dart';

class GrievanceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed; // Add this line

  const GrievanceButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onPressed, // Use this line to handle tap
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Icon(icon, color: color, size: 40),
              SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
