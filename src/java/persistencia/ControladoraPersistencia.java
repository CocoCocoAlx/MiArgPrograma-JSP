/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logic.Persona;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author i3-nativan
 */
public class ControladoraPersistencia {
    PersonaJpaController jpaPersona = new PersonaJpaController();
            
    public void crearPersona(Persona per){
        jpaPersona.create(per);
    }
    public void editarPersona(Persona per){
        try {
            jpaPersona.edit(per);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void eliminarPersona(int id){
        try {
            jpaPersona.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarPersona(Persona per){
        try {
            jpaPersona.destroy(per.getId());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Persona> traerPersonas(){
        return jpaPersona.findPersonaEntities();
    }
}
