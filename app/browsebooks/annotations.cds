using BookCatalogue as service from '../../srv/service';
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pages',
                Value : pages,
            },
            {
                $Type : 'UI.DataField',
                Label : 'length',
                Value : length,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'discountText',
                Value : discountText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'discountPercentage',
                Value : discountPercentage,
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
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Number of Pages',
            Value : pages,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Width of Spine',
            Value : length,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'BookCatalogue.addItemToOrder',
            Label : 'Add item to basket',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'BookCatalogue.EntityContainer/placeOrder',
            Label : 'Place Order',
        },
    ],
    UI.SelectionFields : [
        _author.currentAuthor,
    ],
);

annotate service.Books with {
    _author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : _author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstname',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastname',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dateOfBirth',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dateOfDeath',
            },
        ],
    }
};

annotate service.Books with {
    _genre @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Genres',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : _genre_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'genre',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
        ],
    }
};

annotate service.Authors with {
    currentAuthor @(
        Common.Label : 'Current Author',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Authors',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : currentAuthor,
                    ValueListProperty : 'currentAuthor',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'firstname',
                },
            ],
            Label : 'Is Author Alive?',
        },
        Common.ValueListWithFixedValues : true,
    )
};

