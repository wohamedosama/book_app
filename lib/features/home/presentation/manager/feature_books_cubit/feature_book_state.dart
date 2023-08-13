import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';

@immutable
abstract class FeatureBookState {}

class FeatureBookInitial extends FeatureBookState {}

class FeatureBooksLoadingState extends FeatureBookState {}

class FeatureBooksSuccessState extends FeatureBookState {
  final List<BookModel> books;

  FeatureBooksSuccessState(this.books);
}

class FeatureBooksFailureState extends FeatureBookState {
  final String error;

  FeatureBooksFailureState(this.error);
}
