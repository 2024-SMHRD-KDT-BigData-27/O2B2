package com.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class CalenderDTO {
	
	private String CLD_ID;
	
	private String CLD_TITLE;
	
	private String CLD_CONTENT;
	
	private String START_DT;
	
	private String END_DT;
	
	private String BACK_COLOR;
	
	private String TEXT_COLOR;
	
	private String ID;

}
