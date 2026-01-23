sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"internal/orderoverview/test/integration/pages/OrderHeaderList",
	"internal/orderoverview/test/integration/pages/OrderHeaderObjectPage"
], function (JourneyRunner, OrderHeaderList, OrderHeaderObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('internal/orderoverview') + '/test/flpSandbox.html#internalorderoverview-tile',
        pages: {
			onTheOrderHeaderList: OrderHeaderList,
			onTheOrderHeaderObjectPage: OrderHeaderObjectPage
        },
        async: true
    });

    return runner;
});

