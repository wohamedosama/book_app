part of 'newest_book_cubit.dart';

@immutable
abstract class NewestBookState {}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoadingState extends NewestBookState {}

class NewestBookSuccessState extends NewestBookState {
  final List<BookModel> books;

  NewestBookSuccessState(this.books);
}

class NewestBookFailureState extends NewestBookState {
  final String error;

  NewestBookFailureState(this.error);
}
