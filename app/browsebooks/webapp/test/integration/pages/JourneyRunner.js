sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"external/browsebooks/test/integration/pages/BooksList",
	"external/browsebooks/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('external/browsebooks') + '/test/flpSandbox.html#externalbrowsebooks-tile',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

