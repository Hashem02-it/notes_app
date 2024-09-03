part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSucsess extends NotesState {
  final List<NoteModel> notes;

  NotesSucsess(this.notes);
}

final class Notesfailure extends NotesState {
  final String errMessage;

  Notesfailure(this.errMessage);
}
