<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <h1>로그인 페이지</h1>
        <hr />
        <div class="linkbox">
            <a href="/loginForm">로그인</a>&nbsp
            <a href="/joinForm">회원가입</a>
        </div>
                <form action="/login" method="post">
        <div class="box">
            <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" name="username" placeholder="Enter username" required></td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" name="password" placeholder="Enter password" required></td>
                    </tr>
            </table>
        </div>
        <div class="buttonbox">
            <button type="submit">로그인</button>
        </div>
                </form>
        <%@ include file="../layout/footer.jsp" %>