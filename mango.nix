{ lib, stdenv, meson, ninja, pkg-config, wayland-protocols, wayland-scanner, libxkbcommon, wayland, pixman, libxcb, pcre2, libxcb-wm, libx11, wlroots_0_19, scenefx, libinput, mesa, seatd, cjson, libdrm, libdisplay-info, libliftoff, xwayland, libGL, pango, cairo }:

stdenv.mkDerivation rec {
  pname = "mango";
  version = "local-fork";
  src = ./. + "";

  nativeBuildInputs = [ 
    meson 
    ninja 
    pkg-config 
    wayland-protocols 
    wayland-scanner
  ];

  buildInputs = [
    libxkbcommon
    wayland
    pixman
    libxcb
    pcre2
    libxcb-wm
    libx11
    wlroots_0_19
    scenefx
    libinput
    mesa
    seatd
    cjson
    libdrm
    libdisplay-info
    libliftoff
    xwayland
    libGL
    pango
    cairo
  ];

  passthru.providedSessions = [ "mango" ];

  meta = with lib; {
    description = "Practical and Powerful wayland compositor";
    homepage = "https://github.com/beamyyl/mangowm";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
