<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jq.aspx.cs" Inherits="WebApplication7.jq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="News Times Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'/>
    <title></title>
</head>
<body>
    <div class="banner1">
		<div class="banner-info1">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="share ball.html"><span>B</span> share ball</a>
						</div>
					</div>
                    </nav>
                    </div>
            </div>
        </div>
  <div class="footer">
		<div class="container">
			<div class="footer-grids">
                 <form runat="server">
				<div class="col-md-4 footer-grid-left">
					<h3>借球</h3>
						<p style="color: white">请输入篮球编号</p>
						<asp:TextBox ID="TextBox1" runat="server" value="enter your full name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your full name';}" required=""></asp:TextBox>
						<p style="color: white">请输入用户名</p>
						<asp:TextBox ID="TextBox2" runat="server" value="enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your email address';}" required=""></asp:TextBox>
						<asp:Button ID="Button1" runat="server" Font-Names="微软雅黑" Text="借球" OnClick="Button1_Click" Font-Underline="True" />
					</div>
                    <div class="col-md-4 footer-grid-left">
                    <h3>还球</h3>
						<p style="color: white">请输入用户名</p>
						<asp:TextBox ID="TextBox3" runat="server" value="enter your full name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your full name';}" required=""></asp:TextBox>
						<asp:Button ID="Button2" runat="server" Font-Names="微软雅黑" Text="还球" OnClick="Button2_Click" Font-Underline="True" />
				</div>
                     </form>
				<div class="clearfix"> </div>
			</div>
			<div class="footer-bottom">
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
    <asp:Label ID="Label1" runat="server" ForeColor="#ff3300"></asp:Label>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
    <div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="https://nba.hupu.com/" target="_blank">虎扑NBA中文网</a></li>
								</ul>
							</div>
							<h3>NBA直播、视频、图片、新闻及分析</h3>
							<div class="dummy">
								<p>拥有良好氛围的NBA火箭,湖人,热火等全部NBA球队论坛</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt1">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://www.ilanqiu.com/" target="_blank" class="sport">篮球技术网</a></li>
								</ul>
							</div>
							<h3>篮球技术、篮球战术、篮球录像、篮球规则等</h3>
							<div class="dummy">
								<p>你想了解的这里都有</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt2">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://www.tbba.com.cn/" target="_blank" class="plane">TBBA篮球中文网</a></li>
								</ul>
							</div>
							<h3>CBA最新报道和街头篮球、篮球教学、篮球知识普及等</h3>
							<div class="dummy">
								<p>中国第一篮球门户网站</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt3">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://www.otnba.com/"  target="_blank" class="general">OTNBA</a></li>
								</ul>
							</div>
							<h3>了解NBA最新信息，学习篮球知识</h3>
							<div class="dummy">
								<p>为篮球爱好者提供学习NBA篮球技术</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grids">
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt4">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://sports.sina.com.cn/nba/" target="_blank" class="pol">新浪NBA</a></li>
								</ul>
							</div>
							<h3>提供NBA中国赛、NBA常规赛、NBA总决赛</h3>
							<div class="dummy">
								<p>NBA官方授权视频直播网站</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt5">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://sports.qq.com/" target="_blank" class="world">腾讯体育</a></li>
								</ul>
							</div>
							<h3>NBA、CBA、综合体育、奥运、直播等</h3>
							<div class="dummy">
								<p>中国人气最旺的体育门户网站</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt6">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://sports.sohu.com/nba/" target="_blank" class="national">搜狐视频体育频道</a></li>
								</ul>
							</div>
							<h3>视频直播CBA、英超、亚冠、中超等赛事</h3>
							<div class="dummy">
								<p>视频报道体育界各类新鲜资讯、体育明星独家访谈等</p>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt7">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="http://china.nba.com/" target="_blank" class="business">NBA中国官方网站</a></li>
								</ul>
							</div>
							<h3>NBA中国官方网站</h3>
							<div class="dummy">
								<p>NBA中国官方网站，满足你的好奇心</p>
							</div>

						</div>
					</div>
				</div>
                </div>
            </div>
        </div>
</body>
</html>

