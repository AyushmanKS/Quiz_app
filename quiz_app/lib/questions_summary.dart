import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSumary extends StatelessWidget {
  const QuestionsSumary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                // ),

                // column to output question, answer and chosen answer
                // Outputting Question
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // printing Questions
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),

                      // printing user answer
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 165, 162, 166),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.laila(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
