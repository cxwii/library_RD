package com.cxw.ssm.service.impl;

import com.cxw.ssm.mapper.BookMapper;
import com.cxw.ssm.model.Book;
import com.cxw.ssm.model.BookSub;
import com.cxw.ssm.model.User;
import com.cxw.ssm.service.IBookService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BookServiceImpl implements IBookService {

    @Autowired
    private BookMapper bookMapper;

    /*
    * 新增图书
    * */
    @Override
    public void addBook(Map<String, Object> map) {
        bookMapper.addBook(map);
    }

    /*
    * 更新图书
    * */
    @Override
    public void editBook(Map<String, Object> map) {
        bookMapper.editBook(map);
    }

    /*
    * 删除图书
    * */
    @Override
    public void delBook(Map<String, Object> map) {
        bookMapper.delBook(map);
    }

    /*
    * 查看图书，用以初始化页面
    * */
    @Override
    public Map<String, Object> queryBookList(Map<String, Object> map) {

        //获取当前页
        int pageNum = Integer.parseInt(map.get("pageNum").toString());
        //每页几条记录
        int pageSize = Integer.parseInt(map.get("pageSize").toString());

        PageHelper.startPage(pageNum,pageSize);
        List<Book> userList = bookMapper.queryBookList(map);
        PageInfo pageInfo = new PageInfo(userList);

        long total = pageInfo.getTotal();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("total",total);
        resultMap.put("rows",userList);

        return resultMap;
    }

    /*
    *借阅图书
    * */
    @Override
    public void addsubBook(Map<String, Object> map) {
        bookMapper.addsubBook(map);
    }

    /*
    * 归还图书
    * */
    @Override
    public void returnsubBook(Map<String, Object> map) {
        bookMapper.returnsubBook(map);
    }

    /*
    * 查看借阅图书列表
    * */
    @Override
    public Map<String, Object> querySub(Map<String, Object> map) {
        List<BookSub> bookSubList = bookMapper.querySub(map);
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("rows",bookSubList);
        return resultMap;
    }

    /*
    * 更新图书库存
    * */
    @Override
    public void updateInventtories(Map<String, Object> map) {
        bookMapper.updateInventtories(map);
    }
}
