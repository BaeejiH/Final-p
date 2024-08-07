package com.gd.Final.Mapper;

import java.util.List;


import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.CommentDto;
import com.gd.Final.dto.FavoriteDto;
import com.gd.Final.dto.MovieDto;

@Mapper
public interface MovieMapper {
	
	// 영화 전체 리스트
	List<MovieDto> selectMovieList(Map<String, Object> m);
	
	// 영화 전체 개수
	int selectMovieCount(int rowPerPage);
	
	// 영화 검색
	int selectMovieSearch();
	
	// 영화 상세보기
	MovieDto selectMovieOne(int movieNum);  //단일 게시물의 상세정보를 조회하기 때문에 타입이 MovieDto임.
	
	// 영화 수정
	int updateMovie (MovieDto m);
	
	// 영화 삭제
	int deleteMovie (int movieNum);
	
	// 영화 추가
	int insertMovie(MovieDto m);
	
	// 댓글 목록(리스트)
	List<CommentDto> selectCommentList (int movieNum);
	
	// 영화 즐겨찾기 리스트
	List<FavoriteDto> selectFavoriteList(String userId);
	
	// 즐겨찾기 상태 확인
	int Favorited (int movieNum,String userId);
	 	
	// 즐겨찾기 등록
	int insertFavorte(int movieNum, String userId);
	
	// 즐겨찾기 삭제
	int deleteFavortie(int movieNum,String userId);
}
