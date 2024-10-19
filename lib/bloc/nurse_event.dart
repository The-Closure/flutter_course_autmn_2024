part of 'nurse_bloc.dart';

@immutable
sealed class NurseEvent {}

class GetOneNurse extends NurseEvent {}

class GetAllNurse extends NurseEvent {}

class UpdateNurse extends NurseEvent {}

class CreateNurse extends NurseEvent {}

class DeleteNurse extends NurseEvent {}
