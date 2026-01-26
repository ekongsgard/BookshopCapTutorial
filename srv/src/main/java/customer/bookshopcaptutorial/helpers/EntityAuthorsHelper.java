package customer.bookshopcaptutorial.helpers;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sap.cds.Result;
import com.sap.cds.Row;
import com.sap.cds.services.cds.CdsReadEventContext;

import cds.gen.db.Authors;

@Component
public class EntityAuthorsHelper {

    public void CalcAuthorAgeOnRead(CdsReadEventContext context) {
        Authors author = null;
        LocalDate today = LocalDate.now();
        Result result = context.getResult();
        List<Row> Rows = result.list();
        for (Row row : Rows) {
            if (row != null) {
                try {
                author = row.as(Authors.class);
                } catch (ClassCastException e) {
                    continue;
                }
                if (author.getDateOfDeath() == null) {
                    int age = today.getYear() - author.getDateOfBirth().getYear();
                    author.setAge((short) age);
                } else {
                    int age = author.getDateOfDeath().getYear() - author.getDateOfBirth().getYear();
                    author.setAge((short) age);
                }
            };
        }
    }

    public void IsAuthorCurrentlyAlive(CdsReadEventContext context) {
        Authors author = null;
        Result result = context.getResult();
        List<Row> Rows = result.list();
        for (Row row : Rows) {
            if (row != null) {
                try {
                author = row.as(Authors.class);
                } catch (ClassCastException e) {
                    continue;
                }
                if (author.getDateOfDeath() == null) {
                    author.setCurrentAuthor(true);
                } else {
                    author.setCurrentAuthor(false);
                }
            };
        }
    }

}
