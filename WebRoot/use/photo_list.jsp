<%@ page language="java" import="java.util.*,com.blog.system.Dto.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>BLOG</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%UserBean ub = (UserBean)request.getAttribute("userinfo");
String userid = (String)request.getAttribute("userid");
int userid1 = Integer.parseInt(userid);
		int page1 = Integer.parseInt(request.getAttribute("page")
													.toString());
											int size = Integer
													.parseInt(request.getAttribute("size").toString());
											int count = Integer.parseInt(request.getAttribute("count")
													.toString());  
String albumname = (String)request.getAttribute("albumname");
int albumid = (Integer)request.getAttribute("albumid");
session.setAttribute("albumid",albumid); 
int userid2;
			if(session.getAttribute("viewuserid")==null){
				userid2 = 0;
			}else{
				userid2 = (Integer)session.getAttribute("viewuserid");
			}%>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="95" class="ftt" style="padding:20px 0px 0px 30px;"><strong><%=ub.getBlogname() %></strong></td>
    <td width="320" class="f14_ff" style="padding:20px 0px 0px 20px;">
    <strong>
    <img src="images/icon_daily.png" width="15" height="13" align="absmiddle" style="margin-right:5px;"/><a href="dailydo?userid=<%=userid %>">��־</a>
    <img src="images/icon_pics.png" width="16" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;" /><a href="photoalbumlistdo?userid=<%=userid %>">���</a>
    <img src="images/icon_message.png" width="15" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;"/><a href="messagedo?blogid=<%=userid %>">����</a>
    <%if(userid2==userid1){ %><img src="images/icon_infor.png" width="16" height="16" align="absmiddle" style="margin:0px 5px 0px 10px;"/><a href="userdo?param=singleuser&userid=<%=userid %>">��������</a><%} %>
    </strong></td>
  </tr>
</table>
<table width="789" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:-25px;">
  <tr>
    <td height="30" background="images/p_1.png" >&nbsp;</td>
  </tr>
</table>

<table width="789" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td valign="top" background="images/p_2.png">
    <form method="post" action="photodo?param=preupload&userid=<%=ub.getUserid() %>">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="85%" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td height="30"><strong class="f12_000">�ҵ����:<%=albumname %></strong></td>
          </tr>
          <tr>
            <td height="35"><%
					if (userid2==userid1) {
				%><input name="input" type="submit" value="�ϴ���Ƭ" /><%} %></td>
          </tr>
          <tr>
            <td height="6"><img src="images/line.png" width="425" height="6" /></td>
          </tr>
          <tr>
            <td align="left" valign="top" class="f12_t">
            <%Collection photo = (Collection) request.getAttribute("photo");
							Iterator it = photo.iterator();
							int j = 0;
							while (it.hasNext()) {
								PhotoBean pb = (PhotoBean) it.next();
								if(j%3==0){
								%>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
              <%} %>
                 <td width="140"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
                  <tr>
                    <td width="150" height="113" align="center" valign="middle"><a href="photocdo?photoid=<%=pb.getPhotoid() %>"><img src="<%=pb.getPhotoaddress() %>" width="140" height="113" /></a></td>
                  </tr>
                  <tr>
                    <td height="25" align="center" ><%=pb.getPhotoname() %></td>
                  </tr>
                  <tr >
                  <td align = "center"><%if (userid2==userid1) {
				%><a href = "photodo?param=del&photoid=<%=pb.getPhotoid()%>&userid=<%=pb.getUserid() %>">ɾ��</a>&nbsp;&nbsp;&nbsp;
				  <a href = "photodo?param=preupdate&photoid=<%=pb.getPhotoid()%>&userid=<%=pb.getUserid() %>&albumid=<%=albumid%>">�޸�</a>
				  <%} %>
				  </td>
                  </tr>
                </table>
               </td>
               <%
               if((j+1)==count){
               		if(j%3==1){
               			%><td width="140">&nbsp;</td>
               			<td width="140">&nbsp;</td>
               		<%}else if(j%3==2){
               			%><td width="140">&nbsp;</td>
               		<%
               		}
               }
               
               if(j%3==2){ %>
              </tr>
            </table>
            <%}j++;} %>
            </td>
          </tr>
        </table></td>
        <td width="260" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="300" align="left" valign="top" style="background:url(images/left1_bg.png) top no-repeat;">
            
            <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:40px;">
              <tr></tr>
              <tr>
                <td height="80" align="center" background="images/pics_bg.png" style="background-repeat:no-repeat; background-position:center;"><img src="img/02.jpg" width="48" height="48" /></td>
              </tr>
              <tr>
                <td height="25" align="center" class="f12_000" style="border-bottom:1px #FFFFBE dotted;"><strong><br /></strong></td>
              </tr>
              <tr>
                <td height="30" class="f12_000" style="padding-left:10px;">�ǳƣ�<%=ub.getNickname() %></td>
              </tr>
              <tr>
                <td height="30" class="f12_000" style="padding-left:10px;"><br /></td>
              </tr>
              <tr>
                <td height="30" class="f12_000" style="padding-left:10px;"><a href="bloglistdo">���ز���ϵͳ��ҳ</a><br /></td>
              </tr>
              <tr>
                <td height="30" class="f12_000" style="padding-left:10px;"><br /></td>
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
<table width="809" border="0" align="center" cellpadding="0" cellspacing="0" style="background:url(images/foot_bg.png) no-repeat 8px 0;">
  <tr>
    <td height="92" valign="top">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:4px;">
      <tr>
        <td height="30" valign="middle" align="center" class="f12_000">��Ρ� ��Ȩ����<br /></td>
      </tr>
    </table>
    
    </td>
  </tr>
</table>
</body>
</html>
