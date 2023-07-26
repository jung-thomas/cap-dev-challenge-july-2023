using from './schema';

annotate golf.Rounds with @(
    title             : '{i18n>Round}',
    Common.Label      : '{i18n>Round}',
    cds.odata.valuelist,
    Common.SemanticKey: [title]
) {
    ID    @(Common.Text: title);
    players  @(title : '{i18n>players}');
    title @(
        title                          : '{i18n>title}',
        Common.ValueListWithFixedValues: false,
        Common.ValueList               : {
            CollectionPath: 'Rounds',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'title',
                ValueListProperty: 'title'
            }]
        }
    )
};

annotate golf.Round2People with {
    ID     @Core.Computed;    
    people @(
        Common.Text                     : people_name,
        Common.TextArrangement          : #TextOnly,
        title                           : '{i18n>players}',
        Common.ValueListWithFixedValues : false,
        Common.ValueList                : {
            CollectionPath : 'Players',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : 'people_name',
                    ValueListProperty : 'name'
                }
            ]
        }
    );
};

annotate golf.Holes with @(
    title             : '{i18n>holes}',
    Common.Label      : '{i18n>holes}',
    cds.odata.valuelist,
    Common.SemanticKey: [holeNumber]
) {
    holeNumber @(title: '{i18n>holeNumber}');
    par        @(title: '{i18n>par}');
    score      @(title: '{i18n>score}');
};

annotate golf.Shots with @(
    title             : '{i18n>shots}',
    Common.Label      : '{i18n>shots}',
    cds.odata.valuelist,
    Common.SemanticKey: [quality_code]
) {
    ID       @(Common.Text: quality_code);
    distance @(title: '{i18n>distance}');
};

annotate golf.Result with @(
    title             : '{i18n>Result}',
    Common.Label      : '{i18n>Result}',
    cds.odata.valuelist,
    Common.SemanticKey: [name]
) {
    code  @(
        Common.Text     : name,
        title           : '{i18n>Result}',
        Common.ValueList: {
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

annotate golf.Quality with @(
  title             : '{i18n>Quality}',
  Common.Label      : '{i18n>Quality}',
  cds.odata.valuelist,
  Common.SemanticKey: [name]
) {
  code  @(
    Common.Text     : name,
    title           : '{i18n>Quality}',
    Common.ValueList: {
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
