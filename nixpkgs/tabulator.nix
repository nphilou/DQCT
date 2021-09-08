{ lib
, buildPythonPackage
, fetchPypi
, click
, openpyxl
, unicodecsv
, xlrd
, boto3
, chardet
, ijson
, sqlalchemy
, six
, jsonlines
, requests
}:

let
  linear-tsv = buildPythonPackage rec {
    pname   = "linear-tsv";
    version = "1.1.0";

    src = fetchPypi {
      inherit pname version;
      sha256 = "b504d78f4075615ae75de86a16e5680701a441fc84da2a2cf9f94351ab1ccbf5";
    };

    propagatedBuildInputs = [ six ];
    doCheck = false;
  };
in
buildPythonPackage rec {
  pname = "tabulator";
  version = "1.53.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0e2887d0b36483a292e75b118d7f03e710c1337435553b5f62d2a7a891b7fe55";
  };

  propagatedBuildInputs = [
    click
    openpyxl
    unicodecsv
    xlrd
    boto3
    chardet
    ijson
    sqlalchemy
    linear-tsv
    jsonlines
    requests
  ];

  doCheck = false;
}