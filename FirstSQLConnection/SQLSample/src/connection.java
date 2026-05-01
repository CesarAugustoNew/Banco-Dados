import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/sistemaescolar?useSSL=false&serverTimeZone=UTC";
        String user = "root";
        String pwd = "Senai@134";

        try {
            Connection conn = DriverManager.getConnection(url, user, pwd);
            System.out.println("Conectado com sucesso");
            conn.close();
        } catch (SQLException e) {
            System.out.println("Erro ao conectar com o banco de dados" + e.getMessage());
        }
    }
}
