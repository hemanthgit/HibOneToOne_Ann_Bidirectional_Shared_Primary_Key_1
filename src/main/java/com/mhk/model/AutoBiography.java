package com.mhk.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="AUTOBIOGRAPHY")
public class AutoBiography {

	@Id
    @Column(name="author_id")
    private Long authorId;
     
	@Column(name="book_name")
    private String bookName;

//	@OneToOne
//	@JoinColumn(name="author_id")
//	private Author author;
	
//	above declaration is also valid
	
	@OneToOne(mappedBy="bio") // "bio" is referenced to AutoBiography Entity in Author class.
	private Author author;
	
	public Long getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "AutoBiography [authorId=" + authorId + ", bookName=" + bookName + "]";
	}
	
	
}
