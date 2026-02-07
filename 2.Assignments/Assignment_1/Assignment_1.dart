
// Task_1 
void main() {
  List<double> Grades = [100, 90, 85.5, 60, 45];

  double TotalGrades = 0;

  for (final double Grade in Grades) {
    TotalGrades += Grade;
  }

  double Average = TotalGrades / Grades.length;

  String PerformanceLevel = switch (Average) {
    >= 90 && <= 100 => 'Excellent',
    >= 80 && <= 90 => 'Good',
    >= 70 && <= 80 => 'Average',
    < 70 => 'Bad',
    _ => 'No_Matching_Performance_Level',
  };

  print(
    'Grade Summary:\nTotal Grades: $TotalGrades\nAverage: $Average\nPerformance: $PerformanceLevel',
  );
}

/* Task_2 
 * Q1 =----> A 
 * Q2 =----> B
 * Q3 =----> C 
 * Q4 =----> A  
 * Q5 =----> A 
 * Q6 =----> A 
 * Q7 =----> A
 * Q8 =----> A
 * Q9 =----> A
 * Q10 =----> A 
 * Q11 =----> B 
 */
