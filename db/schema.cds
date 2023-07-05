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

aspect Holes : cuid {
  holeNumber: Integer @assert.range: [1,18];
  shots : Composition of many Shots;
  @assert.range
  par : Integer enum {
    Three = 3;
    Four = 4;
    Five = 5;
  };
  score : Integer;
}

entity Quality : sap.common.CodeList {
  key code : String(10)
}

type quality : Association to Quality;
aspect Shots : cuid {
 @assert.range
 quality: quality;
 distance: Integer;
}