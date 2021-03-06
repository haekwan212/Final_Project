package spring.kh.siroragi;

public class adPaging {

	private int currentPage; // 현재페이지
	private int totalCount; // 전체 게시물 수
	private int totalPage; // 전체 페이지 수
	private int blockCount; // 한 페이지의 게시물의 수
	private int blockPage; // 한 화면에 보여줄 페이지 수
	private int startCount; // 한 페이지에서 보여줄 게시글의 시작 번호
	private int endCount; // 한 페이지에서 보여줄 게시글의 끝 번호
	private int startPage; // 시작 페이지
	private int endPage; // 마지막 페이지
	private String list;
	private int posting;
	private int searchNum;
	private String isSearch;

	private StringBuffer pagingHtml;

	// 페이징 생성자
	public adPaging(int currentPage, int totalCount, int blockCount, int blockPage, String list, int posting,
			int searchNum, String isSearch) {

		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.posting = posting;
		this.searchNum = searchNum;
		this.isSearch = isSearch;
		this.list = list;
		// 전체 페이지 수
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}

		// 현재 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		// 현재 페이지의 처음과 마지막 글의 번호 가져오기.
		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount - 1;

		// 시작 페이지와 마지막 페이지 값 구하기.
		startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;

		// 마지막 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		// 이전 block 페이지
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			if (isSearch == null) {
				pagingHtml.append("<a class='page prv' href=" + list + "?posting=" + posting + "&searchNum=" + searchNum
						+ "&isSearch=&currentPage=" + (startPage - 1) + ">");
			} else {
				pagingHtml.append("<a class='page prv' href=" + list + "?posting=" + posting + "&searchNum=" + searchNum
						+ "&isSearch=" + isSearch + "&currentPage=" + (startPage - 1) + ">");
			}
			pagingHtml.append("&lt;");
			pagingHtml.append("</a>");
		}

		// 페이지 번호.현재 페이지는 빨간색으로 강조하고 링크를 제거.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("<strong>");
				pagingHtml.append(i);
				pagingHtml.append("</strong>");
			} else {
				if (isSearch == null) {
					pagingHtml.append("<a class='page' href=" + list + "?posting=" + posting + "&searchNum=" + searchNum
							+ "&isSearch=&currentPage=");
				} else {
					pagingHtml.append("<a class='page' href=" + list + "?posting=" + posting + "&searchNum=" + searchNum
							+ "&isSearch=" + isSearch + "&currentPage=");
				}
				pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}

		// 다음 block 페이지
		if (totalPage - startPage >= blockPage) {
			if (isSearch == null) {
				pagingHtml.append("<a class='page next' href=" + list + "?posting=" + posting + "&searchNum="
						+ searchNum + "&isSearch=&currentPage=" + (endPage + 1) + ">");
			} else {
				pagingHtml.append("<a class='page next' href=" + list + "?posting=" + posting + "&searchNum="
						+ searchNum + "&isSearch=" + isSearch + "&currentPage=" + (endPage + 1) + ">");
			}
			pagingHtml.append("&gt;");
			pagingHtml.append("</a>");
		}
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public int getStartCount() {
		return startCount;
	}

	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}

	public int getEndCount() {
		return endCount;
	}

	public void setEndCount(int endCount) {
		this.endCount = endCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(StringBuffer pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getList() {
		return list;
	}

	public void setList(String list) {
		this.list = list;
	}

	public int getPosting() {
		return posting;
	}

	public void setPosting(int posting) {
		this.posting = posting;
	}

	public int getSearchNum() {
		return searchNum;
	}

	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}

	public String getIsSearch() {
		return isSearch;
	}

	public void setIsSearch(String isSearch) {
		this.isSearch = isSearch;
	}

}