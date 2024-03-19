package com.fp.admin.model.service;

import static com.fp.common.template.JDBCTemplate.close;
import static com.fp.common.template.JDBCTemplate.commit;
import static com.fp.common.template.JDBCTemplate.rollback;
import static com.fp.common.template.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.fp.admin.model.dao.AdminDao;
import com.fp.admin.model.vo.Admin;

public class AdminService {
	
	private AdminDao aDao = new AdminDao();
	
	public int insertMember(Admin a) {
		Connection conn = getConnection();
		int result = aDao.insertAdmin(conn, a);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}

}