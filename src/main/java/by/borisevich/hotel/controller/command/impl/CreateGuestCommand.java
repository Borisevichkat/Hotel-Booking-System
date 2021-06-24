package by.borisevich.hotel.controller.command.impl;

import by.borisevich.hotel.controller.PageRequest;
import by.borisevich.hotel.controller.command.Command;
import by.borisevich.hotel.dao.DAOException;
import by.borisevich.hotel.dao.DAOProvider;
import by.borisevich.hotel.dao.GuestDAO;
import by.borisevich.hotel.entity.Guest;
import by.borisevich.hotel.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class CreateGuestCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String resultPage = null;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String passport = request.getParameter("passport");
        String birthdateStr = request.getParameter("birthDate");
        String phone = request.getParameter("phone");
        try {
            Date birthdate = new SimpleDateFormat("yyyy-MM-dd").parse(birthdateStr);
            GuestDAO guestDAO = DAOProvider.getInstance().getGuestDAO();
            Guest guest = new Guest(passport, phone, firstName, lastName, birthdate, user.getUserId());
            guestDAO.addGuest(guest);
            List<Guest> guests = guestDAO.getGuestsByUserId(user.getUserId());
            session.setAttribute("guests", guests);
        } catch (DAOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return PageRequest.GUESTS;
    }
}
