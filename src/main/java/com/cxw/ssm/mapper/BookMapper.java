package com.cxw.ssm.mapper;

import com.cxw.ssm.model.Book;
import com.cxw.ssm.model.BookSub;

import java.util.List;
import java.util.Map;

public interface BookMapper {

    //查看图书，用以初始化页面
    List<Book> queryBookList(Map<String,Object> map);

    //新增图书
    void addBook(Map<String, Object> map);

    //更新图书
    void editBook(Map<String, Object> map);

    //删除图书
    void delBook(Map<String, Object> map);

    // 借阅图书
    void addsubBook(Map<String, Object> map);

    //归还图书
    void returnsubBook(Map<String, Object> map);

    //查看借阅图书列表
    List<BookSub> querySub(Map<String, Object> map);

    //更新图书库存
    void updateInventtories(Map<String, Object> map);

}
