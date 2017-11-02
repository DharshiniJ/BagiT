package com.model;

import javax.persistence.*;

@Entity
@Table
public class Supplier
{
@Id
int supId;
String supName,supAddrs;
public int getSupId() {
	return supId;
}
public void setSupId(int supId) {
	this.supId = supId;
}
public String getSupName() {
	return supName;
}
public void setSupName(String supName) {
	this.supName = supName;
}
public String getSupAddrs() {
	return supAddrs;
}
public void setSupAddrs(String supAddrs) {
	this.supAddrs = supAddrs;
}

}
