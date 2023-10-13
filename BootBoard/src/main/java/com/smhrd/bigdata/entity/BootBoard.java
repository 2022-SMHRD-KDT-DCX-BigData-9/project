package com.smhrd.bigdata.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name="bootboard")
@NoArgsConstructor
@Getter
@Setter
public class BootBoard {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long idx;
	
	@Column(name = "title", length=100)
	private String title;
	@Column(name = "writer", length=100)
	private String writer;
	@Column(name = "content", length= 1000)
	private String content;
	@Temporal(TemporalType.TIMESTAMP) // 시간 형태로 지정
	@CreationTimestamp // 실제 시간 읽기
	@Column(name = "indate")
	private Date indate; // Date는 java.util로
	@ColumnDefault("0") // 디폴트값
	@Column(name = "count")
	private int count;
	@Column(name = "img", length=200)
	private String img;
}
