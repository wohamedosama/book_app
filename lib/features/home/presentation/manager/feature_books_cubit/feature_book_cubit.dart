import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:book_app/features/home/presentation/manager/feature_books_cubit/feature_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksLoadingState());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeatureBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccessState(books));
    });
  }
}
