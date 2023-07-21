using {
  managed,
  sap,
  cuid
} from '@sap/cds/common';
using from '@sap/cds-common-content';

namespace golf;

entity Rounds : cuid, managed {
  title : String(111);
  holes : Composition of many Holes;
}

entity Result : sap.common.CodeList {
  key code : Integer;
}

annotate Result with @(
  title             : '{i18n>Result}',
  Common.Label      : '{i18n>Result}',
  cds.odata.valuelist,
  Common.SemanticKey: [name],
  UI.Identification : [{
    $Type: 'UI.DataField',
    Value: name

  }]
) {
  code  @(
    Common.Text           : name,
    title                 : '{i18n>Result}',
    Common.ValueList      : {
      CollectionPath: 'Result',
      Parameters    : [
        {
          $Type            : 'Common.ValueListParameterInOut',
          LocalDataProperty: 'code',
          ValueListProperty: 'code'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'name'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'descr'
        }
      ]
    }
  );
  name  @(title: '{i18n>ResultDesc}');
  descr @(title: '{i18n>ResultLongDesc}');
}

@assert.target
type result  : Association to Result;

aspect Holes : cuid {
  holeNumber : Integer @assert.range: [
    1,
    18
  ];
  shots      : Composition of many Shots;
  par        : Integer @assert.range: [
    3,
    5
  ];

  @Core.Computed
  @readonly
  score      : Integer;
  result     : result;
}

entity Quality : sap.common.CodeList {
  key code : String(10)
}

annotate Quality with @(
  title             : '{i18n>Quality}',
  Common.Label      : '{i18n>Quality}',
  cds.odata.valuelist,
  Common.SemanticKey: [name],
  UI.Identification : [{
    $Type: 'UI.DataField',
    Value: name

  }]
) {
  code  @(
    Common.Text           : name,
    title                 : '{i18n>Quality}',
    Common.ValueList      : {
      CollectionPath: 'Quality',
      Parameters    : [
        {
          $Type            : 'Common.ValueListParameterInOut',
          LocalDataProperty: 'code',
          ValueListProperty: 'code'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'name'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'descr'
        }
      ]
    }
  );
  name  @(title: '{i18n>QualityDesc}');
  descr @(title: '{i18n>QualityLongDesc}');
}

@assert.target
type quality : Association to Quality;


aspect Shots : cuid {
  quality  : quality;
  distance : Integer @assert.range: [
    0,
    800
  ];
}
