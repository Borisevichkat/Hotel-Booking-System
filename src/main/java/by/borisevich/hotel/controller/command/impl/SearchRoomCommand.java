package by.borisevich.hotel.controller.command.impl;

import by.borisevich.hotel.controller.PageRequest;
import by.borisevich.hotel.controller.command.Command;
import by.borisevich.hotel.dao.DAOException;
import by.borisevich.hotel.dao.DAOProvider;
import by.borisevich.hotel.dao.GuestDAO;
import by.borisevich.hotel.dao.RoomFundDAO;
import by.borisevich.hotel.entity.Guest;
import by.borisevich.hotel.entity.RoomFund;
import by.borisevich.hotel.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SearchRoomCommand implements Command {


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<RoomFund> rooms = null;
        try {
            RoomFundDAO roomFundDAO = DAOProvider.getInstance().getRoomFundDAO();
            rooms = roomFundDAO.getAllRooms();
        } catch (DAOException e) {
            e.printStackTrace();
        }
        return PageRequest.GO_TO_SEARCH_ROOMS;
    }
}
