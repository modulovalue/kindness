import 'functor.dart';
import 'kind.dart';

abstract class ForApplicative implements ForFunctor {}

extension KindApplicativeFix<F extends ForApplicative, A> on Kind<F, A> {
  Applicative<F, A> get DApplicative => this as Applicative<F, A>;

  Kind<F, A> pure(
    final A a,
  ) =>
      DApplicative.pure(a);

  Kind<F, C> ap<C>(
    final Kind<F, C Function(A)> f,
  ) =>
      DApplicative.ap(f);
}

typedef Applicative$<A> = Applicative<ForApplicative, A>;

abstract class Applicative<F extends ForApplicative, A> implements Functor<F, A> {
  Kind<F, A> pure(
    final A a,
  );

  Kind<F, C> ap<C>(
    final Kind<F, C Function(A)> f,
  );
}
