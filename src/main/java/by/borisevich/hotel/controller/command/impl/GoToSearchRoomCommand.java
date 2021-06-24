package by.borisevich.hotel.controller.command.impl;

import by.borisevich.hotel.controller.PageRequest;
import by.borisevich.hotel.controller.command.Command;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class GoToSearchRoomCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return PageRequest.GO_TO_SEARCH_ROOMS;
    }
}
