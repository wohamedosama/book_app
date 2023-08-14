import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:flutter/foundation.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(
    this.homeRepo,
  ) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      print(failure.toString());

      return emit(SimilarBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books));
    });
  }
}
