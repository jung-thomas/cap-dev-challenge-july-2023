using CatalogService as cs from './cat-service';

annotate cs.Quality with @( // header-level annotations
    // ---------------------------------------------------------------------------
    // List Report
    // ---------------------------------------------------------------------------
    // Quality List
    UI       : {
        PresentationVariant: {
            SortOrder     : [{Property: code}],
            Visualizations: ['@UI.LineItem']
        },
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
        HeaderInfo         : {
            Title         : {
                $Type: 'UI.DataField',
                Value: code,
            },
            TypeName      : '{i18n>Quality}',
            TypeNamePlural: '{i18n>Quality}',
            Description   : {Value: code}
        },
        FieldGroup #Details: {Data: [
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
            Target: 'texts/@UI.PresentationVariant'
        }
    ]
);

annotate cs.Quality.texts with @( // header-level annotations
UI: {
    PresentationVariant: {
        SortOrder     : [
            {Property: code},
            {Property: locale}
        ],
        Visualizations: ['@UI.LineItem']
    },
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
    SelectionFields    : [
        code,
        locale,
        name,
        descr
    ]
});
