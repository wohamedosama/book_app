import 'package:book_app/features/home/presentation/manager/feature_books_cubit/feature_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit() : super(FeatureBookInitial());

  static FeatureBookCubit get(context) => FeatureBookCubit();
}
