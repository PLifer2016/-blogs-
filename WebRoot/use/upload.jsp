<%@ page language="java"  import="java.util.*,com.blog.system.Dto.*" pageEncoding="gbk"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
		<title>BLOG</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
	<%UserBean ub = (UserBean)request.getAttribute("userinfo");
		String userid = (String)request.getAttribute("userid");
		int userid1= Integer.parseInt(userid);
			int userid2;
			if (session.getAttribute("viewuserid") == null) {
				userid2 = 0;
			} else {
				userid2 = (Integer) session.getAttribute("viewuserid");
			}%>
		<table width="750" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="95" class="ftt" style="padding: 20px 0px 0px 30px;">
					<strong><%=ub.getBlogname() %></strong>
				</td>
				<td width="320" class="f14_ff" style="padding: 20px 0px 0px 20px;">
					<strong>     <img src="images/icon_daily.png" width="15" height="13" align="absmiddle" style="margin-right:5px;"/><a href="dailydo?userid=<%=userid %>">��־</a>
    <img src="images/icon_pics.png" width="16" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;" /><a href="photoalbumlistdo?userid=<%=userid %>">���</a>
    <img src="images/icon_message.png" width="15" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;"/><a href="messagedo?blogid=<%=userid %>">����</a>
    <%if(userid1==userid2){ %><img src="images/icon_infor.png" width="16" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;"/><a href="userdo?param=singleuser&userid=<%=userid %>">��������</a> <%} %></strong>
				</td>
			</tr>
		</table>
		<table width="789" border="0" align="center" cellpadding="0"
			cellspacing="0" style="margin-top: -25px;">
			<tr>
				<td height="30" background="images/p_1.png">
					&nbsp;
				</td>
			</tr>
		</table>

		<table width="789" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" background="images/p_2.png">

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="left" valign="top">
								<form name="upform" action="UploadServlet" method="post"
									enctype="multipart/form-data">
									<table width="85%" border="0" align="right" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="30">
												<strong class="f14_000">�ϴ�ͼƬ</strong>
											</td>
										</tr>
										<tr>
											<td height="6">
												<img src="images/line.png" width="425" height="6" />
											</td>
										</tr>
										<tr>
											<td height="50" class="f12_000">
												<strong>�ˣ���ѡ��Ҫ�ϴ����ļ�������д��Ӧ��Ϣ</strong><strong></strong>
											</td>
										</tr>
										<tr>
											<td width="200" align="left" valign="middle" class="f12_blue">
												��ѡ��Ҫ�ϴ����ļ������ļ���С���ó���5Mb��
											</td>
										</tr>


										<tr>
											<td width="100%">
												<input type="file" name="file"/>
												<br />
												�ϴ�ͼƬ���ƣ�
												<input type="text" name="photoname" />
												<br/>
												�ϴ�ͼƬ������
												<input type="text" name="photodepict" />
												<input type="hidden" name="userid" value="<%=userid %>"/>
												<br />
											</td>
										</tr>
										<tr>
											<td height="50" align="right">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td>
															&nbsp;
														</td>
														<td width="67" height="18" align="center" class="f12_000">
															<input type="submit" name="submit" value="�ϴ�" />
														</td>
														<td width="10">
															&nbsp;
														</td>
														<td width="67" height="18" align="center"
															style="background-repeat: no-repeat;" class="f12_000">
															<input type="reset" value="����" />
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</form>
							</td>
							<td width="260" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="300" align="left" valign="top"
											style="background: url(images/left1_bg.png) top no-repeat;">

											<table width="70%" border="0" align="center" cellpadding="0"
												cellspacing="0" style="margin-top: 40px;">
												<tr></tr>
												<tr>
													<td height="80" align="center"
														background="images/pics_bg.png"
														style="background-repeat: no-repeat; background-position: center;">
														<img src="img/02.jpg" width="48" height="48" />
													</td>
												</tr>
												<tr>
													<td height="25" align="center" class="f12_000"
														style="border-bottom: 1px #FFFFBE dotted;">
														<strong><br></strong>
													</td>
												</tr>
												<tr>
													<td height="30" class="f12_000" style="padding-left: 10px;">
														�ǳƣ�<%=ub.getNickname() %>
													</td>
												</tr>
												<tr>
													<td height="30" class="f12_000" style="padding-left: 10px;"><br></td>
												</tr>
												<tr>
													<td height="30" class="f12_000" style="padding-left: 10px;"><a href="bloglistdo">���ز���ϵͳ��ҳ</a><br></td>
												</tr>
												<tr>
													<td height="30" class="f12_000" style="padding-left: 10px;"><br></td>
												</tr>
											</table>

										</td>
									</tr>
								</table>
														<table width="75%" height="510" border="0" align="center"
									cellpadding="0" cellspacing="0" style="margin-top: 9px;">

								</table>
										</td>
									</tr>
								</table>

							</td>
						</tr>
					</table>
		<table width="809" border="0" align="center" cellpadding="0"
			cellspacing="0"
			style="background: url(images/foot_bg.png) no-repeat 8px 0;">
			<tr>
				<td height="92" valign="top">

					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						style="margin-top: 4px;">
						<tr>
							<td height="30" align="center" valign="middle" class="f12_000">��Ρ� ��Ȩ����<br></td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</body>
</html>
