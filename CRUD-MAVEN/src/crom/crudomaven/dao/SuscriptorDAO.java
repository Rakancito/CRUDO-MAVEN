package crom.crudomaven.dao;

import java.sql.Connection;
//import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.crudomaven.conexion.conexion;
import org.crudomaven.model.suscriptor;

public class SuscriptorDAO {
	private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacion;


	// guardar producto
	public boolean guardar(suscriptor suscriptor) throws SQLException {
		String sql=null;
		estadoOperacion=false;
		connection=obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql="INSERT INTO suscriptor (nombre, ap_paterno, ap_materno, servicio, fecha_nacimiento, id_plan, status) VALUES(?,?,?,?,?,?,?)";
			statement=connection.prepareStatement(sql);
			
			statement.setString(1, suscriptor.getsName());
			statement.setString(2, suscriptor.getsLastName());
			statement.setString(3, suscriptor.getsSecondLastName());
			statement.setString(4, suscriptor.getsService());
			statement.setString(5, suscriptor.getDate());
			statement.setInt(6, suscriptor.getiPlan());
			statement.setInt(7, suscriptor.getiStatus());
			
			estadoOperacion=statement.executeUpdate()>0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacion;
	}
	
	// editar suscriptor
	public boolean editar(suscriptor suscriptor) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql = "UPDATE suscriptor SET nombre=?, ap_paterno=?, ap_materno=?, servicio=?, id_plan=?, status=? WHERE id=?";
			statement = connection.prepareStatement(sql);

			statement.setString(1, suscriptor.getsName());
			statement.setString(2, suscriptor.getsLastName());
			statement.setString(3, suscriptor.getsSecondLastName());
			statement.setString(4, suscriptor.getsService());
			statement.setInt(5, suscriptor.getiPlan());
			statement.setInt(6, suscriptor.getiStatus());
			statement.setInt(7, suscriptor.getId());

			estadoOperacion = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();

		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}

		return estadoOperacion;
	}

	// eliminar suscriptor
	public boolean eliminar(int idSuscriptor) throws SQLException  {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql = "DELETE FROM suscriptor WHERE id=?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idSuscriptor);

			estadoOperacion = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();

		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}

		return estadoOperacion;
	}

	// obtener lista de suscriptor
	public List<suscriptor> obtenerSuscriptores() throws SQLException {
		ResultSet resultSet = null;
		List<suscriptor> listaProductos = new ArrayList<suscriptor>();
		

		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();

		try {
			sql = "SELECT * FROM suscriptor";
			statement=connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			
			while (resultSet.next()) {
				suscriptor s=new suscriptor();
				s.setId(resultSet.getInt(1));
				s.setsName(resultSet.getString(2));
				s.setsLastName(resultSet.getString(3));
				s.setsSecondLastName(resultSet.getString(4));
				s.setsService(resultSet.getString(5));
				s.setDate(resultSet.getString(6));
				s.setiPlan(resultSet.getInt(7));
				s.setiStatus(resultSet.getInt(8));
				listaProductos.add(s);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaProductos;
	}

	// obtener lista de suscriptor
	public suscriptor obtenerSuscriptor(int idsuscriptor) throws SQLException {
		ResultSet resultSet = null;
		suscriptor s=new suscriptor();

		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();

		try {
			sql = "SELECT * FROM suscriptor WHERE id =?";
			statement=connection.prepareStatement(sql);
			statement.setInt(1, idsuscriptor);
			
			resultSet = statement.executeQuery();
			
			if(resultSet.next()) {				
				s.setId(resultSet.getInt(1));
				s.setsName(resultSet.getString(2));
				s.setsLastName(resultSet.getString(3));
				s.setsSecondLastName(resultSet.getString(4));
				s.setsService(resultSet.getString(5));
				s.setDate(resultSet.getString(6));
				s.setiPlan(resultSet.getInt(7));
				s.setiStatus(resultSet.getInt(8));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return s;
	}
	
	//obtener conexion pool
	private Connection obtenerConexion() throws SQLException {
		return conexion.getConnection();
	}	
	
}
