part of 'newestfeaturedbooks_cubit.dart';

@immutable
abstract class NewestfeaturedbooksState {}

class NewestfeaturedbooksInitial extends NewestfeaturedbooksState {}
class FeaturedBooksLoading extends NewestfeaturedbooksState {}
class FeaturedBooksFailure extends NewestfeaturedbooksState {
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}
class FeatureBooksSucsses extends NewestfeaturedbooksState {
  final List<BookEntity> books ;

  FeatureBooksSucsses(this.books);
}
