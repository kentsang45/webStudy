package org.keroro.common.util;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageMaker {

	private boolean prev;
	private boolean next;
	private int start;
	private int end;
	private PageInfo pageInfo;
	private int total;
	private int lastPage;
	
	public PageMaker(PageInfo pageInfo, int total) {
		// 총 데이터 개수
		this.total = total;
		this.pageInfo = pageInfo;
		
		// 현재 페이지 번호
		int currentPage = pageInfo.getPage();
		// 임시 마지막 번호 13 -> 1.3 -> 2.0 -> 20
		int tempEnd = (int)(Math.ceil(currentPage * 0.1) * 10);
		
		this.start = tempEnd - 9;
		
		// 진짜 마지막 페이지 131
		int realEnd = (int)(Math.ceil(total * 0.1));
		
		// 더 작은 값이 end 가 된다.
		this.end = realEnd < tempEnd ? realEnd : tempEnd;
		
		this.prev = start > 1;
		
		this.next = end * 10 < total;  
		
		this.lastPage = (int)(Math.ceil(total * 0.1));
				
		
	}
}
