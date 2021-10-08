{ lib
, buildPythonPackage
, callPackage
, pytest
, pandas
, pydicom
, jinja2
, weasyprint
, click
, nltk
, openpyxl
, tkinter
}:

let
  tabulator = callPackage ./tabulator.nix {};
  tableschema = callPackage ./tableschema.nix {};
in
buildPythonPackage rec {
  pname = "dqct";
  version = "3.0";

  doCheck = false;

  src = ../.;

  propagatedBuildInputs = [
    pytest
    pandas
    pydicom
    jinja2
    weasyprint
    click
    nltk
    openpyxl
    tabulator
    tableschema
    tkinter
  ];
}
