package com.example.demo2.Repository;

import com.example.demo2.Model.MatBang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MatbangRepository {

    private static List<MatBang> matBangs = new ArrayList<>();


    static {
        matBangs.add(new MatBang(1, "MB-01-01", "Hạ Tầng", 25, 10, "Văn phòng trọn gói", 900000, "2024-09-08", "2024-06-01"));
        matBangs.add(new MatBang(2, "MB-02-02", "Hạ tầng", 70, 10, "Văn phòng trọn gói", 8000000, "2023-06-01", "2024-06-01"));
        matBangs.add(new MatBang(3, "MB-08-09", "Đầy đủ", 30, 10, "Văn phòng chia sẻ", 90000, "2023-06-01", "2024-06-01"));
    }

    public List<MatBang> getAll() {
        try {
            PreparedStatement statement =BaseRepository.getConnection().prepareStatement("select * from mat_bang" );
            ResultSet resultSet= statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String maMatBang = resultSet.getString("ma_mat_bang");
                String trangThai = resultSet.getString("trang_thai");
                float dienTich = resultSet.getFloat("dien_tich");
                int tang = resultSet.getInt("tang");
                String loaiMatBang = resultSet.getString("loai_mat_bang");
                long giaTien = resultSet.getLong("gia_tien");
                String ngayBatDau = resultSet.getString("ngay_bat_dau");
                String ngayKetThuc = resultSet.getString("ngay_ket_thuc");
               matBangs.add(new MatBang(id,maMatBang, trangThai, dienTich, tang, loaiMatBang, giaTien, ngayBatDau, ngayKetThuc));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return matBangs;
    }

    public void save(MatBang m) {
        try {
            PreparedStatement statement = BaseRepository.getConnection()
                    .prepareStatement("INSERT INTO mat_bang (ma_mat_bang, trang_thai, dien_tich, tang, loai_mat_bang, gia_tien, ngay_bat_dau, ngay_ket_thuc) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

            statement.setString(1, m.getMaMatBang());
            statement.setString(2, m.getTrangThai());
            statement.setFloat(3, m.getDienTich());
            statement.setInt(4, m.getTang());
            statement.setString(5, m.getLoaiMatBang());
            statement.setLong(6, m.getGiaTien());
            statement.setString(7, m.getNgayBatDau());
            statement.setString(8, m.getNgayKetThuc());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void deleteById(int id) {
        for (MatBang matBang : matBangs) {
            if (matBang.getId() == id) {
            matBangs.remove(matBang);
            break;
            }
        }
    }
}