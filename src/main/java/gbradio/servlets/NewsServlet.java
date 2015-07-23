package gbradio.servlets;

import gbradio.entities.Post;
import gbradio.managers.Bibliotheque;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
	
	private static final long serialVersionUID = -8480593309360208929L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
					
		List<Post> post = Bibliotheque.getInstance().listerPosts();  /* Récupération de tous les posts présents sur la BDD */
		request.setAttribute("listePosts", post);					 /* Assignation d'un nom aux données récuperées*/
	
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/onepage.jsp"); /* Renvoi vers la jsp correspondante */
		view.forward(request, response);
	

	}
}
