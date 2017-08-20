package zemian.hello;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * Created by xbbj5x6 on 8/12/2017.
 */
public class Utils {
    public static DataSource getDataSource() throws NamingException {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup(Constants.JNDI_ROOT);
        DataSource result = (DataSource)envCtx.lookup(Constants.JNDI_DATASOURCE);
        return result;
    }
}
