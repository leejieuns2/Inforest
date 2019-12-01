package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.dao.InforestUserDAO;
import model.dto.InforestUser;
import model.dto.InforestUser;

public class InforestUserDAO {

	private JDBCUtil jdbcUtil = null;

	private static String query = "SELECT INFORESTUSER.USER_ID, " +
								  "       INFORESTUSER.PASSWORD, " +
								  "       INFORESTUSER.NAME, " +
								  "       INFORESTUSER.AGE " +
								  "       INFORESTUSER.GENDER, " +
								  "       INFORESTUSER.POSITION, " +
								  "       INFORESTUSER.INTRODUCE " +
								  "FROM INFOREST_USER ";
	

	public List<InforestUser> getInforestUserList() {
		String allQuery = query;	
		jdbcUtil.setSql(allQuery);		// JDBCUtil �� query ����
		
		try { 
			ResultSet rs = jdbcUtil.executeQuery();		// query �� ����			
			List<InforestUser> list = new ArrayList<InforestUser>();		// InforestUser ��ü���� ������� list ��ü
			while (rs.next()) {	
				InforestUser dto = new InforestUser();		// �ϳ��� InforestUser ��ü ���� �� ���� ����
				dto.setUserId(rs.getString("USER_ID"));
				dto.setPassword(rs.getString("PASSWORD"));
				dto.setName(rs.getString("NAME"));
				dto.setAge(rs.getInt("AGE"));
				dto.setGender(rs.getInt("GENDER"));
				dto.setPosition(rs.getInt("POSITION"));
				dto.setIntroduce(rs.getString("INTRODUCE"));
				list.add(dto);		// list ��ü�� ������ ������ InforestUser ��ü ����	
			} // ���� ������ ������ dto���� ����� ��ȯ
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();		// ResultSet, PreparedStatement, Connection ��ȯ
		}		
		return null;	
	}

	// InforestUser ��ü�� ��� �ִ� �º����� ������ ������� �º��� ������ Inforest_User ���̺��� �����ϴ� �޼ҵ�
	public int insertInforestUser(InforestUser user) {
		int result = 0;
		String insertQuery = "INSERT INTO INFOREST_USER (USER_ID, PASSWORD, NAME, AGE, GENDER, POSITION, INTRODUCE) "
				+ " VALUES (?, ?, ?, ?, ?, ?, ?) ";
		
		// query ���� ����� �Ű����� ���� ���� �Ű����� �迭 ����
		Object[] param = new Object[] { user.getUserId(), user.getPassword(), user.getName(), user.getAge(), user.getGender(),
										user.getPosition(), user.getIntroduce() };	
		
		jdbcUtil.setSql(insertQuery);			// JDBCUtil �� insert �� ����
		jdbcUtil.setParameters(param);			// JDBCUtil �� �Ű����� ����
				
		try {				
			result = jdbcUtil.executeUpdate();		// insert �� ����
			System.out.println(user.getUserId() + " �� ������ ���ԵǾ����ϴ�.");
		} catch (SQLException ex) {
			System.out.println("�Է¿��� �߻�!!!");
			if (ex.getErrorCode() == 1)
				System.out.println("������ ���������� �̹� �����մϴ�."); 
		} catch (Exception ex) {
			jdbcUtil.rollback();
			ex.printStackTrace();
		} finally {		
			jdbcUtil.commit();
			jdbcUtil.close();		// ResultSet, PreparedStatement, Connection ��ȯ
		}		
		return result;		// insert �� ���� �ݿ��� ���ڵ� �� ��ȯ
	}

