import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(78, 83, 13, 25, 12);
  assert(Policy.score(signalcase_1) == 74);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(88, 86, 27, 25, 11);
  assert(Policy.score(signalcase_2) == 66);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(79, 93, 18, 16, 12);
  assert(Policy.score(signalcase_3) == 139);
  assert(Policy.classify(signalcase_3) == 'review');
}
