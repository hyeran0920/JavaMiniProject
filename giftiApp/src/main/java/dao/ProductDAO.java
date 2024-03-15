package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBConnection.DBConnection;
import dto.ProductDTO;

public class ProductDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String SELECT_PRODUCTS = "select item_id, item_name, price, brand, category, (select count(*) from sale_tbl as S where S.item_id = G.item_id and insale ='Available') as count from gifticon_tbl as G;";
	private final String INSERT_PRODUCT = "insert into gifticon_tbl(item_name, price,brand,category,image) values(?,?,?,?,?);";
	private final String SELECT_PRODUCT = "select item_id, item_name, price, category, brand, image from product_tbl where item_id = ?;";
	private final String UPDATE_PRODUCT = "update gifticon_tbl set item_name=?, price =?, brand=?, category=?, image=? where item_id=?;";
	private final String GET_BRAND = "selecte distinct brand from gifticon_tbl";
	private final String GET_CATEGORY = "selecte distinct category from gifticon_tbl";
	
	
	public void insert(ProductDTO product) {
		try {
			con = DBConnection.getConnection();
			
			pstmt = con.prepareStatement(INSERT_PRODUCT);
			pstmt.setString(1, product.getItemName());
			pstmt.setInt(2, product.getPrice());
			pstmt.setString(3, product.getBrand());
			pstmt.setString(4, product.getCategory());
			pstmt.setString(5, product.getImage());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
	}
	
	public List<ProductDTO> findAll() {
		List<ProductDTO> products = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(SELECT_PRODUCTS);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO product = new ProductDTO();
				product.setItemId(rs.getInt("item_id"));
				product.setItemName(rs.getString("item_name"));
				product.setPrice(rs.getInt("price"));
				product.setBrand(rs.getString("brand"));
				product.setCategory(rs.getString("category"));
				product.setCount(rs.getInt("count"));
				products.add(product);
;			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
		return products;
	}
	
	public ProductDTO find(int itemId) {
		ProductDTO product = null;
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(SELECT_PRODUCT);
			pstmt.setInt(1, itemId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = new ProductDTO();
				product.setItemId(rs.getInt("item_id"));
				product.setItemName(rs.getString("item_name"));
				product.setPrice(rs.getInt("price"));
				product.setBrand(rs.getString("brand"));
				product.setCategory(rs.getString("category"));
				product.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
		return product;
	}
	public void Update(ProductDTO product) {
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(UPDATE_PRODUCT);
			pstmt.setString(1, product.getItemName());
			pstmt.setInt(2,product.getPrice());
			pstmt.setString(3, product.getBrand());
			pstmt.setString(4, product.getCategory());
			pstmt.setString(5, product.getImage());
			pstmt.setInt(6, product.getItemId());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
	}
	public List<String> getBrand(){
		List<String> brands = new ArrayList<>();
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(GET_BRAND);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				brands.add(rs.getString("brand"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
		return brands;
	}
	public List<String> getCategory(){
		List<String> categories = new ArrayList<>();
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(GET_CATEGORY);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				categories.add(rs.getString("category"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs, pstmt, con);
		}
		return categories;
	}
}
