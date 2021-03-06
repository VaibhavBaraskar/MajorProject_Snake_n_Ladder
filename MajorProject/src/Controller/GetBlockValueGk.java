package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.BlockDao;
import Entity.General_Knowledge;
import Entity.Player;
import Entity.VisitedBlock;

@WebServlet("/GetBlockValueGk")
public class GetBlockValueGk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		
		try {
			Object blockId = (String)request.getParameter("block");
			Player player = (Player)request.getSession().getAttribute("itsme");
			
			 int pos=Integer.parseInt(new String((String) blockId));
			 player.setPosition(pos);
			
			
			int questionNo=0;
				if(player.getPosition()< 21)
				{
					Random random = new Random();
					questionNo = random.nextInt(20 - 1) + 1;
				}
				else if(player.getPosition() > 20 && player.getPosition() < 51)
				{
					Random random = new Random();
					questionNo = random.nextInt(50 - 21) + 21;
				}
				else
				{
					Random random = new Random();
					questionNo = random.nextInt(100 - 51) + 51;
				}
			

			
			VisitedBlock visit = new VisitedBlock(questionNo, false);
			
			if(visit.getVisit() != true)
			{	
				visit.setVisit(true);
			
				BlockDao dao = new BlockDao();
				
				General_Knowledge gk = new General_Knowledge(questionNo, null, null, null, null, null, null, null);
				
				General_Knowledge que = dao.getQuestion(gk);
				
				
				que.setAnswer(null);
				request.getSession().setAttribute("itsme", player);
				request.getSession().setAttribute("que", que);
				response.sendRedirect("Gk_question.jsp");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Question fetching failed");
			response.sendRedirect("Gk_game.jsp");
		}		
	}

}
