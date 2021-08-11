package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ConnectionUtil {
    public static final String URL = "jdbc:mysql://remotemysql.com:3306/YjHJrupVFh";
    public static final String USERNAME = "YjHJrupVFh";
    public static final String PASSWORD = "ykAkxAT1Ii";
    public static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final Logger log = LogManager.getLogger(ConnectionUtil.class);

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            log.error("Can't find SQL Driver", e);
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        try {
            return DriverManager.getConnection(URL, dbProperties);
        } catch (SQLException e) {
            log.error("Can't create connection to DB ", e);
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
