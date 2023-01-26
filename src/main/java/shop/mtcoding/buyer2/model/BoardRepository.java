package shop.mtcoding.buyer2.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardRepository {
    public int insert(@Param("title") String title);

    public List<Board> findAll();

    public Board findById(int id);

    public List<Board> findByUserId(int id);
}
