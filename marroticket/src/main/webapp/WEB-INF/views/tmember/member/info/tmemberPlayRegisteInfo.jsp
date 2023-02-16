<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<h2>
	등록한 연극
</h2>

<table border="1">
	<tr>
		<th align="center" width="80">연극 번호</th>
		<th align="center" width="250">연극 제목</th>
		<th align="center" width="80">등록 승인 상태</th>
		<th align="center" width="180">예매예정일</th>
		<th align="center" width="180">개막일</th>
		<th align="center" width="120">수정</th>
		<th align="center" width="80">수정 승인 상태</th>
	</tr>

	<c:choose>
		<c:when test="${empty playlist}">
			<tr>
				<td colspan="7"><spring:message code="common.listEmpty" /></td>
			</tr>
		</c:when>

		<c:otherwise>
			<c:forEach items="${playlist}" var="list" varStatus="status">
				<tr>
					<td align="center">${list.pNumber}</td>
					<td align="center"><a href="/theater/playRegisteRead?pNumber=${list.pNumber }">${list.pName}</td>
					<td align="center">${list.pRegistrationApproval}</td>
					<td align="left"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${list.pTicketOpenDate}" /></td>
					<td align="left"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${list.pStartDate}" /></td>
							
					<td align="center">
					<a href="/theater/playModify?pNumber=${list.pNumber }">수정임시버튼~~</a> <!-- 연극승인 완료되면 지우기 -->
						<c:choose>
							<c:when test="${list.pRegistrationApproval eq '0' }">
								수정불가
							</c:when>
							<c:otherwise>
								<a href="/theater/playModify?pNumber=${list.pNumber }">수정하기</a>
							</c:otherwise>
						</c:choose>
					 
					 
					 
					 <!-- 연극 승인 처리 전까지 이 상태 유지하기 -->
					 
					 
					</td>
					<td align="center">${list.pModifyApproval}</td>
				</tr>
				<c:if test="${status.count%4 == 0 }">
						<tr></tr>
				</c:if>
			</c:forEach>
		</c:otherwise>
</c:choose>
</table>
