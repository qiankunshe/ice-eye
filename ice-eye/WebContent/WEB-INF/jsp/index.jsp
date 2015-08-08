<%@ page contentType="text/html; charset=utf-8"%>

<div class="sidebar">
	<a href="" class="logo">ice-eye <small>ice性能监控平台</small></a>
	<div class="nav-sider" id="menubar">
		<a class="item menu-panel active" data-type="menu" data-menu="panel">主流程概览</a>
		<span class="line"></span> <a class="item menu-performance"
			data-type="menu" data-menu="performance">页面性能</a> <a
			class="item menu-cdn" data-type="menu" data-menu="cdn">CDN质量监测 <span
			class="label label-important">NEW</span></a> <a class="item menu-jserror"
			data-type="menu" data-menu="jserror">页面JS脚本错误</a> <a
			class="item menu-ubalert" data-type="menu" data-menu="ubalert">表单填写警告</a>
		<span class="line"></span> <a class="item menu-pv" data-type="menu"
			data-menu="pv">访问量(pv)</a> <a class="item menu-jstrack"
			data-type="menu" data-menu="jstrack">第三方JS引用</a> <span class="line"></span>
		<a class="item menu-uvt" data-type="menu" data-menu="uvt">用户浏览跟踪</a> <a
			target="_blank" href="#" class="item menu-useraction">UserAction
			<span class="label label-info">Beta~</span>
		</a> <span class="line"></span> <a href="#" class="item menu-feed"
			data-type="menu" data-menu="feed">邮件订阅</a> <a href="#"
			class="item menu-history" data-type="menu" data-menu="history">我的浏览记录</a>
		<span class="line"></span> <a target="_blank" href="#"
			class="item menu-ubtdoc">UBT采集代码监测与部署</a> <a href="#"
			class="item menu-update" data-type="menu" data-menu="update">版本更新</a>
		<a href="#" class="item menu-help" data-type="menu" data-menu="help">使用帮助</a>
		<span class="line"></span>
	</div>
</div>

