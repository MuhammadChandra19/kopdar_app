class Path {
  Path._();
  static final Path _instance = Path._();
  factory Path() {
    return _instance;
  }

  List<String> _paths = [];

  String now() => _paths.last;

  Map<String, String> _pathNames = {};

  registerNames(Map<String, String> pathNames) => _pathNames = pathNames;

  String root() => _paths.first;

  String current() => _paths.last;

  String currentName() => _pathNames[_paths.last] ?? "Undefined";

  String name(String path) => _pathNames[path] ?? "Undefined";

  flush() {
    _paths.clear();
  }

  bool isEmpty() => _paths.isEmpty;

  int depth() => _paths.length;

  bool hasPath(String path) => _paths.contains(path);

  int position(String path) => _paths.lastIndexOf(path);

  List<String> getPaths() => _paths;

  push(String path) {
    _paths.add(path);
  }

  String pop() => _paths.removeLast();

  bool popUntil(String path) {
    bool isSuccess = false;
    if (hasPath(path)) {
      int idx = position(path);
      if (idx != -1) {
        _paths.removeRange(idx + 1, _paths.length);
        isSuccess = true;
      }
    }
    // Log.info('Spot', 'Pop until is success: $isSuccess');
    return isSuccess;
  }

  bool popUntilThenPush(String path, String newPath) {
    bool isSuccess = popUntil(path);
    if (isSuccess) push(newPath);
    return isSuccess;
  }
}
