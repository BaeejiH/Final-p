package com.gd.Final.Service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gd.Final.Mapper.ReviewFileMapper;
import com.gd.Final.Mapper.ReviewMapper;
import com.gd.Final.dto.ReviewDto;
import com.gd.Final.dto.ReviewFileDto;
import com.gd.Final.dto.ReviewRequest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReviewService {
	
	@Autowired
	ReviewMapper reviewMapper;
	
	@Autowired
	ReviewFileMapper reviewFileMapper;
	
	// 리뷰 리스트
	public List<ReviewDto> getReviewList (int movieNum) {
		List<ReviewDto> Reviewlist = reviewMapper.selectReviewList(movieNum);
		
		return Reviewlist;
	}
	// 리뷰 등록
	public void addReview (ReviewRequest reviewRequest) {
			ReviewDto review = new ReviewDto();
			review.setReviewTitle(reviewRequest.getReviewTitle());
			review.setReviewContent(reviewRequest.getReviewContent());
			review.setReviewDate(reviewRequest.getReviewDate());
			review.setUserId(reviewRequest.getUserId());
			review.setMovieNum(reviewRequest.getMovieNum());
			
			MultipartFile mf = reviewRequest.getReviewFile();
			
			int row1 = reviewMapper.insertReview(review);
			if(row1 != 1) {
				throw new RuntimeException("리뷰 추가 실패");
			}
		
			ReviewFileDto reviewfile = new ReviewFileDto();
			reviewfile.setReviewId(review.getReviewId());
			reviewfile.setOriginalName(mf.getOriginalFilename());
			reviewfile.setFileSize(mf.getSize());
			reviewfile.setFileType(mf.getContentType());
			
			String pre = UUID.randomUUID().toString().replace("-", "");
			int R = mf.getOriginalFilename().lastIndexOf(".");
			String suff = mf.getOriginalFilename().substring(R);
			reviewfile.setFileName(pre+suff);
			
			int row2 = reviewFileMapper.insertReviewFile(reviewfile);
			if(row2 != 1){
				throw new RuntimeException("리뷰파일 추가 실패");
			}
			
			File emptyFile = new File("c:/Mupload/"+pre + suff);
			
			try {
				mf.transferTo(emptyFile);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException();
			}
			
	}
	
	
	// 리뷰 삭제
	public int removeReview (int reviewId, int movieNum) {
		return reviewMapper.deleteReview(reviewId, movieNum);
	}	
	// 리뷰 수정
	public int modifyReview (ReviewDto rDro) {
		return reviewMapper.updateReview(rDro);
	}
	// 리뷰 상새보기
	public ReviewDto getReviewOne (int reviewId) {
		return reviewMapper.selectReviewOne(reviewId);
	}
	
}
