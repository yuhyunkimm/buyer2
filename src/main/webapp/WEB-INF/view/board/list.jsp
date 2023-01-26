<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>

        <h1>게시글 목록 페이지</h1>
        <hr />
        <div class="linkbox">
            <a href="/updateForm/${principal.id}">회원정보</a>&nbsp
            <a href="/logout">로그아웃</a>
        </div><br>
        <div class="box">
            <table border=1>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${boardList}" var="board">
                    <tr>
                        <td>${board.id}</td>
                        <td><a href="/">${board.title}</a></td>
                        <td>${board.createdAt}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="write">
            <a href="/">글쓰기</a>
        </div>
        <%@ include file="../layout/footer.jsp" %>