package bean;

public class Category {
	
	int cat_categoryid;
	String cat_name;
	String cat_description;
	String cat_picture;
	String cat_active;
	public int getSub_cat_ID() {
		return sub_cat_ID;
	}
	public void setSub_cat_ID(int sub_cat_ID) {
		this.sub_cat_ID = sub_cat_ID;
	}
	int sub_cat_ID;
	public int getCat_categoryid() {
		return cat_categoryid;
	}
	public void setCat_categoryid(int cat_categoryid) {
		this.cat_categoryid = cat_categoryid;
	}
	public String getCat_name() {
		return cat_name;
	}
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	public String getCat_description() {
		return cat_description;
	}
	public void setCat_description(String cat_description) {
		this.cat_description = cat_description;
	}
	public String getCat_picture() {
		return cat_picture;
	}
	public void setCat_picture(String cat_picture) {
		this.cat_picture = cat_picture;
	}
	public String getCat_active() {
		return cat_active;
	}
	public void setCat_active(String cat_active) {
		this.cat_active = cat_active;
	}
	
}
