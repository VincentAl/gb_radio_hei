package gbradio.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*  Servelt permettant d'afficher la page programmes  */

@WebServlet("/programmes")
public class ProgrammesServlet extends HttpServlet {
	private static final long serialVersionUID = -8480593309360208929L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/programmes.jsp");	/* Renvoi vers la jsp correspondante */
		view.forward(request, response);
	}
	

}
