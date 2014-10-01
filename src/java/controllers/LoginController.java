/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Keith Leng
 */
public class LoginController {
    /**
     * Validate user's userid and password.
     * @param userid the userid of the user
     * @param password the password of the user
     * @return boolean the result of authentication
     */
    public boolean authenticate(String userid,String password){
        boolean isValid = false;

        
        //check whether user is admin/student
        if(userid.equals("admin") && password.equals("00000")){
            isValid = true;
        }
        
        return isValid;

    }
}
