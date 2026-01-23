package customer.bookshopcaptutorial.handlers;

import cds.gen.bookcatalogue.BookCatalogue_;
import cds.gen.bookcatalogue.PlaceOrderContext;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import org.springframework.stereotype.Component;

@Component
@ServiceName(BookCatalogue_.CDS_NAME)
public class BookCataloguePlaceOrderHandler implements EventHandler {
  @On
  public void handlePlaceOrder(PlaceOrderContext context) {
    // Your code goes here
    context.setCompleted();
  }
}
