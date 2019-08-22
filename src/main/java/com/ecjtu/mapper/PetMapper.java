package com.ecjtu.mapper;

import com.ecjtu.entity.Pet;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Mr Wu
 * @create: 2019-08-20 14:42
 */
public interface PetMapper {

    /**
     * 新增的动物
     * @param pet 新增的动物
     * @return int
     * */
    int addPet(Pet pet);

    /**
     * 删除动物
     * @param id 动物的id
     * @return int
     * */
    int deletePet(Integer id);

    /**
     * 更新动物的信息
     * @param pet 更新的动物信息
     * @return int
     * */
    int updatePet(Pet pet);

    /**
     * 查询所有的动物
     * @return list
     * */
    List<Pet> getPets();

    /**
     * 根据动物id查询信息
     * @param id 用户id
     * @return pet
     * */
    Pet findById(Integer id);
    /**
     * 根据动物名查询用户信息
     * @param petName 用户名
     * @return pet
     * */
    Pet findByName(String petName);

    /**
     * 批量删除
     * @param ids id的集合
     * */
    void deleteBatch(@Param("ids")List<Integer>ids);
}
