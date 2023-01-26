<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <h1>회원수정 페이지</h1>
        <hr />
        <div class="linkbox">
            <a href="/updateForm">회원정보</a>&nbsp
            <a href="/logout">로그아웃</a>
        </div>
        <div class="box">
            <form action="/update" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" name="username" placeholder="Enter username" required></td>
                    </tr>
                    <tr>
                        <th>페스워드</th>
                        <td><input type="password" name="password" placeholder="Enter password" required></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="email" name="email" placeholder="Enter email" required></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="buttonbox">
            <button type="submit">회원수정완료</button>
        </div>
        <%@ include file="../layout/footer.jsp" %>