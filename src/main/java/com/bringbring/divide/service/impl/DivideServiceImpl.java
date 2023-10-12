package com.bringbring.divide.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.bringbring.divide.domain.Divide;
import com.bringbring.divide.service.DivideService;
import com.bringbring.divide.store.DivideStore;
import com.bringbring.image.domain.Image;
import com.bringbring.reservation.domain.WasteCategory;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class DivideServiceImpl implements DivideService{

	private final DivideStore divideStore;
	
	@Override
	@Transactional(readOnly = true)
	public List<WasteCategory> selectWasteCategoryList() {
		return divideStore.selectWasteCategoryList();
	}

	@Override
	public int insertDivide(Divide divide, MultipartFile[] uploadFiles, HttpServletRequest request) {
		int result = 0;
			// 1. 여행정보 db에 먼저 저장
			result = divideStore.insertDivide(divide);
			// 2. 저장성공시 파일업로드
			if(result > 0) {									 
				int imageGroupNo = divideStore.selectMaxNo();
				for(MultipartFile uploadFile : uploadFiles) {
					if(uploadFile != null && !uploadFile.isEmpty()) {
						//파일저장 메소드 호출
						Map<String, Object> imageMap = this.saveFile(uploadFile, request);
						String imageName = (String)imageMap.get("imageName");
						String imageRename = (String)imageMap.get("imageRename");
						String imagePath = (String)imageMap.get("imagePath");
						Image image = new Image("divide" ,imageGroupNo, imageName, imageRename, imagePath);
						divideStore.insertImage(image);	
					}
				}
			}
			return result;
	}
	
	private Map<String, Object> saveFile(MultipartFile uploadFile, HttpServletRequest request) {
		Map<String, Object> fileInfoMap = new HashMap<String, Object>();
		try {
			//업로드 저장 경로생성
			String root = request.getSession().getServletContext().getRealPath("resources");
			String saveFolder = root + "\\dUploadFiles";
			File folder = new File(saveFolder);
			if(!folder.exists()) folder.mkdir();
			
			// 파일 이름, 경로 생성
			String imageName = uploadFile.getOriginalFilename(); 					// 실제파일명
			String ext = imageName.substring(imageName.lastIndexOf(".")+1);   // 확장자 추출
			String imageRename = UUID.randomUUID().toString() + "." + ext; 		// 파일리네임 - UUID객체로 랜덤 생성
			String savePath = saveFolder + "\\" + imageRename; 					// 파일경로
			
			//파일 객체 생성 후 실제파일저장
			File file = new File(savePath);
			uploadFile.transferTo(file);
				
			//Map 저장
			fileInfoMap.put("imageName", imageName);
			fileInfoMap.put("imageName", imageName);
			fileInfoMap.put("imagePath", savePath);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return fileInfoMap;
	}
	
	private void deleteFile(HttpServletRequest request, String imageRename) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String delImagepath = root+"\\dUploadFiles\\"+imageRename;
		File file = new File(delImagepath);
		if(file.exists()) {
			file.delete();
		}
	}
}