package com.bringbring.divide.store.logic;

import java.util.List;
import java.util.Map;

import com.bringbring.chatting.domain.UserData;
import com.bringbring.common.PageInfo;
import com.bringbring.divide.domain.*;
import com.bringbring.region.domain.District;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bringbring.divide.store.DivideStore;
import com.bringbring.image.domain.Image;
import com.bringbring.reservation.domain.WasteCategory;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class DivideStoreLogic implements DivideStore{

	private final SqlSession sqlSession;

	@Override
	public int insertDivide(Divide divide) {
		return sqlSession.insert("DivideMapper.insertDivide", divide);
	}

	@Override
	public int selectMaxNo() {
		return sqlSession.selectOne("DivideMapper.selectMaxNo");
	}

	@Override
	public void insertImage(Image image) {
		sqlSession.insert("DivideMapper.insertImage", image);
	}

	@Override
	public int getListCount() { return sqlSession.selectOne("DivideMapper.getListCount"); }

    @Override
    public List<ResponseData> selectResponseDataList(PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return sqlSession.selectList("DivideMapper.selectResponseDataList", null, rowBounds);
	}

	@Override
	public Divide selectOneByNo(int divNo) { return sqlSession.selectOne("DivideMapper.selectOneByNo", divNo); }

	@Override
	public DetailData selectDetailDataByNo(int divNo) { return sqlSession.selectOne("DivideMapper.selectDetailDataByNo", divNo); }

	@Override
	public List<Image> selectImageListByNo(int divNo) { return sqlSession.selectList("DivideMapper.selectImageListByNo", divNo); }

	@Override
	public Heart selectHeartByMap(Map<String, Object> map) { return sqlSession.selectOne("DivideMapper.selectHeartByMap", map); }

	@Override
	public int insertHeart(Heart heart) { return sqlSession.insert("DivideMapper.insertHeart", heart); }

	@Override
	public int deleteHeart(Heart heart) { return sqlSession.delete("DivideMapper.deleteHeart", heart); }

	@Override
	public int getHeartCount(int divNo) {
		return sqlSession.selectOne("DivideMapper.getHeartCount", divNo);
	}

	@Override
	public int deleteDivide(int divNo) { return sqlSession.update("DivideMapper.deleteDivide", divNo); }

	@Override
	public UpdateData selectUpdateDataByNo(int divNo) { return sqlSession.selectOne("DivideMapper.selectUpdateDataByNo", divNo); }

	@Override
	public int updateDivide(Divide divide) { return sqlSession.update("DivideMapper.updateDivide", divide); }

	@Override
	public int updateViewCount(Divide divide) { return sqlSession.update("DivideMapper.updateViewCount", divide); }

	@Override
	public UserData selectUserDataByNo(int divNo) { return sqlSession.selectOne("DivideMapper.selectUserDataByNo", divNo); }

	@Override
	public List<ResponseData> selectLoginResponseDataList(PageInfo pageInfo, int userNo) {
		int limit = pageInfo.getRecordCountPerPage();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return sqlSession.selectList("DivideMapper.selectLoginResponseDataList", userNo, rowBounds);
	}

	@Override
	public int deleteImage(int imageNo) { return sqlSession.delete("DivideMapper.deleteImage", imageNo); }

}
