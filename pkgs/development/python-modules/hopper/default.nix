{
  lib,
  fetchFromGitHub,
  buildPythonPackage,
  setuptools,
}:
buildPythonPackage rec {
  pname = "hopper";
  version = "0.1.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "systemetric";
    repo = "hopper";
    tag = "v${version}";
    hash = "sha256-9j3M1CLj3au7CGSySoqawSmcFl1PhHgkssx0If3U53c=";
  };

  build-system = [ setuptools ];

  meta = {
    description = "Python Hopper IPC client library";
    homepage = "https://github.com/systemetric/hopper";
    maintainers = with lib.maintainers; [ olduser101 ];
    license = lib.licenses.bsd2;
    platforms = lib.platforms.linux;
  };
}
