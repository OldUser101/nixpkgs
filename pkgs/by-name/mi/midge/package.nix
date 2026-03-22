{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  paho-mqtt-c,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "midge";
  version = "0.1";

  src = fetchFromGitHub {
    owner = "systemetric";
    repo = "midge";
    tag = "v${finalAttrs.version}";
    hash = "sha256-y2PdKAB+8EmZP1dMGYMUbXXJORRZr8Rmgrar1HhiGLs=";
  };

  nativeBuildInputs = [
    cmake
    paho-mqtt-c
  ];

  meta = {
    description = "MQTT helper tool";
    homepage = "https://github.com/systemetric/midge";
    maintainers = with lib.maintainers; [ olduser101 ];
    license = lib.licenses.bsd2;
  };
})
