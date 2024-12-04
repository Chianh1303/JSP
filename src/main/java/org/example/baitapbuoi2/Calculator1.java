package org.example.baitapbuoi2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Calculator1", value = "/calculator")
public class Calculator1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double number1 = Double.parseDouble(req.getParameter("inputA"));
        double number2 = Double.parseDouble(req.getParameter("inputB"));
        double result = 0;
        String calculator = req.getParameter("calculator");
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        switch (calculator) {
            case "+":
                result = number1 + number2;
                break;
            case "-":
                result = number1 - number2;
                break;
            case "x":
                result = number1 * number2;
                break;
            case "/":
                if (number2 != 0) {
                    result = number1 / number2;
                } else {
                    writer.println("<h3>ERROR cannot be divided by zero</h3>");
                }
                break;
            default:
                writer.println("<h3>ERROR</h3>");
        }
        writer.println("<h3>Result: " + number1 + " " + calculator + " " + number2 + " = " + result + "</h3>");
        writer.println("</html>");
    }
}