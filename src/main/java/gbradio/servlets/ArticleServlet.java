package gbradio.servlets;

import gbradio.entities.Post;
import gbradio.managers.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*  Servelt permettant d'afficher les pages articles en fonction de l'id du post récuperé  */

@WebServlet("/article")
public class ArticleServlet extends HttpServlet {

	private static final long serialVersionUID = -8480593309360208929L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				
		Integer id = Integer.parseInt(request.getParameter("id"));  /* Récupération de l'id */
		Post post = Bibliotheque.getInstance().getPost(id);			/* Récupération du post en fonction de l'id */
		request.setAttribute("post", post);							/* Assignation d'un nom aux données récuperées*/
		
		
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/article.jsp");	/* Renvoi vers la jsp correspondante */
		view.forward(request, response);
	}


}
