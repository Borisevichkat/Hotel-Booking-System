package by.borisevich.hotel.controller;

import by.borisevich.hotel.controller.command.Command;
import by.borisevich.hotel.controller.command.CommandProvider;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.annotation.*;

@WebServlet("/controller")
public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String ENCODING = "UTF-8";
    private static final String COMMAND = "command";

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        CommandProvider commandProvider = new CommandProvider();
        request.setCharacterEncoding(ENCODING);

        String name = request.getParameter(COMMAND);
        System.out.println("1 " + name);
        Command command = commandProvider.takeCommand(name);
        System.out.println(command);
        String redirectPage = command.execute(request, response);
        response.sendRedirect(redirectPage);
    }
}
