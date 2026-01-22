sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"internal/bookcatalogueinternal/test/integration/pages/BooksList",
	"internal/bookcatalogueinternal/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('internal/bookcatalogueinternal') + '/test/flpSandbox.html#internalbookcatalogueinternal-tile',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

