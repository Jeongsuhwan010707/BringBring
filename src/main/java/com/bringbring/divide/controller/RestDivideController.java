package com.bringbring.divide.controller;

import com.bringbring.divide.domain.Heart;
import com.bringbring.divide.service.DivideService;
import com.bringbring.region.domain.District;
import com.bringbring.region.service.RegionService;
import com.bringbring.reservation.domain.WasteData;
import com.bringbring.user.domain.User;
import com.bringbring.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/divide")
public class RestDivideController {

    private final RegionService regionService;
    private final DivideService divideService;
    private final UserService userService;

    @PostMapping ("/selectDistrict.do")
    public ResponseEntity<List<District>> selectDistrictList(int cityNo) {
        List<District> districtList = regionService.selectDistrictList(cityNo);

        // 반환할 데이터가 있는 경우 ResponseEntity로 JSON 형식으로 반환
        if (!districtList.isEmpty()) {
//            System.out.println("districtList = " + districtList);
            return ResponseEntity.ok(districtList);
        } else {
            // 데이터가 없는 경우 404 Not Found 상태 코드 반환
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/insertHeart.do")
    public String insertHeart(Heart heart) {

        User user = userService.selectOneById(heart.getUserId());
        heart.setUserNo(user.getUserNo());
        int result = divideService.insertHeart(heart);

        if(result > 0){
            System.out.println("insert성공");
            return "success";
        } else {
            // 데이터가 없는 경우 404 Not Found 상태 코드 반환
            return "false";
        }
    }

    @PostMapping("/deleteHeart.do")
    public String deleteHeart(int heartNo) {
        int result = divideService.deleteHeart(heartNo);
        if(result > 0){
            System.out.println("delete성공");
            return "success";
        } else {
            // 데이터가 없는 경우 404 Not Found 상태 코드 반환
            return "false";
        }
    }
}
