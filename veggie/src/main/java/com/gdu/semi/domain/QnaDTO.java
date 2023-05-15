package com.gdu.semi.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QnaDTO {
	private int qnaNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaId;
	private Date qnaDate;
	private String qnaReply;
}
