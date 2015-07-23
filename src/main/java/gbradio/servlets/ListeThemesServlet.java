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

/*  Servelt permettant d'afficher tous les posts en fonction du type_link du post récuperé  */

@WebServlet("/listeThemes")
public class ListeThemesServlet extends HttpServlet {

	private static final long serialVersionUID = -8480593309360208929L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer type_link = Integer.parseInt(request.getParameter("type_link"));			/* Récupération du type_link */
		
		List<Post> listeThemes = Bibliotheque.getInstance().listerThemes(type_link);		/* Récupération des posts en fonction du type_link */
		request.setAttribute("listeThemes", listeThemes);									/* Assignation d'un nom aux données récuperées*/
		
		
		Post themePost = Bibliotheque.getInstance().getThemePost(type_link);				/* Récupération d'un post en fonction du type_link */
		request.setAttribute("themePost", themePost);										/* Assignation d'un nom aux données récuperées*/
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/listeThemes.jsp");	/* Renvoi vers la jsp correspondante */
		view.forward(request, response);
	}


}
