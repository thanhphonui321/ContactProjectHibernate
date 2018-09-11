/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thanhnd.controller;

import com.thanhnd.service.ContactService;
import com.thanhnd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author nguyenducthanh
 */
@Controller
public class AjaxMap {

    @Autowired
    private ContactService contactService;

    @Autowired
    private UserService userService;
    
    @RequestMapping(value = {"/user/loadCList"})
    public String loadContactList() {
        return "rightClist";
    }

}
