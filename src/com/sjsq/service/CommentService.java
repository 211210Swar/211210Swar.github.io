package com.sjsq.service;

import com.sjsq.po.Comment;

import java.util.List;

/**
 * @author shuijianshiqing
 * @date 2021/5/22 17:21
 */
public interface CommentService {
    /**
     * 添加留言
     * @param comment
     * @return
     */
    public boolean addComment(Comment comment);

    /**
     * 展示留言
     * @param bookid
     * @return
     */
    public List<Comment> selectComment(Integer bookid);

}

