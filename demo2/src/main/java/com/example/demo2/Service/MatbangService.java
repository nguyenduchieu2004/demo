package com.example.demo2.Service;

import com.example.demo2.Model.MatBang;
import com.example.demo2.Repository.MatbangRepository;
import java.util.List;

public class MatbangService implements IMatbangService{
    private MatbangRepository repository=new MatbangRepository();

    @Override
    public List<MatBang> getAll() {
        List<MatBang> matBangs = repository.getAll();
        return matBangs;

    }

    @Override
    public void save(MatBang matBang) {
        repository.save(matBang);
    }

    @Override
    public void update(int id) {

    }

    @Override
    public void remove(int id) {
        repository.deleteById(id);
    }
}
