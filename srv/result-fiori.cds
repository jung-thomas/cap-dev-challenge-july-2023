using CatalogService as cs from './cat-service';

annotate cs.Result with @( // header-level annotations
    // ---------------------------------------------------------------------------
    // List Report
    // ---------------------------------------------------------------------------
    // Result List
    UI       : {
        LineItem           : [
            {
                $Type: 'UI.DataField',
                Value: code
            },
            {
                $Type            : 'UI.DataField',
                Value            : name,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : descr,
                ![@UI.Importance]: #High
            }
        ],
        PresentationVariant: {
            $Type    : 'UI.PresentationVariantType',
            SortOrder: [{Property: code}]
        },
        SelectionFields    : [
            code,
            name,
            descr
        ]
    },
    // ---------------------------------------------------------------------------
    // Object Page
    // ---------------------------------------------------------------------------
    // Page Header
    UI       : {
        HeaderInfo                    : {
            Title         : {
                $Type: 'UI.DataField',
                Value: code,
            },
            TypeName      : '{i18n>Result}',
            TypeNamePlural: '{i18n>Results}',
            Description   : {Value: code}
        },
        FieldGroup #Details           : {Data: [
            {
                $Type: 'UI.DataField',
                Value: code,
            },
            {
                $Type: 'UI.DataField',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Value: descr,
            }
        ]}
    },
    // Page Facets
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'TextDetails',
            Label : '{i18n>details}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>details}',
                Target: '@UI.FieldGroup#Details'
            }]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>localeDetails}',
            Target: 'texts/@UI.LineItem'
        }
    ]
);

annotate cs.Result.texts with @( // header-level annotations
       UI       : {
        LineItem           : [
            {
                $Type: 'UI.DataField',
                Value: code
            },
            {
                $Type            : 'UI.DataField',
                Value            : locale,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : name,
                ![@UI.Importance]: #High
            },
                        {
                $Type            : 'UI.DataField',
                Value            : descr,
                ![@UI.Importance]: #High
            }
        ],
        PresentationVariant: {
            $Type    : 'UI.PresentationVariantType',
            SortOrder: [{Property: code}]
        },
        SelectionFields    : [
            code,
            locale,
            name,
            descr
        ]
    }
);