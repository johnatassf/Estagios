package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.ConnectionFactory;
import br.com.fatecpg.model.Estagiario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class EstagiarioDAO {

    private Connection connection;

    public EstagiarioDAO() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void insert(Estagiario estagiario) {
        String sql = "INSERT INTO ESTAGIARIO"
                + "   (NOME, DATA_INICIO, DATA_TERMINO)"
                + "   (?,?,?) ";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, estagiario.getNome());
            stmt.setString(2, estagiario.getDataInicio().toString());
            stmt.setString(3, estagiario.getDataFim().toString());

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public void update(Estagiario estagiario) {
        String sql = "UPDATE ESTAGIARIO SET"
                + "          (NOME = ?, DATA_INICIO =?, DATA_TERMINO =?)"
                + "    WHERE ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, estagiario.getNome());
            stmt.setString(2, estagiario.getDataInicio().toString());
            stmt.setString(3, estagiario.getDataFim().toString());
            stmt.setInt(4, estagiario.getId());

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public ArrayList<Estagiario> listarEstagiarios() {
        String sql = "SELECT "
                + " ID,"
                + " NOME,"
                + " DATA_INICIO,"
                + " DATA_TERMINO "
                + " FROM ESTAGIARIO";
        try {

            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            ArrayList<Estagiario> estagiarios = new ArrayList<>();

            while (rs.next()) {
                Estagiario estagiario = new Estagiario();
                estagiario.setId(rs.getInt("ID"));
                estagiario.setNome(rs.getString("NOME"));
                estagiario.setDataFim(rs.getDate("DATA_INICIO"));
                estagiario.setDataInicio(rs.getDate("DATA_TERMINO"));
                estagiarios.add(estagiario);
            }
            rs.close();
            stmt.close();
            return estagiarios;
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public void delete(int idEstagiario) {
        String sql = "DELETE ESTAGIARIO WHERE "
                + "    ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setInt(1, idEstagiario);

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public ArrayList<Estagiario> getAll() {
        ArrayList<Estagiario> estagiarios = new ArrayList<>();

        Estagiario a1 = new Estagiario();
        a1.setNome("Rafael");
        a1.setDataInicio(new Date());
        a1.setDataFim(new Date());

        estagiarios.add(a1);

        return estagiarios;
    }

    public Estagiario getEstagiarioById(int id) {
        Estagiario a1 = new Estagiario();
        a1.setNome("Rafael");
        a1.setDataInicio(new Date());
        a1.setDataFim(new Date());

        return a1;
    }
}
