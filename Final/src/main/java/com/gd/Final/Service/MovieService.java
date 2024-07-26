package com.gd.Final.Service;

import java.io.File;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.gd.Final.Mapper.MovieFileMapper;
import com.gd.Final.Mapper.MovieMapper;
import com.gd.Final.dto.CommentDto;
import com.gd.Final.dto.FavoriteDto;
import com.gd.Final.dto.MovieDto;
import com.gd.Final.dto.MovieFileDto;
import com.gd.Final.dto.MovieRequest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional
public class MovieService {

	@Autowired
	MovieMapper movieMapper;
	
	@Autowired
	MovieFileMapper movieFileMapper;

	// Movie 전체리스트 (검색 값이 없을 때 전체리스트)
	public List<MovieDto> getMovieList(int rowPerPage, int currentPage) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rowPerPage", rowPerPage);
		paramMap.put("beginRow", (currentPage - 1) * rowPerPage);

		List<MovieDto> list = movieMapper.selectMovieList(paramMap);
		log.debug(list.toString());
		return list;
	}

	// 검색기능( 검색 값이 있을 때 리스트)
	public List<MovieDto> getMovieListSearch(int rowPerPage, int currentPage, String searchMovie) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rowPerPage", rowPerPage);
		paramMap.put("beginRow", (currentPage - 1) * rowPerPage);
		paramMap.put("searchMovie", searchMovie);

		List<MovieDto> list = movieMapper.selectMovieList(paramMap);
		log.debug(list.toString());
		return list;
	}

	// 마지막 페이지 구하기
	public int getLastPage(int rowPerPage) {
		int cnt = movieMapper.selectMovieCount(rowPerPage);

		int LastPage = cnt / rowPerPage;

		log.debug("LastPage" + LastPage);

		if (cnt % rowPerPage != 0) {
			LastPage += 1;
		}
		return LastPage;

	}

	// 검색된 값 에 대한 마지막 페이지 구하기
	public int getLastPageSearch(int rowPerPage, String searchMovie) {
		return 0;
	}

	// 영화 상세보기
	public MovieDto getMovieOne(int movieNum) {
		return movieMapper.selectMovieOne(movieNum);
	}

	// 영화 수정하기
	public int modifyMovie(MovieDto m) {
		return movieMapper.updateMovie(m);
	}

	// 영화 삭제하기
	public int removeMovie(int movieNum) {
		return movieMapper.deleteMovie(movieNum);
	}
	
	
	// 영화 추가
	public void addMovie(MovieRequest movieRequest) {
		// MovieRequest 객체를 MovieDto 객체로 변환.
		MovieDto movie = new MovieDto();
		
		movie.setTitle(movieRequest.getTitle());
		movie.setRuntime(movieRequest.getRuntime());
		movie.setReleaseDate(movieRequest.getReleaseDate());
		movie.setProducer(movieRequest.getProducer());
		movie.setGenre(movieRequest.getGenre());
		movie.setDescription(movieRequest.getDescription());
		movie.setDirector(movieRequest.getDirector());
		movie.setBcode(movieRequest.getBcode());
		
		
		MultipartFile mf = movieRequest.getMovieFile();
		
		// 영화 추가를 한 뒤에 추가한 번호로 영화 파일 추가함.
		int row1 = movieMapper.insertMovie(movie);
		if(row1 != 1) {
			throw new RuntimeException("영화 추가 실패");
		}
		
		// 기본값이 Auto_INCREMENT인 영화번호 가져오는 방법!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		// SELECT LAST_INSERT_ID()
		// insertMovie에서 쿼리에 select key를 통해서 자동생성된 영화번호를 가져올 수 있음.
		MovieFileDto movieFile = new MovieFileDto();
		movieFile.setMovieNum(movie.getMovieNum()); // 여기서 영화 파일을 추가할 때 insertMovie의 영화번호를 가져와서 넣어줌.
		movieFile.setOriginalName(mf.getOriginalFilename());
		movieFile.setFileSize(mf.getSize());
		movieFile.setFileType(mf.getContentType());
		
		// 파일을 이름을 랜덤으로 변경해서 추가 
		String prefix = UUID.randomUUID().toString().replace("-", "");
		int x = mf.getOriginalFilename().lastIndexOf(".");
        String suffix = mf.getOriginalFilename().substring(x);
        movieFile.setFileName(prefix + suffix);
		
        //영화 파일추가
		int row2 = movieFileMapper.insertMovieFile(movieFile);
		if(row2 != 1) {
			throw new RuntimeException("영화 파일추가 실패");
		}
	
		// 파일 저장
		// 실제파일을 서버의 지정된 디렉토리에 저장함. 아래의 c폴더 아래 Mupload 폴더에 추가한 파일들이 생김. 
		File emptyFile = new File("c:/Mupload/"+prefix + suffix);
		try {
			mf.transferTo(emptyFile);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} 
		
		
	}

	
	// 댓글 목록
	public List<CommentDto> getCommentList (int movieNum) {
		return movieMapper.selectCommentList(movieNum);
	}
	
	// 즐겨찾기 리스트
	public List<FavoriteDto> getFavoriteList(String userId){
		return movieMapper.selectFavoriteList(userId);
	}
	
	// 즐겨찾기 기능
	// 즐겨찾기 상태 확인 후 결과 값이 0과 같다면 즐겨찾기를 하지 않은 상태.
	// 0이 아니라면 즐겨찾기가 되어있는 상태.-> delete문으로 실행
	public boolean getFavorite(int moviNum, String userId) {
		if(movieMapper.Favorited(moviNum, userId) == 0) {
			int row = movieMapper.insertFavorte(moviNum, userId);
			
			if(row == 1) {
				log.debug("즐겨찾기 추가성공");
			}else {
				log.debug("즐겨찾기 추가실패");
			}
		
			return false; // --> 즐겨찾기에 추가 됨
		}else {	
			int row = movieMapper.deleteFavortie(moviNum, userId);
			
			if(row == 1) {
				log.debug("즐겨찾기 삭제성공");
			}else {
				log.debug("즐겨찾기 삭제실패");
			}
			return true; // --> 즐겨찾기에 삭제 됨
		}
		
	}
	

}
