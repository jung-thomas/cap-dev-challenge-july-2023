using {
    managed,
    sap,
    cuid
} from '@sap/cds/common';

namespace golf;

entity Rounds : cuid, managed {
  title  : String(111);
  holes : Composition of many Holes;
}

entity Result : sap.common.CodeList {
  key code: Integer;
}

@assert.target
type result : Association to Result;

aspect Holes : cuid {
  holeNumber: Integer @assert.range: [1,18];
  shots : Composition of many Shots;
  par : Integer @assert.range: [3,5];
  @Core.Computed
  @readonly
  score : Integer;
  result: result;
}

entity Quality : sap.common.CodeList {
  key code : String(10)
}
@assert.target
type quality : Association to Quality;


aspect Shots : cuid {
 quality: quality;
 distance: Integer @assert.range: [0,800];
}