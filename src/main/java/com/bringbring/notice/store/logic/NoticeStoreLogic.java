package com.bringbring.notice.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bringbring.common.PageInfo;
import com.bringbring.notice.domain.Notice;
import com.bringbring.notice.store.NoticeStore;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class NoticeStoreLogic implements NoticeStore {

	private final SqlSession sqlSession;

	// 게시글 등록
	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.insert("NoticeMapper.insertNotice", notice);
	}

	// 게시글 전체 갯수
	@Override
	public int selectListCount() {
		return sqlSession.selectOne("NoticeMapper.selectListCount");
	}

	// 게시글 목록 조회
	@Override
	public List<Notice> selectNoticeList(PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return sqlSession.selectList("NoticeMapper.selectNoticeList", null, rowBounds);
	}

	// 게시글 번호에 맞는 게시글 상세 조회
	@Override
	public Notice selectNoticeByNo(Integer noticeNo) {
		return sqlSession.selectOne("NoticeMapper.selectNoticeByNo", noticeNo);
	}

	// 게시글 삭제
	@Override
	public int deleteNotice(Notice notice) {
		return sqlSession.update("NoticeMapper.deleteNotice", notice);
	}

	// 게시글 수정
	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.update("NoticeMapper.updateNotice", notice);
	}
}
