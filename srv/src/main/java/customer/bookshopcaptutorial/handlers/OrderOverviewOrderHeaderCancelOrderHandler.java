package customer.bookshopcaptutorial.handlers;

import cds.gen.orderoverview.OrderHeaderCancelOrderContext;
import cds.gen.orderoverview.OrderOverview_;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import org.springframework.stereotype.Component;

@Component
@ServiceName(OrderOverview_.CDS_NAME)
public class OrderOverviewOrderHeaderCancelOrderHandler implements EventHandler {
  @On
  public void handleCancelOrder(OrderHeaderCancelOrderContext context) {
    // Your code goes here
    context.setCompleted();
  }
}
