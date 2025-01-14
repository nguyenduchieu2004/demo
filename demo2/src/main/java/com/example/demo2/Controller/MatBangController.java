package com.example.demo2.Controller;

import com.example.demo2.Model.MatBang;
import com.example.demo2.Service.IMatbangService;
import com.example.demo2.Service.MatbangService;
import sun.tools.jconsole.Tab;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "MatBangController", urlPatterns = "/Matbang")
public class MatBangController extends HttpServlet {
    private IMatbangService matbangService = new MatbangService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                req.getRequestDispatcher("/WEB-INF/View/Matbang/create.jsp").forward(req, resp);
                break;
            case "update":
                break;
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                matbangService.remove(id);
                resp.sendRedirect(req.getContextPath() + "/Matbang?message=delete");
                break;
            default:
                String message = req.getParameter("message");
                if (message != null) {
                    if (message.equals("delete")) {
                        req.setAttribute("message", "Xoá Thành Công!");
                    } else if (message.equals("create")) {
                        req.setAttribute("messaage", "Thêm Mới Thành Công!");
                    }
                }
                List<MatBang> mat_bang = matbangService.getAll();
                req.setAttribute("mat_bang", mat_bang);
                req.getRequestDispatcher("/WEB-INF/View/Matbang/List.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String maMatBang = req.getParameter("maMatBang");
                String trangThai = req.getParameter("trangThai");
                Float dienTich = Float.parseFloat(req.getParameter("dienTich"));
                int tang = Integer.parseInt(req.getParameter("Tang"));
                String loaiMatBang = req.getParameter("loaiMatBang");
                Long giaTien = Long.parseLong(req.getParameter("giaTien"));
                String ngayBatDau = req.getParameter("ngayBatDau");
                String ngayKetThuc = req.getParameter("ngayKetThuc");

                MatBang matBang = new MatBang(maMatBang, trangThai, dienTich, tang, loaiMatBang, giaTien, ngayBatDau, ngayKetThuc);
                matbangService.save(matBang);
                resp.sendRedirect("/Matbang");
                resp.sendRedirect(req.getContextPath() + "/Matbang?message=create");
                break;
        }
    }
}
