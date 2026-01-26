package customer.bookshopcaptutorial.handlers;

import cds.gen.bookcatalogueinternal.Authors_;
import cds.gen.bookcatalogueinternal.BookCatalogueInternal_;
import cds.gen.bookcatalogueinternal.BooksFillStockContext;
import cds.gen.bookcatalogueinternal.BooksSetDiscountContext;
import customer.bookshopcaptutorial.helpers.EntityAuthorsHelper;

import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@ServiceName(BookCatalogueInternal_.CDS_NAME)
public class BookCatalogueInternalHandler implements EventHandler {
  @Autowired
  private EntityAuthorsHelper authorsHelper;

  @On
  public void handleFillStock(BooksFillStockContext context) {
    // Your code goes here
    context.setCompleted();
  }

    @On
  public void handleSetDiscount(BooksSetDiscountContext context) {
    // Your code goes here
    context.setCompleted();
  }

  @After(event = CqnService.EVENT_READ, entity = Authors_.CDS_NAME)
  public void afterReadAuthors(CdsReadEventContext context) {
    authorsHelper.CalcAuthorAgeOnRead(context);
    authorsHelper.IsAuthorCurrentlyAlive(context);
  }
}
