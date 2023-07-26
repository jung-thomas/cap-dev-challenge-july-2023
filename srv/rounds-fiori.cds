using CatalogService as cs from './cat-service';
using golf.Holes from '../db/schema';
using golf.Shots from '../db/schema';
using golf.Round2People from '../db/schema';

annotate cs.Rounds with @( // header-level annotations
    // ---------------------------------------------------------------------------
    // List Report
    // ---------------------------------------------------------------------------
    // Result List
    UI       : {
        PresentationVariant: {
            SortOrder     : [{Property: title}],
            Visualizations: ['@UI.LineItem']
        },
        LineItem           : [
            {
                $Type            : 'UI.DataField',
                Value            : title,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : createdAt,
                ![@UI.Importance]: #Medium
            },
            {
                $Type            : 'UI.DataField',
                Value            : createdBy,
                ![@UI.Importance]: #Medium
            },
            {
                $Type            : 'UI.DataField',
                Value            : modifiedAt,
                ![@UI.Importance]: #Low
            },
            {
                $Type            : 'UI.DataField',
                Value            : modifiedBy,
                ![@UI.Importance]: #Low
            }

        ],
        SelectionFields    : [
            title,
            createdAt,
            createdBy,
            modifiedAt,
            modifiedBy
        ]
    },
    // ---------------------------------------------------------------------------
    // Object Page
    // ---------------------------------------------------------------------------
    // Page Header
    UI       : {
        HeaderInfo             : {
            Title         : {
                $Type: 'UI.DataField',
                Value: title,
            },
            TypeName      : '{i18n>Round}',
            TypeNamePlural: '{i18n>Rounds}'
        },
        HeaderFacets           : [{
            $Type            : 'UI.ReferenceFacet',
            Target           : '@UI.FieldGroup#Admin',
            ![@UI.Importance]: #Medium
        }],
        FieldGroup #Description: {Data: [{
            $Type: 'UI.DataField',
            Value: title
        }, ]},
        FieldGroup #Details    : {Data: [{
            $Type: 'UI.DataField',
            Value: title,
        }]},
        FieldGroup #Admin      : {Data: [
            {
                $Type: 'UI.DataField',
                Value: createdBy
            },
            {
                $Type: 'UI.DataField',
                Value: createdAt
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt
            }
        ]}
    },
    // Page Facets
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'Details',
            Label : '{i18n>details}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>details}',
                Target: '@UI.FieldGroup#Details'
            }]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>holes}',
            Target: 'holes/@UI.PresentationVariant'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>players}',
            Target: 'players/@UI.PresentationVariant'
        }
    ]
);

annotate Holes with @( // header-level annotations
    UI       : {
        PresentationVariant: {
            SortOrder     : [{Property: holeNumber}],
            Visualizations: ['@UI.LineItem']
        },
        LineItem           : [
            {
                $Type            : 'UI.DataField',
                Value            : holeNumber,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : par,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : score,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : result.name,
                ![@UI.Importance]: #High
            }
        ],
        SelectionFields    : [
            holeNumber,
            result_code
        ]
    },
    UI       : {
        HeaderInfo             : {
            Title         : {
                $Type: 'UI.DataField',
                Value: holeNumber,
            },
            TypeName      : '{i18n>hole}',
            TypeNamePlural: '{i18n>holes}'
        },
        FieldGroup #Description: {Data: [{
            $Type: 'UI.DataField',
            Value: holeNumber
        }, ]},
        FieldGroup #Details    : {Data: [{
            $Type: 'UI.DataField',
            Value: par,
        },{
            $Type: 'UI.DataField',
            Value: score,
        },{
            $Type: 'UI.DataField',
            Value: result.name,
        }]}         
    },
    // Page Facets
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'Details',
            Label : '{i18n>details}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>details}',
                Target: '@UI.FieldGroup#Details'
            }]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>shots}',
            Target: 'shots/@UI.PresentationVariant'
        }
    ]
);


annotate Round2People with @( // header-level annotations
    UI       : {
        PresentationVariant: {
            SortOrder     : [{Property: people_name}],
            Visualizations: ['@UI.LineItem']
        },
        LineItem           : [
            {
                $Type            : 'UI.DataField',
                Value            : round_ID,
                ![@UI.Importance]: #High
            },
            {
                $Type            : 'UI.DataField',
                Value            : people_name,
                ![@UI.Importance]: #High
            }
        ],
        SelectionFields    : [
            round_ID,
            people_name
        ]
    },
    UI       : {
        HeaderInfo             : {
            Title         : {
                $Type: 'UI.DataField',
                Value: people_name,
            },
            TypeName      : '{i18n>player}',
            TypeNamePlural: '{i18n>players}'
        },
        FieldGroup #Description: {Data: [{
            $Type: 'UI.DataField',
            Value: people_name
        }, ]},
        FieldGroup #Details    : {Data: [{
            $Type: 'UI.DataField',
            Value: round_ID,
        },{
            $Type: 'UI.DataField',
            Value: people_name,
        }]}         
    },
    // Page Facets
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'Details',
            Label : '{i18n>details}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>details}',
                Target: '@UI.FieldGroup#Details'
            }]
        }
    ]
);


annotate Shots with @( // header-level annotations
UI: {
    PresentationVariant: {
        SortOrder     : [{Property: ID}],
        Visualizations: ['@UI.LineItem']
    },
    LineItem           : [
        {
            $Type            : 'UI.DataField',
            Value            : distance,
            ![@UI.Importance]: #High
        },
        {
            $Type            : 'UI.DataField',
            Value            : quality.name,
            ![@UI.Importance]: #High
        }
    ],
    SelectionFields    : [
        quality_code,
        distance
    ]
});
