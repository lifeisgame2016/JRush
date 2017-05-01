package javarush.test.service;

import javarush.test.model.User;
import javarush.test.dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    @Transactional
    @Override
    public void addUser(User user) {
        this.userDao.addUser(user);
    }

    @Transactional
    @Override
    public void updateUser(User user) {
        this.userDao.addUser(user);
    }

    @Transactional
    @Override
    public void removeUser(int id) {
        this.userDao.removeUser(id);
    }

    @Transactional
    @Override
    public User getUserById(int id) {
        return this.userDao.getUserById(id);
    }

    @Transactional
    @Override
    public List<User> getUsersByName(String name) {
        return this.userDao.getUsersByName(name);
    }

    @Transactional
    @Override
    public List<User> listUsers() {
        return this.userDao.listUsers();
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
}
