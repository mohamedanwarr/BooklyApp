import 'package:bloc/bloc.dart';
import 'package:bookyapp/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookyapp/Features/home/Domain/UsesCases/FetchNewBooksUseCases.dart';
import 'package:meta/meta.dart';

part 'newestfeaturedbooks_state.dart';

class NewestfeaturedbooksCubit extends Cubit<NewestfeaturedbooksState> {
  NewestfeaturedbooksCubit(this.fetchNewBooksUseCases)
      : super(NewestfeaturedbooksInitial());
  final FetchNewBooksUseCases fetchNewBooksUseCases;

  Future<void> fetchNewBooks() async {
    emit(FeaturedBooksLoading());
    var result = await fetchNewBooksUseCases.Call();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (success) => emit(FeatureBooksSucsses(success)));
  }
}
