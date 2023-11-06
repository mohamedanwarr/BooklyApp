import 'package:bookyapp/Features/home/presentation/viewes/widgets/BestSellerListView.dart';
import 'package:bookyapp/presentaion/newest_bokks_cubit/newestfeaturedbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BestSellerListBlocBuilder extends StatelessWidget {
  const BestSellerListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestfeaturedbooksCubit, NewestfeaturedbooksState>(
      builder: (context, state) {
        if(state is FeatureBooksSucsses){
          return BestSellerListViwe(books:state.books,);
        }else if(state is FeaturedBooksFailure){
          return Text(state.errorMessage);
        }
        return CircularProgressIndicator();
      },
    );
  }
}
