package com.cxw.ssm.controller;

import com.cxw.ssm.common.AssembleResponseMsg;
import com.cxw.ssm.model.ResponseBody;
import com.cxw.ssm.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class BookController {

    @Autowired
    private IBookService bookService;

    /*
    *新增图书
    * */
    @CrossOrigin
    @RequestMapping(value = "/addBook", produces = "application/json;charset=utf-8")
    public ResponseBody addBook(@RequestBody Map<String, Object> map) {
        try {
            bookService.addBook(map);
            return new AssembleResponseMsg().success("ok");
        }catch (Exception e) {
            return new AssembleResponseMsg().failure(200,"error","添加失败");
        }
    }


    /*
    * 更新图书
    * */
    @CrossOrigin
    @RequestMapping(value = "/editBook", produces = "application/json;charset=utf-8")
    public ResponseBody editBook(@RequestBody Map<String, Object> map) {
        try {
            bookService.editBook(map);
            return new AssembleResponseMsg().success("ok");
        }catch (Exception e) {
            return new AssembleResponseMsg().failure(200,"error","编辑失败");
        }
    }


    /*
     * 删除delBook图书
     * */
    @CrossOrigin
    @RequestMapping(value = "/delBook", produces = "application/json;charset=utf-8")
    public ResponseBody delBook(@RequestBody Map<String, Object> map) {
        try {
            bookService.delBook(map);
            return new AssembleResponseMsg().success("ok");
        }catch (Exception e) {
            return new AssembleResponseMsg().failure(200,"error","删除失败");
        }
    }


    /*
    * 查看图书，用以初始化页面
    * */
    @CrossOrigin
    @RequestMapping(value = "/queryBookList", produces = "application/json;charset=utf-8")
    public ResponseBody queryBookList(@RequestBody Map<String, Object> map) {
        Map<String, Object> resultMap = bookService.queryBookList(map);
        return new AssembleResponseMsg().success(resultMap);
    }


    /*
     * 借阅图书
     * */
    @CrossOrigin
    @RequestMapping(value = "/addsubBook", produces = "application/json;charset=utf-8")
    public ResponseBody addsubBook(@RequestBody Map<String, Object> map) {
        try {
            bookService.addsubBook(map);
            return new AssembleResponseMsg().success("ok");
        }catch (Exception e) {
            return new AssembleResponseMsg().failure(200,"error","借阅失败");
        }
    }


    /*
     * 归还图书
     * */
    @CrossOrigin
    @RequestMapping(value = "/returnsubBook", produces = "application/json;charset=utf-8")
    public ResponseBody returnsubBook(@RequestBody Map<String, Object> map) {
        try {
            bookService.returnsubBook(map);
            return new AssembleResponseMsg().success("ok");
        }catch (Exception e) {
            return new AssembleResponseMsg().failure(200,"error","归还失败");
        }
    }


    /*
     * 查看借阅图书列表
     * */
    @CrossOrigin
    @RequestMapping(value = "/querySub", produces = "application/json;charset=utf-8")
    public ResponseBody querySub(@RequestBody Map<String, Object> map) {
        Map<String, Object> resultMap = bookService.querySub(map);
        return new AssembleResponseMsg().success(resultMap);
    }


    /*
     * 更新图书库存
     * */
    @CrossOrigin
    @RequestMapping(value = "/updateInventtories", produces = "application/json;charset=utf-8")
    public ResponseBody updateInventtories(@RequestBody Map<String, Object> map) {
        bookService.updateInventtories(map);
        return new AssembleResponseMsg().success("ok");
    }


}
