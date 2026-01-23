using OrderOverviewInternal as service from '../../srv/service';
annotate service.OrderHeader with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'idNumber',
                Value : idNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'netAmount',
                Value : netAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryDate',
                Value : deliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'numberOfItems',
                Value : numberOfItems,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'idNumber',
            Value : idNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'netAmount',
            Value : netAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'deliveryDate',
            Value : deliveryDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'numberOfItems',
            Value : numberOfItems,
        },
    ],
);

