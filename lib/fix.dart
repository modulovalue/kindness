import 'functor.dart';
import 'kind.dart';
import 'witness.dart';

abstract class ForFix implements Witness {}

extension KindFixFix<W extends ForFix, F extends ForFunctor> on Kind<W, F> {
  Fix<W, F> get DFix => this as Fix<W, F>;

  Kind<F, Fix<W, F>> get unfix => DFix.unfix;
}

typedef Fix$<F extends ForFunctor> = Fix<ForFix, F>;

abstract class Fix<F extends ForFix, A extends ForFunctor> implements Kind<F, A> {
  Kind<A, Fix<F, A>> get unfix;
}
