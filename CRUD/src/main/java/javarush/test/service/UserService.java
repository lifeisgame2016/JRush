package javarush.test.service;

import javarush.test.model.User;

import java.util.List;

public interface UserService {
    public void addUser(User user);

    public void updateUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> getUsersByName(String name);

    public List<User> listUsers();
}
