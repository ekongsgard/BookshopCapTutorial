package customer.bookshopcaptutorial.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.authoroverviewinternal.Authors_;
import customer.bookshopcaptutorial.helpers.EntityAuthorsHelper;;

@Component
@ServiceName(Authors_.CDS_NAME)
public class AuthorOverviewInternalHandler {

    @Autowired
    private EntityAuthorsHelper authorsHelper;

    @After(event = CqnService.EVENT_READ, entity = Authors_.CDS_NAME)
    public void afterReadAuthors(CdsReadEventContext context) {
        authorsHelper.CalcAuthorAgeOnRead(context);
        authorsHelper.IsAuthorCurrentlyAlive(context);
    }
}
