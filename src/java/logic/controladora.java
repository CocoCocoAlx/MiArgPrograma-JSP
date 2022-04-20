/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic;

import java.util.List;
import persistencia.ControladoraPersistencia;

/**
 *
 * @author i3-nativan
 */
public class controladora {
    ControladoraPersistencia controlpersistencia = new ControladoraPersistencia();

    public void crearPersona(Persona per){
        controlpersistencia.crearPersona(per);
    }
    public void eliminarPersona(int id){
        controlpersistencia.eliminarPersona(id);
    }
    public void eliminarPersona(Persona per){
        controlpersistencia.eliminarPersona(per);
    }
    public void editarPersona(Persona per){
        controlpersistencia.editarPersona(per);
    }
    public List<Persona> traerPersonas(){
        return controlpersistencia.traerPersonas();
    }
}
