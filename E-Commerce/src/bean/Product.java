package bean;

public class Product {

	int p_productid;
	String p_name;
	int p_supplierid;
	String p_productdescription;
	int p_catgoryid;
	int p_quantityperunit;
	double p_unitprice;
	double p_mrp;
	int p_available_size;//
	String p_available_colors;
	double p_discount;
	double p_unitweight;
	int p_unitsinstock;
	int p_unitsonorder;
	String p_recorder_level;
	int p_product_available;
	double p_discount_available;
	int p_currentorder;
	String p_picture;
	int p_ranking; //
	String p_note;
	int p_sub_categoryID;
	
	
	
	public int getP_productid() {
		return p_productid;
	}
	public void setP_productid(int p_productid) {
		this.p_productid = p_productid;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_supplierid() {
		return p_supplierid;
	}
	public void setP_supplierid(int p_supplierid) {
		this.p_supplierid = p_supplierid;
	}
	public String getP_productdescription() {
		return p_productdescription;
	}
	public void setP_productdescription(String p_productdescription) {
		this.p_productdescription = p_productdescription;
	}
	public int getP_catgoryid() {
		return p_catgoryid;
	}
	public void setP_catgoryid(int p_catgoryid) {
		this.p_catgoryid = p_catgoryid;
	}
	public int getP_quantityperunit() {
		return p_quantityperunit;
	}
	public void setP_quantityperunit(int p_quantityperunit) {
		this.p_quantityperunit = p_quantityperunit;
	}
	public double getP_unitprice() {
		return p_unitprice;
	}
	public void setP_unitprice(double p_unitprice) {
		this.p_unitprice = p_unitprice;
	}
	public double getP_mrp() {
		return p_mrp;
	}
	public void setP_mrp(double p_mrp) {
		this.p_mrp = p_mrp;
	}
	public int getP_available_size() {
		return p_available_size;
	}
	public void setP_available_size(int p_available_size) {
		this.p_available_size = p_available_size;
	}
	public String getP_available_colors() {
		return p_available_colors;
	}
	public void setP_available_colors(String p_available_colors) {
		this.p_available_colors = p_available_colors;
	}
	public double getP_discount() {
		System.out.println("ProductBean.java getP "+p_discount);
		return p_discount;
	}
	public void setP_discount(double p_discount) {
		this.p_discount = p_discount;
		System.out.println("ProductBean.java setP "+this.p_discount);
	}
	public double getP_unitweight() {
		return p_unitweight;
	}
	public void setP_unitweight(double p_unitweight) {
		this.p_unitweight = p_unitweight;
	}
	public int getP_unitsinstock() {
		return p_unitsinstock;
	}
	public void setP_unitsinstock(int p_unitsinstock) {
		this.p_unitsinstock = p_unitsinstock;
	}
	public int getP_unitsonorder() {
		return p_unitsonorder;
	}
	public void setP_unitsonorder(int p_unitsonorder) {
		this.p_unitsonorder = p_unitsonorder;
	}
	public String getP_recorder_level() {
		return p_recorder_level;
	}
	public void setP_recorder_level(String p_recorder_level) {
		this.p_recorder_level = p_recorder_level;
	}
	public int getP_product_available() {
		return p_product_available;
	}
	public void setP_product_available(int p_product_available) {
		this.p_product_available = p_product_available;
	}
	public double getP_discount_available() {
		return p_discount_available;
	}
	public void setP_discount_available(double p_discount_available) {
		this.p_discount_available = p_discount_available;
	}
	public int getP_currentorder() {
		return p_currentorder;
	}
	public void setP_currentorder(int p_currentorder) {
		this.p_currentorder = p_currentorder;
	}
	public String getP_picture() {
		return p_picture;
	}
	public void setP_picture(String p_picture) {
		this.p_picture = p_picture;
	}
	public int getP_ranking() {
		return p_ranking;
	}
	public void setP_ranking(int p_ranking) {
		this.p_ranking = p_ranking;
	}
	public String getP_note() {
		return p_note;
	}
	public int getP_sub_categoryID() {
		return p_sub_categoryID;
	}
	public void setP_sub_categoryID(int p_sub_categoryID) {
		this.p_sub_categoryID = p_sub_categoryID;
	}
	public void setP_note(String p_note) {
		this.p_note = p_note;
	}
}
