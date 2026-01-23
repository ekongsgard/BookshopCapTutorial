package customer.bookshopcaptutorial.handlers;

import cds.gen.bookcatalogueinternal.BookCatalogueInternal_;
import cds.gen.bookcatalogueinternal.BooksSetDiscountContext;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import org.springframework.stereotype.Component;

@Component
@ServiceName(BookCatalogueInternal_.CDS_NAME)
public class BookCatalogueInternalBooksSetDiscountHandler implements EventHandler {
  @On
  public void handleSetDiscount(BooksSetDiscountContext context) {
    // Your code goes here
    context.setCompleted();
  }
}
