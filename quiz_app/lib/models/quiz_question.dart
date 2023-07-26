class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

// idhar answers list ko copy akrke shuffle karenge
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // List ko copy kia
    final shuffledList = List.of(answers);

    // List ko shuffle kia
    shuffledList.shuffle();

    // Shuffled List ko return kar dia
    return shuffledList;
  }
}
