part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksFailureState extends SimilarBooksState {
  final String error;

  SimilarBooksFailureState(this.error);
}
