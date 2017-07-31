package controllers;

import play.*;
import play.mvc.*;

import org.jpl7.Term;
import models.Algoritmo;
import play.data.DynamicForm;

import views.html.*;

public class Application extends Controller {

    public static Result index() {
        return ok(index.render());
    }

    public static Result about() {
        return ok(about.render());
    }

    public static Result evaluation() {

        return ok(evaluation.render());
    }

    public static Result evaluationEnd() {

        DynamicForm df = play.data.Form.form().bindFromRequest();

        System.out.println(df.get("option"));

        Algoritmo alg = new Algoritmo();

        alg.conexion();

        Term ruta = alg.prescripcion_vitaminas(df.get("option"));
        Term ruta2 = alg.prescripcion_alimentos(df.get("option"));

        System.out.println(ruta);
        System.out.println(ruta2);

        return ok(result.render(ruta.toString(),ruta2.toString()));
    }

}
