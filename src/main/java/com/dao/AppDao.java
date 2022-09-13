package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Container;

public class AppDao {

	public static Connection getConnection() {

		String url = "jdbc:mysql://localhost:3306/crudjava";
		String user = "root";
		String pass = "";
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			System.out.println("Conexão bem sucedida!");

		} catch (Exception e) {

			System.out.println(e);
		}

		return con;

	}

	public static List<Container> getAllContainerRecords() {
		List<Container> lista = new ArrayList<Container>();

		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement("select * from tblcontainer");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Container cont = new Container();

				cont.setCont_id(rs.getInt(1));
				cont.setCont_cliente(rs.getString(2));
				cont.setCont_num(rs.getString(3));
				cont.setCont_tipo(rs.getInt(4));
				cont.setCont_status(rs.getString(5));
				cont.setCont_categoria(rs.getString(6));

				lista.add(cont);

			}

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}

		return lista;

	}

	public static int addContainer(Container c) {

		int status = 0;

		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement(
					"insert into tblcontainer(cont_cliente, cont_num, cont_tipo, cont_status, cont_categoria) values (?,?,?,?,?);");

			ps.setString(1, c.getCont_cliente());
			ps.setString(2, c.getCont_num());
			ps.setInt(3, c.getCont_tipo());
			ps.setString(4, c.getCont_status());
			ps.setString(5, c.getCont_categoria());

			status = ps.executeUpdate();

			con.close();

		} catch (Exception e) {

			System.out.println(e);
		}

		return status;

	}

}
