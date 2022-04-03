import 'kind.dart';
import 'witness.dart';

abstract class ForFunctor implements Witness {}

extension KindFunctorFix<F extends ForFunctor, A> on Kind<F, A> {
  Functor<F, A> get DFunctor => this as Functor<F, A>;

  Kind<F, B> fmap<B>(
    final B Function(A) f,
  ) =>
      DFunctor.fmap<B>(f);
}

typedef Functor$<A> = Functor<ForFunctor, A>;

abstract class Functor<F extends ForFunctor, A> implements Kind<F, A> {
  Kind<F, C> fmap<C>(
    final C Function(A) f,
  );
}
