// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchFeaturedBooks_UseCases.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchNewBooksUseCases.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCases, this.fetchNewBooksUseCases)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCases featuredBooksUseCases;
  final FetchNewBooksUseCases fetchNewBooksUseCases;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCases.Call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (success) {
      emit(FeatureBooksSucsses(success));
    });
  }

  Future<void> fetchNewBooks() async {
    emit(FeaturedBooksLoading());
    var result = await fetchNewBooksUseCases.Call();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (success) => emit(FeatureBooksSucsses(success)));
  }
}
