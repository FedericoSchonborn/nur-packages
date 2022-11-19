{
  stdenv,
  fetchFromGitLab,
  cmake,
  extra-cmake-modules,
  kdbusaddons,
  kitemmodels,
  knotifications,
  kwindowsystem,
  qqc2-desktop-style,
  qtkeychain,
  qtmultimedia,
  qtquickcontrols2,
  qtwebsockets,
  wrapQtAppsHook,
  ...
}:
stdenv.mkDerivation {
  pname = "tokodon";
  version = "22.09";

  src = fetchFromGitLab {
    domain = "invent.kde.org";
    owner = "network";
    repo = "tokodon";
    rev = "v22.09";
    sha256 = "wHE8HPnjXd+5UG5WEMd7+m1hu2G3XHq/eVQNznvS/zc=";
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
