package com.bringbring.admin.controller;

import com.bringbring.admin.domain.Admin;
import com.bringbring.admin.domain.AdminDetails;
import com.bringbring.admin.service.AdminService;
import com.bringbring.common.PageInfo;
import com.bringbring.region.domain.City;
import com.bringbring.region.domain.Region;
import com.bringbring.region.service.RegionService;
import com.bringbring.user.domain.User;
import com.bringbring.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

	private final UserService userService;
	private final RegionService regionService;
	private final AdminService adminService;


// 문의 관리
	@GetMapping("/contactM.do")
	public ModelAndView showContactManagement(ModelAndView mv) {
		mv.setViewName("admin/contactManagement");
		return mv;
	}
	
// 관할지역 예약조회	
	@GetMapping("/localM.do")
	public ModelAndView showLocalReservationManagement(ModelAndView mv) {
		mv.setViewName("admin/localReservationManagement");
		return mv;
	}

// 회원 관리

	//회원 리스트
	@GetMapping("/memberList.do")
	public ModelAndView userListManagement(ModelAndView mv
			,@RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		int userCount = userService.selectListCount();
		int adminCount = adminService.selectListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, userCount);
		List<User> userList = userService.selectUserList(pInfo);
		List<City> cList = regionService.selectCityList();
 		mv.addObject("userList", userList).addObject("pInfo", pInfo).setViewName("/admin/memberManagement");
		mv.addObject("userCount", userCount).addObject("adminCount", adminCount)
				.addObject("cList", cList);
		return mv;
	}

	//지역 리스트
	@PostMapping("/selectRegion.do")
	public ResponseEntity<List<Region>> selectRegionList(@RequestParam("cityNo") int cityNo) {
		List<Region> regionList = regionService.selectRegionList(cityNo);
		System.out.println("Received cityNo: " + cityNo);
		// 반환할 데이터가 있는 경우 ResponseEntity로 JSON 형식으로 반환
		if (!regionList.isEmpty()) {
			System.out.println("regionList = " + regionList);
			return ResponseEntity.ok(regionList);

		} else {
			// 데이터가 없는 경우 404 Not Found 상태 코드 반환
			return ResponseEntity.notFound().build();
		}
	}

	//관리자 임명
	@PostMapping("/insertAdmin.do")
	public ModelAndView insertAdmin(ModelAndView mv
			, @ModelAttribute Admin admin){

		int result = adminService.insertAdmin(admin);
		if(result>0){
			mv.addObject("msg", "관리자 임명 완료");
			mv.addObject("url", "/memberM.do");
			mv.setViewName("common/error");
		} else {
			mv.addObject("msg", "관리자 임명 실패");
			mv.addObject("url", "/memberM.do");
			mv.setViewName("common/error");
		}
		return mv;
	}

	//관리자 리스트
	@GetMapping("/adminList.do")
	public ModelAndView adminListManagement(ModelAndView mv
			,@RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		int adminCount = adminService.selectListCount();
		int userCount = userService.selectListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, adminCount);
		List<AdminDetails> adminList = adminService.selectAdminDetailsList(pInfo);
		List<User> userList = userService.selectUserList(pInfo);
		mv.addObject("adminList", adminList).addObject("pInfo", pInfo).setViewName("/admin/adminManagement");
		mv.addObject("adminCount", adminCount);
		mv.addObject("userCount", userCount);
		return mv;
	}

//	신고 관리
	@GetMapping("/reportM.do")
	public ModelAndView showReportManagement(ModelAndView mv) {
		mv.setViewName("admin/reportManagement");
		return mv;
	}
	
//	예약 상세 조회
	@GetMapping("/rDetail.do")
	public ModelAndView showReservationDetail(ModelAndView mv) {
		mv.setViewName("admin/reservationDetail");
		return mv;
	}
	
//	예약 조회
	@GetMapping("/reservationM.do")
	public ModelAndView showReservationManagement(ModelAndView mv) {
		mv.setViewName("admin/reservationManagement");
		return mv;
	}

	public PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		int recordCountPerPage =10;
		int naviCountPerPage =10;
		int naviTotalCount;

		naviTotalCount = (int)Math.ceil((double)totalCount/recordCountPerPage);
		int startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1) * naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage -1;
		if(endNavi>naviTotalCount) {
			endNavi=naviTotalCount;
		}
        return new PageInfo(currentPage, totalCount, naviTotalCount, recordCountPerPage, naviCountPerPage, startNavi, endNavi);
	}

}

