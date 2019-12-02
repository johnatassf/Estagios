package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.Estagiario;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class EstagiarioDAO {
    public ArrayList<Estagiario> getAll(){
        ArrayList<Estagiario> estagiarios = new ArrayList<>();
        
        Estagiario a1 = new Estagiario();
        a1.setNome("Rafael");
        a1.setDataInicio(new Date());
        a1.setDataFim(new Date());
        
        estagiarios.add(a1);
        
        return estagiarios;
    }
    
    public Estagiario getEstagiarioById(int id){
        Estagiario a1 = new Estagiario();
        a1.setNome("Rafael");
        a1.setDataInicio(new Date());
        a1.setDataFim(new Date());
        
        return a1;
    }
}
