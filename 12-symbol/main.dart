import 'dart:mirrors';
import 'foo_lib.dart';

void main(List<String> args) {
  Symbol lib = new Symbol("foo_lib");
  Symbol classToSearch = new Symbol("Foo");
  if (checkIfClassAvailableInLibrary(classToSearch, lib)) {
    print("Found class ${MirrorSystem.getName(classToSearch)} in library ${MirrorSystem.getName(lib)}...");
  }
}

bool checkIfClassAvailableInLibrary(Symbol className, Symbol libName) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libName);
  if (libMirror != null) {
    print("Find library ${MirrorSystem.getName(libName)}...");
    print("Number of classes found: ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print("Symbol: ${s}"));
    if (libMirror.declarations.containsKey(className)) {
      return true;
    }
  }
  return false;
}