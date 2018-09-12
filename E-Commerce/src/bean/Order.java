package bean;

public class Order {

	int orderid;
	int o_customerid;
	int o_ordernumber;
	int o_paymentid;
	String o_orderdate;
	String o_shipdate;
	String o_deliverydate;
	int o_shipperid;
	String o_freight;
	double o_amount;

	double o_salestax;
	int o_timestamp;
	String o_transactstatus;
	String o_errloc;
	String o_errmsg;
	String o_fulfilled;
	String o_deleted;
	int o_paid;
	String o_paymentdate;
	int o_product_ID;
	int o_quantity;
	public int getO_quantity() {
		return o_quantity;
	}

	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public double getO_amount() {
		return o_amount;
	}

	public void setO_amount(double o_amount) {
		this.o_amount = o_amount;
	}

	public int getO_customerid() {
		return o_customerid;
	}

	public void setO_customerid(int o_customerid) {
		this.o_customerid = o_customerid;
	}

	public String getO_deliverydate() {
		return o_deliverydate;
	}

	public void setO_deliverydate(String o_deliverydate) {
		this.o_deliverydate = o_deliverydate;
	}

	public int getO_product_ID() {
		return o_product_ID;
	}

	public void setO_product_ID(int o_product_ID) {
		this.o_product_ID = o_product_ID;
	}

	public int getO_ordernumber() {
		return o_ordernumber;
	}

	public void setO_ordernumber(int o_ordernumber) {
		this.o_ordernumber = o_ordernumber;
	}

	public int getO_paymentid() {
		return o_paymentid;
	}

	public void setO_paymentid(int o_paymentid) {
		this.o_paymentid = o_paymentid;
	}

	public String getO_orderdate() {
		return o_orderdate;
	}

	public void setO_orderdate(String o_orderdate) {
		this.o_orderdate = o_orderdate;
	}

	public String getO_shipdate() {
		return o_shipdate;
	}

	public void setO_shipdate(String o_shipdate) {
		this.o_shipdate = o_shipdate;
	}

	public int getO_shipperid() {
		return o_shipperid;
	}

	public void setO_shipperid(int o_shipperid) {
		this.o_shipperid = o_shipperid;
	}

	public String getO_freight() {
		return o_freight;
	}

	public void setO_freight(String o_freight) {
		this.o_freight = o_freight;
	}

	public double getO_salestax() {
		return o_salestax;
	}

	public void setO_salestax(double o_salestax) {
		this.o_salestax = o_salestax;
	}

	public int getO_timestamp() {
		return o_timestamp;
	}

	public void setO_timestamp(int o_timestamp) {
		this.o_timestamp = o_timestamp;
	}

	public String getO_transactstatus() {
		return o_transactstatus;
	}

	public void setO_transactstatus(String o_transactstatus) {
		this.o_transactstatus = o_transactstatus;
	}

	public String getO_errloc() {
		return o_errloc;
	}

	public void setO_errloc(String o_errloc) {
		this.o_errloc = o_errloc;
	}

	public String getO_errmsg() {
		return o_errmsg;
	}

	public void setO_errmsg(String o_errmsg) {
		this.o_errmsg = o_errmsg;
	}

	public String getO_fulfilled() {
		return o_fulfilled;
	}

	public void setO_fulfilled(String o_fulfilled) {
		this.o_fulfilled = o_fulfilled;
	}

	public String getO_deleted() {
		return o_deleted;
	}

	public void setO_deleted(String o_deleted) {
		this.o_deleted = o_deleted;
	}

	public int getO_paid() {
		return o_paid;
	}

	public void setO_paid(int o_paid) {
		this.o_paid = o_paid;
	}

	public String getO_paymentdate() {
		return o_paymentdate;
	}

	public void setO_paymentdate(String o_paymentdate) {
		this.o_paymentdate = o_paymentdate;
	}
}
