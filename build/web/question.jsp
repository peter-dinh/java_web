<%-- 
    Document   : question
    Created on : Apr 29, 2017, 8:40:46 PM
    Author     : dinhtruong
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="login.dto_program"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=UTF-8", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM program ORDER BY RAND() LIMIT 15");
                int n = 0;
                rs.last();
                n = rs.getRow();
                rs.first();
                //ArrayList<dto_program> list_question = new ArrayList<dto_program>();
                login.dto_program list_question[] = new login.dto_program[15];

                for(int i = 0 ; i < n ; i ++)
                {
                    login.dto_program question = new login.dto_program();
                    question.setId(rs.getInt("id"));
                    question.setQuestion(rs.getString("question"));
                    question.setA(rs.getString("a"));
                    question.setB(rs.getString("b"));
                    question.setC(rs.getString("c"));
                    question.setD(rs.getString("d"));
                    question.setAnswer(rs.getString("answer"));
                    rs.next();
                    list_question[i] = question;
                }

                login.question.list_question = list_question;

            

        %>
        <form method="post" action="question" >
            <% 
                    for(int i = 0 ; i < n; i++)
                    {
                        request.setAttribute("question", list_question[i].getQuestion());
                        request.setAttribute("a", list_question[i].getA());
                        request.setAttribute("b", list_question[i].getB());
                        request.setAttribute("c", list_question[i].getC());
                        request.setAttribute("d", list_question[i].getD());
                        request.setAttribute("number", i+1);
                
            %>
            <div class="question">
                Question <%= request.getAttribute("number") %> : <%= request.getAttribute("question") %>
            </div>
            <div class="reply">
                <input type="radio" name="<%= request.getAttribute("number") %>" value="a" >A: <%= request.getAttribute("a") %>
                <br />
                <input type="radio" name="<%= request.getAttribute("number") %>" value="b" >B: <%= request.getAttribute("b") %>
                <br />
                <input type="radio" name="<%= request.getAttribute("number") %>" value="c" >C: <%= request.getAttribute("c") %>
                <br />
                <input type="radio" name="<%= request.getAttribute("number") %>" value="d" >D: <%= request.getAttribute("d") %>
            </div>
                <% 
                }
            }catch(Exception e)
                {
                    out.println(e);
                }
            %>
               
            <div class="tool">
                <input type="submit" value="Select" name="select" style="width: 100px; margin-left: 150px; margin-top: 15px;" />
                <input type="button" value="Back" name="back" onclick="window.location.href='/web2'" style="width: 100px;" />
            </div>
        </form>
            
            
            
            
        <style>
            .question
            {
                width: 1000px;
                border: 1px solid black;
                min-height: 50px;
                margin-bottom: 10px;
                color: red;
            }
            .reply
            {
                width: 1000px;
                border: 1px solid black;
                min-height: 100px;
                margin-bottom: 10px;
            }
            .tool
            {
                width: 1000px;
                border: 1px solid black;
                min-height: 50px;
                margin-bottom: 10px;
            }
        </style>
    </body>
</html>
