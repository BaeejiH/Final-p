package com.gd.Final.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.gd.Final.Service.CommentService;
import com.gd.Final.dto.CommentDto;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
public class CommentController {
    
    @Autowired
    CommentService commentService;
    
    // 댓글 등록
    @PostMapping("/comment")
    public String postMethodName(CommentDto c,
                                 @RequestParam(name="movieNum") int movieNum,
                                 HttpSession session) {
        
    	String userId = (String) session.getAttribute("loginUser");
    	
    	  c.setUserId(userId); // 댓글을 추가할 때 로그인한 사용자의 아이디로 댓글이 추가되기 위해 세션에서 가져오는 아이디 값으로 설정.
          
          log.debug("userId---------->"+userId);
          
        // 파라미터 확인
        log.debug("movieNum received: " + movieNum);
        
        int row = commentService.addComment(c);
        log.debug("row:" + row);
        
        if (row == 1) {
            log.debug("댓글 작성 성공");
        } else {
            log.debug("댓글 작성 실패");
        }
        
        // 리다이렉트 시 올바른 파라미터 사용 , 파라미터 값을 넘기지 않아 오류남
        return "redirect:/MovieOne?movieNum=" + c.getMovieNum();
    }
    
    // 댓글 삭제
    @PostMapping("removeComment")
    public String removeCommentt(@RequestParam(name="commentNo") int commentNo,
    							 @RequestParam(name="movieNum") int movieNum ) {
    	
    	log.debug("commentNo",commentNo);
      	
    	log.debug("movieNum",movieNum);
    	
    	int row= commentService.removeComment(commentNo, movieNum);
    	
    	if(row == 1) {
    		log.debug("댓글 삭제 성공");
    	}else {
    		log.debug("댓글 삭제 실패");
    	}
    		
    	return "redirect:/MovieOne?movieNum="+movieNum;  // 리다이렉트시 movieNum값 넘겨줘야해서 requestParam으로 받아서 넣어줌.
    }
    
      
    
}