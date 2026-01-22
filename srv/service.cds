using {db} from '../db/db.cds';


// should not require specific role
// should only allow to palce orders on books
@readonly
service BookCatalogue {
    action placeOrder();
    entity Books as projection on db.Books
        actions  {
    action addItemToOrder(x: $self, qauntity @(sap.common.Label: 'Number of books'):Integer);
        };
    entity Authors as projection on db.Authors;
    entity Genres as projection on db.Genres;    
};

@readonly
service OrderOverview {
    entity OrderHeader as projection on db.OrderHeader
    actions {
        action cancelOrder (x: $self);
    };
    entity OrderItems as projection on db.OrderItems; 
}


service BookCatalogueInternal {
    entity Books as projection on db.Books
            actions {
            @(requires: ['admin','manager'])
            action fillStock(x: $self, AdditionalStock @(sap.common.Label: 'Additional Stock'): Integer);
            @(requires: ['admin','manager'])
            action setDiscount(x: $self, DiscountPercentage @(sap.common.Label: 'Discount Percentage'): Integer);
        };
    entity Authors as projection on db.Authors;
    entity Genres as projection on db.Genres;   
    
}

service OrderOverviewInternal {
    entity OrderHeader as projection on db.OrderHeader;
    entity OrderItems as projection on db.OrderItems; 
}

service AuthorOverviewInternal {
    entity Authors as projection on db.Authors;
}

service GenreOverviewInternal {
    entity Genres as projection on db.Genres;
}