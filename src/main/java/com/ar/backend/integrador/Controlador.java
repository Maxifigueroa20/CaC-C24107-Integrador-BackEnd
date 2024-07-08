package com.ar.backend.integrador;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;

@WebServlet("/juegos")
public class Controlador extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "*");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        Conexion conexion = new Conexion();
        Connection conn = conexion.getConnection();
        try {
            ObjectMapper mapper = new ObjectMapper();
            Juego juego = mapper.readValue(request.getInputStream(), Juego.class);
            String query = "INSERT INTO juegos (nombre, desarrollador, descripcion, genero, plataforma, imagen) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, juego.getNombre());
            ps.setString(2, juego.getDesarrollador());
            ps.setString(3, juego.getDescripcion());
            ps.setString(4, juego.getGenero());
            ps.setString(5, juego.getPlataforma());
            ps.setString(6, juego.getImagen());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (IOException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } finally {
            conexion.closeConnection();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "*");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        Conexion conexion = new Conexion();
        Connection conn = conexion.getConnection();
        try {
            String query = "SELECT * FROM juegos";
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(query);
            List<Juego> juegos = new ArrayList<>();

            while (rs.next()) {
                Juego juego = new Juego();
                juego.setId(rs.getInt("id_juego"));
                juego.setNombre(rs.getString("nombre"));
                juego.setDesarrollador(rs.getString("desarrollador"));
                juego.setDescripcion(rs.getString("descripcion"));
                juego.setGenero(rs.getString("genero"));
                juego.setPlataforma(rs.getString("plataforma"));
                juego.setImagen(rs.getString("imagen"));
                juegos.add(juego);
            }

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(juegos);
            response.setContentType("application/json");
            response.getWriter().write(json);
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } finally {
            conexion.closeConnection();
        }
    }
}
