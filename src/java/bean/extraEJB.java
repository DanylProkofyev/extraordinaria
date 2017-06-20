/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entities.Task;
import entities.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author dergenburn
 */
@Stateless
public class extraEJB {

    @PersistenceUnit
    EntityManagerFactory emf;

    public boolean altaUsuario(Usuario u) {
        if (!existeUsuario(u)) {
            EntityManager em = emf.createEntityManager();
            em.persist(u);
            em.close();
            return true;
        }
        return false;
    }

    public boolean existeUsuario(Usuario u) {
        EntityManager em = emf.createEntityManager();
        Usuario usuEncontrado = em.find(Usuario.class, u.getUsername());
        em.close();
        return usuEncontrado != null;
    }

    public Usuario encontrarUsuario(String un) {
        return (Usuario) emf.createEntityManager().createNamedQuery("Usuario.findByUsername").setParameter("username", un).getSingleResult();
    }

    public boolean borrarUsuario(String nombre) {
        Usuario u = encontrarUsuario(nombre);
        EntityManager em = emf.createEntityManager();
        Usuario uEncontrado = em.find(Usuario.class, u.getUsername());
        if (existeUsuario(uEncontrado)) {
            em.remove(uEncontrado);
            em.close();
        } else {
            return false;
        }
        return true;
    }

    public Task encontrarTask(int id) {
        return (Task) emf.createEntityManager().createNamedQuery("Task.findByIdtask").setParameter("idtask", id).getSingleResult();
    }

    public boolean existeTask(Task u) {
        EntityManager em = emf.createEntityManager();
        Task tEncontrado = em.find(Task.class, u.getIdtask());
        em.close();
        return tEncontrado != null;
    }

    public boolean borrarTask(int id) {
        Task t = encontrarTask(id);
        EntityManager em = emf.createEntityManager();
        Task tEncontrado = em.find(Task.class, t.getIdtask());
        if (existeTask(tEncontrado)) {
            em.remove(tEncontrado);
            em.close();
        } else {
            return false;
        }
        return true;
    }

    public boolean login(String un, String pw) {
        List<Usuario> resultado = emf.createEntityManager().createNamedQuery("Usuario.login").setParameter("username", un).setParameter("pass", pw).getResultList();
        return (resultado.size() == 1);
    }

    public List<Usuario> usuOrden() {
        List<Usuario> resultado = emf.createEntityManager().createNamedQuery("Usuario.findByOrden").getResultList();
        return resultado;
    }

    public List<Usuario> listaT2(String un) {
        List<Usuario> resultado = emf.createEntityManager().createNamedQuery("Usuario.findByUsername").setParameter("username", un).getResultList();
        return resultado;
    }

    public List<Task> listaT(Usuario usu) {
        List<Task> resultado = emf.createEntityManager().createNamedQuery("Task.findByUser").setParameter("user", usu).getResultList();
        return resultado;
    }
}
