using from './service.cds';
/*
annotate BookCatalogueInternal with @(requires: ['clerk','admin','manager'] );

annotate  BookCatalogueInternal.Books with @(restrict: [
    { grant: '*', to: 'admin'},
    { grant: 'DELETE', to: 'clerk', where: (createdBy = $user)},
    ]);

annotate BookCatalogueInternal.Authors with     @(restrict:[
        {grant: '*', to: 'admin'},
        {grant: 'READ', to: 'clerk'},
        {grant: 'READ', to: 'manager'},
    ]);

annotate BookCatalogueInternal.Genres with     @(restrict:[
        {grant: '*', to: 'admin'},
        {grant: 'READ', to: 'clerk'},
        {grant: 'READ', to: 'manager'},
    ]);

annotate OrderOverviewInternal with @(requires: ['clerk','admin','manager'] );

annotate  AuthorOverviewInternal with @(requires: ['clerk','admin','manager'] );

annotate GenreOverviewInternal with @(requires: ['clerk','admin','manager'] ); 
*/