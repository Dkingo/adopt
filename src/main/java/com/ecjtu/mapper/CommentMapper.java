package com.ecjtu.mapper;

import com.ecjtu.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Mr Wu
 * @create: 2019-08-20 14:42
 */
public interface CommentMapper {

    /**
     * 新增的评论
     * @param comment 新增的评论
     * @return int
     * */
    int addComment(Comment comment);

    /**
     * 删除评论
     * @param id 评论的id
     * @return int
     * */
    int deleteComment(Integer id);

    /**
     * 更新评论的信息
     * @param  comment 更新的评论信息
     * @return int
     * */
    int updateComment(Comment comment);

    /**
     * 破除用户表外键关系
     * @param user_id 评论表的外键
     * */
    void  updateRelationUser(Integer user_id);

    /**
     * 破除宠物表的外键
     * @param pet_id 评论表的主键
     * */
    void  updateRelationPet(Integer pet_id);
    /**
     * 查询所有的评论
     * @return list
     * */
    List<Comment> getComments();

    /**
     * 根据评论表id查询信息
     * @param comment
     * @return comment
     * */
    Comment findById(Comment comment);


    /**
     * 批量删除
     * @param ids id的集合
     * */
    void deleteBatch(@Param("ids")List<Integer>ids);
}
