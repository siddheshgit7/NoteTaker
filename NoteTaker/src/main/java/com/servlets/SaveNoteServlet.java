package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SaveNoteServlet() {
        super();

    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			
			//title,content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title, content, new Date());
			
			System.out.println(note);
			
			//Saving
			Session session = FactoryProvider.getFactory().openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.persist(note);
			
			response.setContentType("text/html");  //text of html type , which is resolved by Browser
			PrintWriter out = response.getWriter();
			out.println("<h1 style='color:green; text-align:center;'>Note is Added SuccessFully !!!</h1>");
			out.println("<h1 style='color:green; text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h1>");

			
			
			tr.commit();			
			session.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}































