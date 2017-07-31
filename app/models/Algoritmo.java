package models;

import org.jpl7.Query;
import org.jpl7.Term;

public class Algoritmo {
    
    String consult;
    
    public Algoritmo(){
        consult = "consult('nutricion.pl')";
    }
    
    public void conexion(){
        try{
            Query conexion = new Query(consult);
            conexion.hasMoreSolutions();
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
    public Term prescripcion_vitaminas(String dato){
        try{
        	String prescripcion = "prescripcion(" + dato + ", V, A).";
            Query ejecutar = new Query(prescripcion);
            if(ejecutar.hasSolution()){
                Term vitaminas = ejecutar.oneSolution().get("V");
                return vitaminas;
            }
        }catch(Exception e){
            System.out.println(e);
            
        }
        return null;
    }

    public Term prescripcion_alimentos(String dato){
        try{
        	String prescripcion = "prescripcion(" + dato + ", V, A).";
            Query ejecutar = new Query(prescripcion);
            if(ejecutar.hasSolution()){
                Term alimentos = ejecutar.oneSolution().get("A");
                return alimentos;
            }
        }catch(Exception e){
            System.out.println(e);
            
        }
        return null;
    }
}