import 'package:mobx/mobx.dart';
import 'package:mobx_study/models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null &&
        validateEmail() == null &&
        validateCpf() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'name is required';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'email is required';
    }
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return 'cpf is required';
    }
    return null;
  }
}
