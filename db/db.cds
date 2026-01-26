namespace db;

using {
    cuid,
    managed,
    Currency
} from '@sap/cds/common';

@odata.draft.enabled
@Capabilities.UpdateRestrictions.Updatable
entity Books : cuid, managed {
    @mandatory
    title              : String(50);
    stock              : Int16 default 0;
    description        : String(400);
    pages              : Int16;

    @readonly
    length             : Decimal(2, 2) = pages * 0.009; //calculated field on read
    price              : Decimal(9, 2);
    currency           : Currency default 'EUR';
    discountText       : String(50) default 'No discount';
    discountPercentage : UInt8 default 0;

    // valuehelps:
    @mandatory
    _author            : Association to one Authors;

    @mandatory
    _genre             : Association to one Genres;
}

@odata.draft.enabled
@Capabilities.UpdateRestrictions.Updatable
entity Authors : cuid, managed {
    @mandatory
    firstname     : String(70);
    lastname      : String(70);

    @mandatory
    @Common.Label: 'Date of Birth'
    dateOfBirth   : Date;

    @Common.Label: 'Died at: '
    dateOfDeath   : Date;
    description   : String(1000);

    @readonly
    virtual currentAuthor : Boolean;

    @readonly
    virtual age           : UInt8;
/*_books        : Association to many Books
                    on _books._author = $self;*/
}

@odata.draft.enabled
@Capabilities.UpdateRestrictions.Updatable
entity Genres : cuid, managed {
    @mandatory
    genre       : String(50);

    @mandatory
    description : String(100);
/*_books      : Association to many Books
                  on _books._genre = $self;*/
}

@odata.draft.enabled
@Capabilities.UpdateRestrictions.Updatable
entity OrderHeader : cuid, managed {
    @assert.notNull
    @readonly
    idNumber      : Integer;

    @assert.notNull
    @readonly
    netAmount     : Decimal(9, 2);

    @assert.notNull
    @readonly
    deliveryDate  : Date;

    @readonly
    numberOfItems : UInt8 default 0;

    _orderItems   : Composition of many OrderItems
                        on _orderItems._parent = $self;
}

entity OrderItems : cuid {
    _parent  : Association to OrderHeader;

    @mandatory
    _books   : Association to one Books;

    @mandatory
    quantity : UInt8 default 0;
}
