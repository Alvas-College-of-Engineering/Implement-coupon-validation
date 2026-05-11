import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class CouponServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double price = Double.parseDouble(request.getParameter("price"));
        String code = request.getParameter("code");

        String validCoupon = "SAVE10";
        double discount = 10;

        if(code.equalsIgnoreCase(validCoupon)) {

            double finalPrice = price - (price * discount / 100);

            request.setAttribute("success", true);
            request.setAttribute("discount", discount);
            request.setAttribute("finalPrice", finalPrice);

        } else {

            request.setAttribute("success", false);
            request.setAttribute("message", "Invalid or Expired Coupon!");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }
}