Guidelines for new types:

File must exist at the root of the lib directory.

0. Imports,
Relative.
Don't import kindness.dart.

1. Witness
The name of the witness starts with 'For'.
The rest of the name after 'For' is that
types interface name.
A witness can only implement other witnesses.

2. Extension
The name starts with 'Kind' after which the
name of the interface followed. It ends with
'Fix'.
It extends Kind with an uninstantiated kind
type argument and an uninstantiated type argument.
The extension contains a fix getter that
casts its object to the target interface.
The name of that getter starts with D followed
by the name of the interface.
The extension redirects all operations of the
interface.

3. Kindignoretypedef
A typedef that is named after the interface
with a trailing dollar.
Its type parameters are a copy of the type
parameters of the interface except that the
kind is explicitly instantiated to the upper
bound.

4. Interface
An abstract class (an interface with no behavior).
