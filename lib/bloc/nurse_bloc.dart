import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/nurse_model.dart';
import '../service/nurse_service.dart';

part 'nurse_event.dart';
part 'nurse_state.dart';

class NurseBloc extends Bloc<NurseEvent, NurseState> {
  NurseBloc() : super(NurseInitial()) {
    on<NurseEvent>((event, emit) async{
      if (event is GetOneNurse) {
        NurseModel nurse = await NurseService().getOneNurse();
        
      } else if (event is GetAllNurse) {
      } else if (event is CreateNurse) {
      } else if (event is DeleteNurse) {
      } else if (event is UpdateNurse) {

      }
    });
  }
}
