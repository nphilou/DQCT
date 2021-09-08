{ lib
, buildPythonPackage
, fetchPypi
, unicodecsv
, jsonschema
, rfc3986
, cached-property
, requests
, click
, callPackage
, isodate
}:

let
  tabulator = callPackage ./tabulator.nix {};
in
buildPythonPackage rec {
  pname = "tableschema";
  version = "1.20.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "cfa3b0aa1c0941002384c6288794f9488cb5ea9188cf84ac700d17758cb036e7";
  };

  propagatedBuildInputs = [
    unicodecsv
    jsonschema
    rfc3986
    cached-property
    requests
    click
    tabulator
    isodate
  ];

  doCheck = false;
}