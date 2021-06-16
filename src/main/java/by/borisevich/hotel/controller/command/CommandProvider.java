package by.borisevich.hotel.controller.command;

import by.borisevich.hotel.controller.command.impl.AuthorisationCommand;
import by.borisevich.hotel.controller.command.impl.RegistrationCommand;

import java.util.HashMap;
import java.util.Map;

public class CommandProvider {

    private Map<CommandName, Command> commands = new HashMap<>();

    public CommandProvider() {
       commands.put(CommandName.REGISTRATION, (Command) new RegistrationCommand());
       commands.put(CommandName.AUTHORISATION, (Command) new AuthorisationCommand());
    }

    public Command takeCommand(String name){
        CommandName commandName = CommandName.valueOf(name.toUpperCase());
        return commands.get(commandName);
    }
}
