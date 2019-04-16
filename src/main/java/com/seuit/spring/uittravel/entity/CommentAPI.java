package com.seuit.spring.uittravel.entity;


public class CommentAPI {
	private Comment comment;
	private Integer idTourInfor;
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public Integer getIdTourInfor() {
		return idTourInfor;
	}
	public void setIdTourInfor(Integer idTourInfor) {
		this.idTourInfor = idTourInfor;
	}
	public CommentAPI(Comment comment, Integer idTourInfor) {
		super();
		this.comment = comment;
		this.idTourInfor = idTourInfor;
	}
	public CommentAPI() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CommentAPI [comment=" + comment + ", idTourInfor=" + idTourInfor + "]";
	}
	
	
}
