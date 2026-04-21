import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_assignment/core/theme/app_theme.dart';
import 'package:testing_assignment/features/bmi/data/services/bmi_service.dart';
import 'package:testing_assignment/features/bmi/presentation/bloc/bmi_bloc.dart';
import 'package:testing_assignment/features/bmi/presentation/pages/bmi_screen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => const BmiService(),
      child: BlocProvider(
        create: (context) => BmiBloc(bmiService: context.read<BmiService>()),
        child: MaterialApp(
          title: 'BMI Calculator',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          home: const BmiScreen(),
        ),
      ),
    );
  }
}
