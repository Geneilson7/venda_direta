import 'package:flutter/material.dart';
import 'package:venda_direta/utils/colors.dart';

InputDecoration textFormField(String label) {
  return InputDecoration(
    label: Text(label),
    fillColor: const Color(0xFFF1F4FF).withOpacity(0.9),
    filled: true,
    labelStyle: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF626262)),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
    isDense: true,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(11),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(11),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(11),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(11),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(11),
    ),
  );
}

InputDecoration serchFormField(String label) {
  return InputDecoration(
    label: Text(label),
    fillColor: Colors.transparent,
    filled: true,
    labelStyle: const TextStyle(
      color: Color(0xFF15133D),
      fontSize: 16,
      fontStyle: FontStyle.italic,
    ),
    isDense: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
  );
}

InputDecoration loginField(String label, icon) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFFF1F4FF).withOpacity(0.9),
    filled: true,
    prefixIcon: icon,
    labelStyle: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF626262)),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
    isDense: true,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
      borderRadius: BorderRadius.circular(11),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.0),
      borderRadius: BorderRadius.circular(11),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.0),
      borderRadius: BorderRadius.circular(11),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.0),
      borderRadius: BorderRadius.circular(11),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.0),
      borderRadius: BorderRadius.circular(11),
    ),
  );
}
