/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.get.set;

import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class UserController {
    
    private final UserMapper Usermap ;
    
    public UserController() {
          Usermap = new UserMapper();
    }

    public User getUserListWithID(int id){
        return Usermap.getUser(id);
    }


    public ArrayList<User> getUserList()
    {
        return Usermap.getAllUser();
    }

    public void createUser(User s)
    {
        Usermap.insertNewUser(s);
    }

    public void deleteUser(User s)
    {
        Usermap.deleteUser(s);
    }


}

