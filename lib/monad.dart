import 'applicative.dart';
import 'kind.dart';

abstract class ForMonad implements ForApplicative {}

extension KindMonadFix<F extends ForMonad, A> on Kind<F, A> {
  Monad<F, A> get DMonad => this as Monad<F, A>;

  Kind<F, B> bind<B>(
    final Kind<F, B> Function(A) f,
  ) =>
      DMonad.bind<B>(
        f,
      );
}

typedef Monad$<A> = Monad<ForMonad, A>;

abstract class Monad<F extends ForMonad, A> implements Applicative<F, A> {
  Kind<F, C> bind<C>(
    final Kind<F, C> Function(A) f,
  );
}
