package by.borisevich.hotel.controller.command.impl;

import by.borisevich.hotel.controller.PageRequest;
import by.borisevich.hotel.controller.command.Command;
import by.borisevich.hotel.dao.DAOException;
import by.borisevich.hotel.dao.DAOProvider;
import by.borisevich.hotel.dao.GuestDAO;
import by.borisevich.hotel.dao.impl.GuestDaoImpl;
import by.borisevich.hotel.entity.Guest;
import by.borisevich.hotel.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class GoToGuestsCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        try {
            GuestDAO guestDAO = DAOProvider.getInstance().getGuestDAO();
            List<Guest> guests = guestDAO.getGuestsByUserId(user.getUserId());
            session.setAttribute("guests", guests);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        return PageRequest.GUESTS;
    }

}