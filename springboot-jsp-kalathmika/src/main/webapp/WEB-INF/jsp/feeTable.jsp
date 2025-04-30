<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.luminar.springbootkalathmika.model.TrackFee" %>


<%
    List<TrackFee> fees = (List<TrackFee>) request.getAttribute("FeeRecord");
%>
<tbody>
    <% 
        if (fees != null && !fees.isEmpty()) {
            int i = 1;
            for (TrackFee fee : fees) { 
    %>
    <tr>
        	<td><%= i++ %></td>
				<td><%= fee.getFeeMonth() %></td>
				<td><%= fee.getFeeYear() %></td>
				<td><%= fee.getFeeAmountpaid() %></td>
				<td><%= fee.getFeePaymentdate() %></td>
				<td><%= fee.getFeePaymentstatus() %></td>
        
    </tr>
    <% } } else { %>
    <tr>
        <td colspan="9" style="text-align:center;">No fees found</td>
    </tr>
    <% } %>
</tbody>
