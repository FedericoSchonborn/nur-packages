{stdenv, fetchFromGitLab, cmake, extra-cmake-modules, kdbusaddons, kitemmodels, knotifications, kwindowsystem, qqc2-desktop-style, qtkeychain, qtmultimedia, qtquickcontrols2, qtwebsockets, wrapQtAppsHook, ...}:

stdenv.mkDerivation {
  pname = "tokodon";
  version = "unstable-2022-11-19";

  src = fetchFromGitLab {
    domain = "invent.kde.org";
    owner = "network";
    repo = "tokodon";
    rev ="737b6c1f8f5cf2c6b13440cebb831976b965d167";
    sha256 = "G6Kh+YUOXGPB0GuwXtlZwbeyyKIkua/8MZQkIvWq1d0=";
  };

  nativeBuildInputs = [
  cmake
  extra-cmake-modules
    wrapQtAppsHook
  ];

  buildInputs = [
  kdbusaddons
  kitemmodels
  knotifications
  kwindowsystem
  qqc2-desktop-style
  qtkeychain
  qtmultimedia
  qtquickcontrols2
  qtwebsockets
  ];
}
