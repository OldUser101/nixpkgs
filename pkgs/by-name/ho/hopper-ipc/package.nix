{
  lib,
  stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  pkg-config,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "hopper-ipc";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "systemetric";
    repo = "hopper";
    tag = "v${finalAttrs.version}";
    hash = "sha256-9j3M1CLj3au7CGSySoqawSmcFl1PhHgkssx0If3U53c=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
  ];

  meta = {
    description = "Hopper IPC system";
    homepage = "https://github.com/systemetric/hopper";
    maintainers = with lib.maintainers; [ olduser101 ];
    license = lib.licenses.bsd2;
    platforms = lib.platforms.linux;
  };
})
