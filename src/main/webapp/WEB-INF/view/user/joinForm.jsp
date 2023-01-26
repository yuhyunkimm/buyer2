<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <h1>회원가입 페이지</h1>
        <hr />
        <div class="linkbox">
            <a href="/loginForm">로그인</a>&nbsp
            <a href="/joinForm">회원가입</a>
        </div><br>
        <div class="box">
            <table border="1">
                <form action="/join" method="post">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" name="username" placeholder="Enter username" required></td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" name="password" placeholder="Enter password" required></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="email" name="email" placeholder="Enter email" required></td>
                    </tr>
                </form>
            </table>
        </div>
        <div class="buttonbox">
            <button type="submit">회원가입완료</button>
        </div>
        <%@ include file="../layout/footer.jsp" %>