<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.luminar.springbootkalathmika.model.Event" %>


<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>
<tbody>
    <% 
        if (events != null && !events.isEmpty()) {
            int i = 1;
            for (Event event : events) { 
    %>
    <tr>
        <td><%= i++ %></td>
        <td><%= event.getEventName() %></td>
        <td><%= event.getEventDate() %></td>
        <td><%= event.getEventLocation() %></td>
        <td><%= event.getEventDesc() %></td>
        <td><%= event.getEventCreatedat() %></td>
        <td><%= event.getEventUpdatedat() %></td>
        
    </tr>
    <% } } else { %>
    <tr>
        <td colspan="9" style="text-align:center;">No events found</td>
    </tr>
    <% } %>
</tbody>
