<%@ page language="java" contentType="text/xml; charset=UTF-8"%>
<%@page pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="com.viatt.util.GzLog" %>
<%@ page import="java.util.*" %>

<%
	GzLog gzLog = new GzLog("c:/gzLog_sj");
	String uri = request.getRequestURI();
	String sjNo = request.getHeader("MBK_MOBILE");  //注册手机号码
	gzLog.Write(sjNo+"进入["+uri+"]");
	
	//设置需要显示的值和名称,
	String showKey = "TelNum,充值手机号|TxnAmt,充值金额";	
%>
<?xml version = "1.0" encoding = "utf-8"?>
<res>
	<content>	
		<form method='post' action='/GZMBank/ChongZhi/liantong/ChongZhi_liantong_460602.jsp'>
			<label>请确认充值信息:</label><br/>
<%
	Map form = request.getParameterMap();
	//设置隐藏表单值
	Iterator itKeys = form.keySet().iterator();
	while(itKeys.hasNext()){
		String key = (String)itKeys.next();
		String[] values = ( (String[]) form.get(key) );
		if(1==values.length){
			out.println("<input type='hidden' name='"+key+"' value=\""+values[0]+"\"/><br/>");
		}
	}

	//显示确认值
	String[] showKeys = showKey.split("\\|");
	for(int pairsIndex=0;pairsIndex<showKeys.length;pairsIndex++){
		String[] keyValue = showKeys[pairsIndex].split(",");
		if(form.containsKey(keyValue[0])){
			out.println("<label>"+keyValue[1]+":"+( (String[]) form.get(keyValue[0]) )[0]+"</label><br/>");
		}else{
			out.println("<label>"+keyValue[1]+":null</label><br/>");
		}
	}

%>

			<label>请输入交易密码：</label>
			<br/>
			<input type='password' name='password' style="-wap-input-required: 'true'" minleng='6' maxleng='6' encrypt/>
			<input type='hidden' name='MBK_BOCOMACC_PASSWORD'  value='password'></input>

			<input type='submit' value='确定'/><br/>
		</form>
	</content>
</res>