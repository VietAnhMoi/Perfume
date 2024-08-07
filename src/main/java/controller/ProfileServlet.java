
package controller;

import dal.CustomerDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditProfileControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProfileControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CustomerDAO cd = new CustomerDAO();
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        Customer c = (Customer) session.getAttribute("account");
        try {
            int id = c.getId();
            if (!phone.matches("[0-9]{10}")) {
                request.setAttribute("mess", "Wrong phone format!");
                request.getRequestDispatcher("profile.jsp").forward(request, response);
                return;
            }
            if (!username.equals(c.getUsername())&&cd.getCustomerByUsername(username)!=null) {
                request.setAttribute("mess", "Username exists. Choose another username!");
                request.getRequestDispatcher("profile.jsp").forward(request, response);
                return;
            }
            if (!email.equalsIgnoreCase(c.getEmail())&&cd.checkEmailExist(email)) {
                request.setAttribute("mess", "Email exists. Choose another email!");
                request.getRequestDispatcher("profile.jsp").forward(request, response);
                return;
            }
            cd.updateProfile(id, username, name, phone, email);
            Customer acc = cd.getByCusId(c.getId());
            session.setAttribute("account", acc);
            request.setAttribute("mess", "Updated Successfully");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } catch (NumberFormatException e) {
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
