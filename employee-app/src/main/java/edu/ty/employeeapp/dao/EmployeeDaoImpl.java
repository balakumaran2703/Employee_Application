package edu.ty.employeeapp.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import edu.ty.employeeapp.dto.Employee;

public class EmployeeDaoImpl implements Employeedao {

	@Override
	public boolean addEmployee(Employee e) {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="INSERT INTO employee VALUES(?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, e.getId());
			pstmt.setString(2, e.getName());
			pstmt.setString(3, e.getMobile_number());
			pstmt.setDouble(4, e.getSalary());
			pstmt.setDate(5, Date.valueOf(e.getDateofjoinning()));
			pstmt.setDate(6, Date.valueOf(e.getDateofbirth()));
			pstmt.setString(7, e.getDesignation());
			pstmt.setString(8, e.getEmail());
			pstmt.setString(9, e.getPassword());
			int rowsaffected=pstmt.executeUpdate();
			return (rowsaffected !=0);
		} catch (ClassNotFoundException | SQLException e1) {
			e1.printStackTrace();
		}finally {
			if (con!=null) {
					try {
						con.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				}
			}if (pstmt!=null) {
					try {
						pstmt.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
			}
		return false;
	}
	@Override
	public Employee getEmployee(String job) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee WHERE designation=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, job);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				String mobile_number=rs.getString(3);
				double salary=rs.getDouble(4);
				//Date date_of_joinning=rs.getDate(5);
				//Date date_of_birth=rs.getDate(6);
				String designation=rs.getString(7);
				String email=rs.getString(8);
				Employee e=new Employee();
				e.setId(eid);
				e.setName(name);
				e.setMobile_number(mobile_number);
				e.setSalary(salary);
				//e.setDateofbirth(null);
				e.setDesignation(designation);
				e.setEmail(email);
				return e;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	@Override
	public Employee getEmployeename(String ename) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee WHERE name=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, ename);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				String mobile_number=rs.getString(3);
				double salary=rs.getDouble(4);
				//Date date_of_joinning=rs.getDate(5);
				//Date date_of_birth=rs.getDate(6);
				String designation=rs.getString(7);
				String email=rs.getString(8);
				Employee e=new Employee();
				e.setId(eid);
				e.setName(name);
				e.setMobile_number(mobile_number);
				e.setSalary(salary);
				//e.setDateofbirth(null);
				e.setDesignation(designation);
				e.setEmail(email);
				return e;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	@Override
	public Employee getEmployeemobile(String mobile_number) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee WHERE phone_number=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, mobile_number);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				String mobile=rs.getString(3);
				double salary=rs.getDouble(4);
				//Date date_of_joinning=rs.getDate(5);
				//Date date_of_birth=rs.getDate(6);
				String designation=rs.getString(7);
				String email=rs.getString(8);
				Employee e=new Employee();
				e.setId(eid);
				e.setName(name);
				e.setMobile_number(mobile);
				e.setSalary(salary);
				//e.setDateofjoinning();
				e.setDesignation(designation);
				e.setEmail(email);
				return e;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public Employee getEmployee(int id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee WHERE eid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				String mobile_number=rs.getString(3);
				double salary=rs.getDouble(4);
				//Date date_of_joinning=rs.getDate(5);
				//Date date_of_birth= rs.getDate(6);
				String designation=rs.getString(7);
				String email=rs.getString(8);
				Employee e=new Employee();
				e.setId(eid);
				e.setName(name);
				e.setMobile_number(mobile_number);
				e.setSalary(salary);
				//e.setDateofbirth(null);
				e.setDesignation(designation);
				e.setEmail(email);
				return e;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public ArrayList<Employee> getAllEmployee() {
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			ArrayList<Employee> res=new ArrayList<>();
			while(rs.next()) {
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				String mobile_number=rs.getString(3);
				double salary=rs.getDouble(4);
				//Date date_of_joinning=rs.getDate(5);
				//Date date_of_birth= rs.getDate(6);
				String designation=rs.getString(7);
				String email=rs.getString(8);
				Employee e=new Employee();
				e.setId(eid);
				e.setName(name);
				e.setMobile_number(mobile_number);
				e.setSalary(salary);
				//e.setDateofbirth(null);
				e.setDesignation(designation);
				e.setEmail(email);
				res.add(e);
			}
			return res;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public boolean updateEmployee(Employee e) {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="UPDATE employee SET name=?,phone_number=?,salary=?,designation=?,email=? WHERE eid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(6, e.getId());
			pstmt.setString(1, e.getName());
			pstmt.setString(2, e.getMobile_number());
			pstmt.setDouble(3, e.getSalary());
			//pstmt.setDate(4, e.getDateofjoinning());
			//pstmt.setDate(5, e.getDateofbirth());
			pstmt.setString(4, e.getDesignation());
			pstmt.setString(5, e.getEmail());
			int rowsaffected=pstmt.executeUpdate();
			return (rowsaffected!=0);
		} catch (ClassNotFoundException | SQLException e1) {
			e1.printStackTrace();
		}finally {
			if (con!=null) {
					try {
						con.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
			}if (pstmt!=null) {
					try {
						pstmt.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
			}
		}
		return false;
	}

	@Override
	public boolean deleteEmployee(int id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="DELETE FROM employee WHERE eid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			int rowsaffected=pstmt.executeUpdate();
			return (rowsaffected!=0);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	@Override
	public Employee loginvalidate(String email, String password) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM employee WHERE email=? AND password=?";
			pstmt=con.prepareStatement(query); 
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				Employee e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setMobile_number(rs.getString(3));
				e.setSalary(rs.getDouble(4));
				//e.setDateofbirth(rs.get(5));
				e.setDesignation(rs.getString(7));
				e.setEmail(rs.getString(8));
				 return e;
			} else {
				return null;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

}
