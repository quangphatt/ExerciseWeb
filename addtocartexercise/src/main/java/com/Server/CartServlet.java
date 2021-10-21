package com.Server;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import murach.data.*;
import com.Model.*;
@WebServlet("/cart")
public class CartServlet extends HttpServlet
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String productCode = request.getParameter("productCode");
        String quantityAsString = request.getParameter("quantity");
        
        HttpSession session = request.getSession();
        
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null)
        {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        //if the user enters a negative or invalid quantity,
        //the quantity is automatically reset to 1.
        int quantity = 1;
        try
        {
            quantity = Integer.parseInt(quantityAsString);
            if (quantity < 0)
                quantity = 1;
        }
        catch(NumberFormatException nfe)
        {
            quantity = 1;
        }

        ServletContext sc = getServletContext();
        String path = sc.getRealPath("WEB-INF/products.txt");
        Product product = ProductIO.getProduct(productCode, path);

        LineItem lineItem = new LineItem();
        lineItem.setProduct(product);
        lineItem.setQuantity(quantity);
        if (quantity > 0)
            cart.addItem(lineItem);
        else if (quantity <= 0)
            cart.removeItem(lineItem);

        session.setAttribute("cart", cart);

        String url = "/cart.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }
    
    
    public String getServletInfo()
    {
        return "Short description";
    }
    // </editor-fold>
}
