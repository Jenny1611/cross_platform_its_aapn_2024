import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'form.model.g.dart';

@riverpod
FormGroup formModel(FormModelRef ref) {
  final model = FormGroup({
    'comment': FormControl<String>(validators: [
      const RequiredValidator(),
      const MinLengthValidator(20)
    ]),
  });

  return model;
}
