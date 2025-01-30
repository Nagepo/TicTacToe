import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe/riverpod_model.dart';

final ticProvider = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel();
});
