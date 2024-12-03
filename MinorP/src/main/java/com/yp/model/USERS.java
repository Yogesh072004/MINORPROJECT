package com.yp.model;

import java.io.Serializable;
import java.util.Date;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Entity
@Table(name="USERS")
@RequiredArgsConstructor
@NoArgsConstructor
public class USERS implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer userid;
	@NonNull
	private String uname;
	@NonNull
	private String address;
	@NonNull
	private String umail;
	@NonNull
	private String pno;
	@NonNull
	private String pwd;
	@NonNull
	private String country="India";
	@NonNull
	private Date dob;
	
}
