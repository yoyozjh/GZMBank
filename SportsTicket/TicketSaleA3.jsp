<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ page import="com.viatt.util.GzLog" %>
<%
	GzLog gzLog = new GzLog("c:/gzLog_sj");
	String cdno = request.getHeader("MBK_ACCOUNT");
	String sjNo = request.getHeader("MBK_MOBILE");
	gzLog.Write("卡号："+cdno+"手机号："+sjNo+"\n体育彩票购买步骤3");

%>
<!-- 分行特色业务频道列表 -->
<?xml version="1.0" encoding="utf-8"?>
<res>
	<content>
	<label>大乐透</label>
		
    <form method='post' action='/GZMBank/SportsTicket/TicketSaleA4.jsp'>


	<label>请选择购票方式: </label>
	<br/>
	<select name="TikMod">
		<option value='01'  invisible='NotNum_Msg,NotNum' checked>自选</option>
        <option value='02' visible='NotNum_Msg,NotNum'>机选</option>
	</select>


	<label name='NotNum_Msg'>请选择机选注数: </label>
	
	<select name="NotNum">
        <option value='01' checked>1注</option>
        <option value='02'>2注</option>
        <option value='03'>3注</option>
        <option value='04'>4注</option>
        <option value='05'>5注</option>
	</select>



	<label>请输入倍数: (输入范围1~99)</label>
	<br/>
	<input type='text' name='MulTip' style="-wap-input-format: 'N'; -wap-input-required: 'true'" maxleng='2'></input>


	<input type='checkbox' name='add' value='0'></input>
	<label>是否追加</label>


	<input type='hidden' name='ExtNum' value=''></input>

	<input type='hidden' name='workflow' value='A3'></input>

	<input type='submit' value='下一步'/>
    </form>
	</content>
</res>