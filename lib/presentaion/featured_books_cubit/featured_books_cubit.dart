// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchFeaturedBooks_UseCases.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchNewBooksUseCases.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCases,)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCases featuredBooksUseCases;


  Future<void> fetchFeaturedBooks({int pagenum=0}) async {
    if (pagenum==0) {
      emit(FeaturedBooksLoading());
    }else{
      emit(FeaturedBooksPaginationLoading());
    }
    var result = await featuredBooksUseCases.Call(
      pagenum
    );
    result.fold((failure) {
      if (pagenum == 0) {
        emit(FeaturedBooksFailure(failure.message));
      }else{
        emit(FeaturedBooksPaginationFailure(failure.message));
      }
    }, (success) {
      emit(FeatureBooksSucsses(success));
    });
  }


}
