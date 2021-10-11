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
, fetchFromGitHub
}:

let
  tabulator = callPackage ./tabulator.nix {};
  tableschema = callPackage ./tableschema.nix {};
in
buildPythonPackage rec {
  pname = "DataQualityControlTool";
  version = "3.0";

  doCheck = false;

  src = fetchFromGitHub {
    owner = "HBPMedical";
    repo = pname;
    rev = "54d29aee2b54e61e94c5f2483961bf95e6977d90";
    sha256 = "1m0m3w20504w4kic1lxpvlnpanryjldhsy76pg2gpb0k4zcxwzpg";
  };

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