	public int updateInforestUser(InforestUser user) {
		String updateQuery = "UPDATE INFOREST_USER SET ";
		int index = 0;
		Object[] tempParam = new Object[15];		// update ���� ����� �Ű������� ������ �� �ִ� �ӽ� �迭
		
		if (user.getUserId() != null) {		// �̸��� �����Ǿ� ���� ���
			updateQuery += "USER_ID = ?, ";		// update ���� �̸� ���� �κ� �߰�
			tempParam[index++] = user.getUserId();		// �Ű������� ������ �̸� �߰�
		}
		if (user.getPassword() != null) {		// �귣�尡 �����Ǿ� ���� ���
			updateQuery += "PASSWORD = ?, ";		// update ���� �귣�� ���� �κ� �߰�
			tempParam[index++] = user.getPassword();		// �Ű������� ������ �귣�� �߰�
		}
		if (user.getName() != null) {		// ������ �����Ǿ� ���� ���
			updateQuery += "NAME = ?, ";		// update ���� ���� ���� �κ� �߰�
			tempParam[index++] = user.getName();		// �Ű������� ������ ���� �߰�
		}
		if (user.getAge() <= 0) {		// �̸��� �����Ǿ� ���� ���
			updateQuery += "AGE = ?, ";		// update ���� �̸� ���� �κ� �߰�
			tempParam[index++] = user.getAge();		// �Ű������� ������ �̸� �߰�
		}
		if (user.getGender() == 3) {		// ������ �����Ǿ� ���� ���
			updateQuery += "GENDER = ?, ";		// update���� ���� ���� �κ� �߰�
			tempParam[index++] = user.getGender();		// �Ű������� ������ ���� �߰�
		}
		if (user.getPosition() >= 0) {		// ������� �����Ǿ� ���� ���
			updateQuery += "POSITION = ?, ";		// update���� ����� ���� �κ� �߰�
			tempParam[index++] = user.getPosition();		// �Ű������� ������ ����� �߰�
		}
		if (user.getIntroduce() != null) {		// ���͸��� �����Ǿ� ���� ���
			updateQuery += "INTRODUCE = ?, ";		// update ���� ���͸� ���� �κ� �߰�
			tempParam[index++] = user.getIntroduce();		// �Ű������� ������ ���͸� �߰�
		}
		
		updateQuery += "WHERE USER_ID = ? ";		// update ���� ���� ����
		updateQuery = updateQuery.replace(", WHERE", " WHERE");		// update ���� where �� �տ� ���� �� �ִ� , ����
		
		tempParam[index++] = user.getUserId();		// ã�� ���ǿ� �ش��ϴ� �й��� ���� �Ű����� �߰�
		
		Object[] newParam = new Object[index];
		for (int i=0; i < newParam.length; i++)		// �Ű������� ������ŭ�� ũ�⸦ ���� �迭�� �����ϰ� �Ű����� �� ����
			newParam[i] = tempParam[i];
		
		jdbcUtil.setSql(updateQuery);			// JDBCUtil�� update �� ����
		jdbcUtil.setParameters(newParam);		// JDBCUtil �� �Ű����� ����
		
		try {
			int result = jdbcUtil.executeUpdate();		// update �� ����
			return result;			// update �� ���� �ݿ��� ���ڵ� �� ��ȯ
		} catch (Exception ex) {
			jdbcUtil.rollback();
			ex.printStackTrace();
		}
		finally {
			jdbcUtil.commit();
			jdbcUtil.close();		// ResultSet, PreparedStatement, Connection ��ȯ
		}		
		return 0;
	}

	public int deleteInforestUser(int uId) {
		String deleteQuery = "DELETE FROM Inforest_User WHERE USER_ID = ?";
		
		jdbcUtil.setSql(deleteQuery);			// JDBCUtil �� query �� ����
		Object[] param = new Object[] { uId };
		jdbcUtil.setParameters(param);			// JDBCUtil �� �Ű����� ����
		
		try {
			int result = jdbcUtil.executeUpdate();		// delete �� ����
			return result;						// delete �� ���� �ݿ��� ���ڵ� �� ��ȯ
		} catch (Exception ex) {
			jdbcUtil.rollback();
			ex.printStackTrace();		
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();		// ResultSet, PreparedStatement, Connection ��ȯ
		}
		return 0;
	}


	public List <InforestUser> getUserByPosititon(String position) {
		String searchQuery = query + "WHERE INFOREST_USER.POSITION = ?";
		Object[] param = new Object[] { position };

		jdbcUtil.setSql(searchQuery);
		jdbcUtil.setParameters(param);
			
		try {
			ResultSet rs = jdbcUtil.executeQuery();
			List<InforestUser> list = new ArrayList<InforestUser>();	
			while (rs.next()) {
				InforestUser dto = new InforestUser();
				dto.setUserId(rs.getString("USER_ID"));
				dto.setPassword(rs.getString("PASSWORD"));
				dto.setName(rs.getString("NAME"));
				dto.setAge(rs.getInt("AGE"));
				dto.setGender(rs.getInt("GENDER"));
				dto.setPosition(rs.getInt("POSITION"));
				dto.setIntroduce(rs.getString("INTRODUCE"));
				list.add(dto);
			}				
			return list;	
		} catch (Exception ex) {					
			ex.printStackTrace();				
		} finally {				
			jdbcUtil.close();
		}
		return null;
	}

	
	public InforestUser getInforestUserById(String uId) {
		String searchQuery = query + "WHERE INFOREST_USER.USER_ID = ?";
		Object[] param = new Object[] { uId };

		jdbcUtil.setSql(searchQuery);
		jdbcUtil.setParameters(param);
			
		try {
			ResultSet rs = jdbcUtil.executeQuery();
			InforestUser dto = new InforestUser();
			while (rs.next()) {
				dto.setUserId(rs.getString("USER_ID"));
				dto.setPassword(rs.getString("PASSWORD"));
				dto.setName(rs.getString("NAME"));
				dto.setAge(rs.getInt("AGE"));
				dto.setGender(rs.getInt("GENDER"));
				dto.setPosition(rs.getInt("POSITION"));
				dto.setIntroduce(rs.getString("INTRODUCE"));
			}				
			return dto;			
		} catch (Exception ex) {					
			ex.printStackTrace();				
		} finally {				
			jdbcUtil.close();
		}
		return null;
	}

	public boolean existingUser(String userId) {
		InforestUser userDTO = null;
		userDTO = getInforestUserById(userId);
		if(userDTO != null)
			return true;
		return false;
	}
}