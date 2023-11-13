import 'package:bloc_demo/rotate_bloc/rotate_event.dart';
import 'package:bloc_demo/rotate_bloc/rotate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RotateBloc extends Bloc<RotateEvent, RotateState>{
  RotateBloc(): super(RotateState(angle: 0)){
    on<RotateEvent>((event, emit) {
      // Xử lý sự kiện RotateEvent ở đây
      // Ví dụ: Cập nhật trạng thái dựa trên giá trị event.angle
      double newAngle = event.angle + state.angle;
      print(newAngle);
      emit(RotateState(angle: newAngle));
    });
  }

}