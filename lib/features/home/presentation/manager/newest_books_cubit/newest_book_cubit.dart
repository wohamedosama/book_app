import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit() : super(NewestBookInitial());

  static NewestBookCubit get(context) => NewestBookCubit();

  Future<void> fetchNewestBook() async {
    emit(NewestBookLoadingState());
    HomeRepo? homeRepo;
    var result = await homeRepo!.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBookFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBookSuccessState(books));
    });
  }
}
