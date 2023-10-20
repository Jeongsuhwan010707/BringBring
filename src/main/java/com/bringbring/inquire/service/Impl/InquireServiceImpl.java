package com.bringbring.inquire.service.Impl;

import com.bringbring.common.PageInfo;
import com.bringbring.inquire.domain.Inquire;
import com.bringbring.inquire.domain.InquireDetails;
import com.bringbring.inquire.store.InquireStore;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import com.bringbring.inquire.service.InquireService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Transactional
public class InquireServiceImpl implements InquireService {

    private final InquireStore inquireStore;
    @Override
    public int selectInqListCount() { return inquireStore.selectInqListCount(); }

    @Override
    public List<InquireDetails> selectInquireList(PageInfo pInfo) { return inquireStore.selectInquireList(pInfo);}

    @Override
    public List<InquireDetails> selectInquiriesByAnswer(InquireDetails inquireDetails, PageInfo pInfo) { return inquireStore.selectInquiriesByAnswer(inquireDetails, pInfo);}

    @Override
    public List<InquireDetails> selectInquireByCityNo(InquireDetails inquireDetails, PageInfo pInfo) { return inquireStore.selectInquireByCityNo(inquireDetails, pInfo); }

    @Override
    public int selectInquireCount(char answerYn) { return inquireStore.selectInquireCount(answerYn);}

    @Override
    public int selectInquireCountByCity(int cityNo) { return inquireStore.selectInquireCountByCity(cityNo); }

    @Override
    public List<InquireDetails> searchInquireByKeyword(PageInfo pInfo, Map<String, String> paramMap) {  return inquireStore.searchInquireByKeyword(pInfo, paramMap); }

    @Override
    public int searchInqListCount(Map<String, String> paramMap) { return inquireStore.searchInqListCount(paramMap); }

//    @Override
//    public int insertInquire(Inquire inquire, MultipartFile[] uploadFiles, HttpServletRequest request) {
//        // 문의게시글 정보 저장
//        int result = inquireStore.insertInquire(inquire);
//        // 저장 성공시 파일 업로드
//        if(result > 0) {
//            int imageGroupNo = inquireStore.selectMaxNo();
//        }
//    }

}