<div class="row-content">
	<div class="navbar navbar-fixed-top" id="topnavbar">
		<div class="navbar-inner">
			<ul class="nav">
				<li class="dropdown active"><a class="dropdown-toggle"
					data-toggle="dropdown">面板1 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a data-type="department" data-name="term"
							data-value="45">面板1</a></li>
						<li><a data-type="department" data-name="term"
							data-value="43">面板2</a></li>
						<li><a data-type="department" data-name="term"
							data-value="48">面板3</a></li>
					</ul></li>
			</ul>
		</div>
	</div>


	<div class="navbar-placeholder"></div>
	<div class="alert alert-info hide" id="alertMsg" style="display: none;"></div>
	<div id="basetip"></div>
	<div class="clearfix page-header">
		<h2 class="pull-left">
			<span data-type="back" id="pageback" class="pageback"
				style="display: none;"><i
				class="icon-step-backward icon-white"></i>返回</span><span id="pagetitle">主流程概览</span>
		</h2>

		<div class="pull-right">
			<a class="totip" title="" href="mailto:262800095@qq.com"
				data-original-title="点此发邮件"><i class="icon-envelope opacity-5"></i>
				联系技术支持</a>
		</div>
		<div class="pull-right">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
				class="icon-user opacity-5"></i> 浮生 <b class="caret opacity-5"
				style="margin: 9px 0 0;"></b></a>
			<ul class="dropdown-menu" style="min-width: 100px">
				<li><a id="logout" href="#">注销！</a></li>
			</ul>
		</div>
		<div class="pull-right">
			<a href="javascript:;" data-type="full-screen"><i
				class=" icon-resize-full opacity-5"></i> 显示全屏</a>
		</div>
	</div>
	<div id="pagehelp-content" class="hide" style="display: none;">
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th width="">名词 <b class="caret"></b></th>
					<th width="">解释与说明 <b class="caret"></b></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="">pageid</td>
					<td width="">每个页面分配唯一的pageid，用来做页面级别的用户行为数据关联</td>
				</tr>
				<tr>
					<td width="">pvid</td>
					<td width="">页面流关联id。用户每次访问一个页面，就累计加1</td>
				</tr>
				<tr>
					<td width="">sessionid</td>
					<td width="">持续操作id。用户在30分钟之内连续操作页面，sessionid不变。若超过30分钟没有任何操作，则重新分配sessionid</td>
				</tr>

				<tr>
					<td width="">vid</td>
					<td width="">标示唯一电脑+浏览器。如果用户在同一电脑同一浏览器访问，则vid永远不变</td>
				</tr>
				<tr>
					<td width="">frooffline_mid</td>
					<td width="">访问流中上一个页面的pageid</td>
				</tr>
			</tbody>
		</table>
	</div>


	<div class="container-headbar clearfix" data-toolbar="panel-home">
		<div id="toolbar-left" class="btn-toolbar pull-left">
			<div class="btn-group" id="toolbar-channel">
				<button class="btn btn-small dropdown-toggle" data-toggle="dropdown">
					<i class="icon-list-alt"></i> <span>Onload Time</span>
				</button>
				<ul class="dropdown-menu" id="navchannel">
					<li><a href="javascript:;" data-type="pchannel"
						data-name="Onload Time">Onload Time</a></li>
					<li><a href="javascript:;" data-type="pchannel"
						data-name="访问最慢城市">访问最慢城市</a></li>
					<li><a href="javascript:;" data-type="pchannel"
						data-name="热门城市访问速度"> 热门城市访问速度</a></li>
					<li><a href="javascript:;" data-type="pchannel"
						data-name="实时1分钟 访问量">实时1分钟 访问量</a></li>
					<li><a href="javascript:;" data-type="pchannel"
						data-name="访客浏览器比例">访客浏览器比例</a></li>
					<li><a href="javascript:;" data-type="pchannel"
						data-name="访客设备比例">访客设备比例</a></li>
				</ul>
			</div>
			<div class="btn-group" id="toolbar-pretime">
				<button class="btn btn-small btn-success" data-type="realtime"
					data-realtime="0">
					<i class="icon-play-circle icon-white"></i> 实时
				</button>
				<button class="btn btn-small" data-type="pretime" data-pretime="-0d">今天</button>
				<button class="btn btn-small" data-type="pretime" data-pretime="-1d">昨天</button>
				<button class="btn btn-small" data-type="pretime" data-pretime="-7d">前7天</button>
			</div>
			<div class="btn-group" id="toolbar-quicktime">
				<button class="btn btn-small" data-type="quick-date"
					data-quick-date="-" data-toggle="tooltip" data-placement="top"
					title="" data-original-title="上一时段">
					<i class="icon-arrow-left"></i>
				</button>
				<button class="btn btn-small disabled" data-type="quick-date"
					data-quick-date="+" data-toggle="tooltip" data-placement="top"
					title="" data-original-title="当前为最新时段">
					<i class="icon-arrow-right"></i>
				</button>
			</div>
			<div class="btn-group" id="toolbar-time">
				<div class="input-prepend filterwrap">
					<input type="text" class="filterinput" id="chooseStartTime"
						placeholder="设置开始时间" readonly=""
						data-placeholder="2015-08-06 14:52:00">
					<button class="btn btn-small filterinput-line" tabindex="-1">-</button>
					<input type="text" class="filterinput" id="chooseEndTime"
						placeholder="设置结束时间" readonly=""
						data-placeholder="2015-08-06 15:57:00"> <span
						class="filterday" id="chooseStartTimeDay">周四</span> <span
						class="filterday" id="chooseEndTimeDay">周四</span>
				</div>
			</div>
			<div class="btn-group" id="toolbar-domestic">
				<button class="btn btn-small dropdown-toggle" data-toggle="dropdown">
					<span>全部</span>数据 <b class="caret"></b>
				</button>
				<ul class="dropdown-menu">
					<li><a href="javascript:;" data-type="domestic" data-value="Y">国内</a></li>
					<li><a href="javascript:;" data-type="domestic" data-value="N">国外</a></li>
					<li><a href="javascript:;" data-type="domestic"
						data-value="all">全部</a></li>
				</ul>
			</div>
			<div class="btn-group" id="toolbar-refresh">
				<button class="btn btn-small" data-type="refresh">
					<i class="icon-refresh"></i> 刷新
				</button>
			</div>
		</div>
		<div id="toolbar-right" class="btn-toolbar pull-right"></div>
	</div>
	<div id="container">
		<div id="panels">
			<div class="row-fluid panels-01">
				<div class="span4 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> <a href="index1.html">Onload
									Time</a>
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-chart" id="OnloadTimeChart"
								style="height: 320px; position: relative;"
								data-highcharts-chart="3"></div>
						</div>
					</div>
				</div>




				<div class="span4 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> <a href="index2.html">Onload
									Wrong</a>
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-chart" id="OnLoadWrong"
								style="height: 320px; position: relative;"
								data-highcharts-chart="3"></div>
						</div>
					</div>
				</div>


				<div class="span2 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> 访问最慢城市
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-table" id="uid-14388478263451360145521"
								style="height: 320px; position: relative;">
								<table class="table table-condensed">
									<thead>
										<tr>
											<th>城市</th>
											<th width="70" style="text-align: right;">Onload</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Dallas</td>
											<td style="text-align: right;"><span class="muted">88334ms</span></td>
										</tr>
										<tr>
											<td>Houston</td>
											<td style="text-align: right;"><span class="muted">75126ms</span></td>
										</tr>
										<tr>
											<td>南阳</td>
											<td style="text-align: right;"><span class="muted">60677ms</span></td>
										</tr>
										<tr>
											<td>绥化</td>
											<td style="text-align: right;"><span class="muted">50468ms</span></td>
										</tr>
										<tr>
											<td>枣庄</td>
											<td style="text-align: right;"><span class="muted">41164ms</span></td>
										</tr>
										<tr>
											<td>临汾</td>
											<td style="text-align: right;"><span class="muted">39330ms</span></td>
										</tr>
										<tr>
											<td>Paris</td>
											<td style="text-align: right;"><span class="muted">38436ms</span></td>
										</tr>
										<tr>
											<td>Kota Bharu</td>
											<td style="text-align: right;"><span class="muted">36057ms</span></td>
										</tr>
										<tr>
											<td>咸宁</td>
											<td style="text-align: right;"><span class="muted">35662ms</span></td>
										</tr>
										<tr>
											<td>日照</td>
											<td style="text-align: right;"><span class="muted">35205ms</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>


				<div class="span2 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> 热门城市访问速度
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-table" id="uid-14388478263551117381966"
								style="height: 320px; position: relative;">
								<table class="table table-condensed">
									<thead>
										<tr>
											<th>城市</th>
											<th width="70" style="text-align: right;">Onload</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>上海</td>
											<td style="text-align: right;"><span class="muted">11906ms</span></td>
										</tr>
										<tr>
											<td>北京</td>
											<td style="text-align: right;"><span class="muted">10894ms</span></td>
										</tr>
										<tr>
											<td>广州</td>
											<td style="text-align: right;"><span class="muted">13376ms</span></td>
										</tr>
										<tr>
											<td>深圳</td>
											<td style="text-align: right;"><span class="muted">13234ms</span></td>
										</tr>
										<tr>
											<td>西安</td>
											<td style="text-align: right;"><span class="muted">17290ms</span></td>
										</tr>
										<tr>
											<td>成都</td>
											<td style="text-align: right;"><span class="muted">16651ms</span></td>
										</tr>
										<tr>
											<td>郑州</td>
											<td style="text-align: right;"><span class="muted">10736ms</span></td>
										</tr>
										<tr>
											<td>哈尔滨</td>
											<td style="text-align: right;"><span class="muted">13038ms</span></td>
										</tr>
										<tr>
											<td>香港</td>
											<td style="text-align: right;"><span class="muted">9802ms</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row-fluid panels-02">
				<div class="span4 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> 实时1分钟 访问量
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-count" id="uid-14388478263618319876438"
								style="height: 320px; width: 443px; position: relative;">
								<ul class="unstyled">
									<li><h2>33</h2> <small>频道首页</small></li>
									<li><h2>139</h2> <small>搜索结果页</small></li>
									<li><h2>212</h2> <small>酒店详情页</small></li>
									<li><h2>20</h2> <small>填写订单信息页</small></li>
									<li><h2>6</h2> <small>成功提交订单页</small></li>
									<li><h2>11</h2> <small>搜索无结果页</small></li>
									<li><h2>12</h2> <small>地图搜索页</small></li>
									<li><h2>1</h2> <small>地图搜索无结果页</small></li>
								</ul>
								<h6 class="muted tr">数据获取时间：2015-08-06 15:46:00</h6>
							</div>
						</div>
					</div>
				</div>



				<div class="span4 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> 访客浏览器比例
							</h3>
						</div>
						<div class="panel-content">
							<div class="panel-chart" id="VistBroswerChart"
								style="height: 320px; position: relative;"
								data-highcharts-chart="3"></div>
						</div>
					</div>
				</div>



				<div class="span4 panel-span">
					<div class="panel">
						<div class="panel-header">
							<h3>
								<i class="icon-list-alt"></i> 访客设备比例
							</h3>
						</div>
						<div class="panel-content"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>