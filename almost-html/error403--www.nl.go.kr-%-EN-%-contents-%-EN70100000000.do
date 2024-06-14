<!DOCTYPE HTML>
<!--[if IE 9 ]> <html lang="ko" class="ie9"> <![endif]-->
<html lang="en"><head>
<title>National Library of Korea>Footer>Privacy Policy </title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maxmum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no" />
	<link rel="shortcut icon" href="/resource/templete/nl/common/img/common/favicon.png" />
		<link rel="apple-touch-icon" href="/resource/templete/nl/common/img/common/favicon.png"/>
	<meta name="keywords" content="국립중앙도서관" />
	<meta name="description" content="국립중앙도서관에 오신 것을 환영합니다" />
	<meta name="robots" content="INDEX,FOLLOW">
		<meta property="og:image" content="/resource/templete/nl/common/img/common/favicon.png"/>
	<meta property="og:url" content="https://www.nl.go.kr/EN/"/>
	<meta property="og:description" content="국립중앙도서관에 오신 것을 환영합니다"/>
	<meta property="og:title" content="국립중앙도서관"/>
<!--header-->
	<script>
		var isOldIe = false;
	</script>
	<!--[if lt IE 10]>
		<script>
			isOldIe = true;
		</script>
	<![endif]-->
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-65875867-3"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-65875867-3');
	</script>

	<!-- national library lib -->
	<!-- CSS정리 -->
	<!-- CSS정리 : 공통 -->
	<link rel="stylesheet" type="text/css" href="/resource/common/css/slick.css?v=2024061101"    onload="this.media='all';">
	<link rel="stylesheet" type="text/css" href="/resource/common/css/jquery.scrollbar.css?v=2024061101"    onload="this.media='all';">
	<link rel="stylesheet" type="text/css" href="/resource/common/css/jquery.bxslider.min.css?v=2024061101"    onload="this.media='all';">
	<link rel="stylesheet" type="text/css" href="/resource/common/css/datepicker.css?v=2024061101"    onload="this.media='all';">
	<!-- CSS정리 : 서브용 -->
    <link rel="stylesheet" type="text/css" href="/resource/common/css/asRange.css"    onload="this.media='all';">
	<!-- //CSS정리 -->
	<script src="/resource/common/js/jquery-1.12.3.min.js"></script>	
		<script defer src="/resource/common/js/slick.js"></script>
	<script src="/resource/common/js/bootstrap-datepicker.js"></script>
	<script defer src="/resource/common/js/jquery.bxslider.min.js"></script>
	<script defer src="/resource/common/js/jquery.scrollbar.js"></script>
	<script defer src="/resource/common/js/jquery.outside.js"></script>
    <script defer src="/resource/common/js/jquery-asRange.js"></script>
	<!-- //national library lib -->
	<!-- CMS COMMON lib--> 
	<script src="/resource/common/jquery_plugin/common_functions.js"></script>
		<script defer src="/resource/common/jquery_plugin/validation/validator.js"></script>
	<script defer src="/resource/common/jquery_plugin/validation/accessability.js"></script>
	<script defer src="/resource/common/jquery_plugin/popWin.js"></script>
    <link href="/resource/common/css/loading-spiner.css" rel="stylesheet" type="text/css" />
	<link href="/resource/common/jquery_plugin/validation/validator.css" rel="stylesheet" type="text/css" />
	<!-- //CMS COMMON lib -->
	<link rel="stylesheet" type="text/css" href="/resource/templete/en/common/common.css?v=2024061101" />
	<!-- CSS정리 -->
	<!-- CSS정리 : 서브용-->
	<link rel="stylesheet" type="text/css" href="/resource/templete/en/common/css/common.css?v=2024061101" />
	<link rel="stylesheet" type="text/css" href="/resource/templete/en/common/css/layout.css?v=2024061101" />
	<link rel="stylesheet" type="text/css" href="/resource/templete/en/css/import.css?v=2024061101" />
	<!-- //CSS정리 -->
	<!-- national library script -->
	<script defer defer src="/resource/templete/en/js/layout.js?v=2024061101"></script>
	<script defer src="/resource/templete/en/js/common.js?v=2024061101"></script><script defer src="/resource/templete/en/js/sub.js"></script>
<!--//header-->

<!--[if lte IE 9]><script src="/resource/common/js/html5shiv.js"></script><script src="/resource/common/js/respond.min.js"></script><![endif]-->

	<script>
		/*  */
		

		function goSearchForm(obj) {
			var frm = document.forms[obj];
			if (!frm.kwd.value) {
				alert("검색어를 입력해주세요.");
				frm.kwd.focus();
				return;
			}
			fn_setKwdLog(frm.kwd.value); //검색어 로그
			window.location = frm.action + "?" + $(frm).serialize();
		}
		
		//검색 검색 로그
		function fn_setKwdLog(logKwd) {
			var dataValue =  ({"logKwd":logKwd});
			

			$.ajax({
				url : '/NL/search/search_kwd_log.ajax',
				data : dataValue,
				type: 'POST',
				dataType : "json",
				//async : false,
				success: function(data) {
					//console.log();
				},
				error : function(xhr) {
					//alert(xhr.status);
				}
			});

		}

		function goSearchPCForm(obj) {
			var frm = document.forms[obj];
			var srchField = frm.subSrchField.value;
	
					
			if(srchField == "1"){
				if (!frm.kwd.value) {
					alert("검색어를 입력해주세요.");
					frm.kwd.focus();
					return false;
				}
				frm.action = "/NL/contents/search.do";
				window.location = frm.action + "?" + $(frm).serialize();
			}else if(srchField == "2"){
				if (!frm.kwd.value){
					alert('검색어를 입력하세요.');
					frm.kwd.focus();
					return false;
				}else{
					frm.insiteschStr.value = frm.kwd.value;
					document.forms[obj].action = "/NL/contents/N80100000000.do";
					window.location = frm.action + "?" + $(frm).serialize();
				}
			}else if(srchField == "3"){
				if (!frm.kwd.value){
					alert('검색어를 입력하세요.');
					frm.kwd.focus();
					return false;
				}else{
					var newWin = window.open("about:blank", "newWin");
					frm.schQuery.value = frm.kwd.value;
					frm.action = "https://onnaru.nl.go.kr/NLTS/contents/NT10000000.do";
					frm.target = "newWin";
					frm.submit();
				}
			}
		}
	
		function goSearchMoForm(obj) {
			var frm = document.forms[obj];
			var srchField = frm.moSchField.value;
			if(srchField == "1"){
				if (!frm.kwd.value) {
					alert("검색어를 입력해주세요.");
					frm.kwd.focus();
					return false;
				}
				frm.action = "/NL/contents/search.do";
				window.location = frm.action + "?" + $(frm).serialize();
			}else if(srchField == "2"){
				if (!frm.kwd.value){
					alert('검색어를 입력하세요.');
					frm.kwd.focus();
					return false;
				}else{
					frm.insiteschStr.value = frm.kwd.value;
					document.forms[obj].action = "/NL/contents/N80100000000.do";
					window.location = frm.action + "?" + $(frm).serialize();
				}
			}else if(srchField == "3"){
				if (!frm.kwd.value){
					alert('검색어를 입력하세요.');
					frm.kwd.focus();
					return false;
				}else{
					var newWin = window.open("about:blank", "newWin");
					frm.schQuery.value = frm.kwd.value;
					frm.action = "https://onnaru.nl.go.kr/NLTS/contents/NT10000000.do";
					frm.target = "newWin";
					frm.submit();
				}
			}
		}
	</script>
	<!-- 상세검색 추가 -->	
	</head>
<body class="sub">
<!-- skip -->
	<div id="skip" class="skip">
		<a href="#sub_content">Go to main contents</a>
				<a href="#menu-gnb">Go to the main menu</a>
			</div>
	<!-- // skip -->
	<!-- 본문 영역 -->
	<script type="text/javascript" src="/crosseditor4/js/namo_scripteditor.js"></script>
	<!-- header -->
	<div class="header-wrap">
		<div id="header" class="header">
            <!-- 헤더상단 -->
			<div class="header__inner-top">
				<div class="header__inner">
					<h1 class="logo">
						<a href="/EN/main/index.do">
							<img src="/resource/common/img/common/fixed_logo.png"  class="fixed-logo1" alt="Ministry of Culture, Sports and Tourism:National Library of Korea">
							<span class="sp_layout  defalt-logo">Ministry of Culture, Sports and Tourism:National Library of Korea</span>
						</a>
					</h1>
					<!-- 유틸 영역 -->
					<div class="header__utils-wrap">
						<ul class="header__utils">
							<li class="item"><a href="/EN/contents/EN60100000000.do" class="login">Login</a></li>
									<li class="item">
									<a href="#" onclick="javascript:member.fn_memberWeb ('join','EN','/EN/contents/EN60200000000.do','false');">Sign UP</a></li>
								<li class="item"><a href="/EN/contents/EN60300000000.do">My Library</a></li>
							<li class="item"><a href="/EN/contents/EN60400000000.do">Sitemap</a></li>
							<li class="item item-language is_item_closed"><a href="/" class="language">KOREAN</a></li>
						</ul>
					</div>
					<!-- 유틸 영역 -->
				</div>
			</div>
            <!-- //헤더상단 -->

			<!-- 헤더하단 -->
			<div class="header__inner-bottom">
				<div class="menu_bg"></div>
				<div id="menu-gnb" class="header__inner-gnb">
					<div class="menu-gnb-wrap">
						<ul class="menu-gnb-depth1">
	<li class="menu-gnb-depth1__item" id="GNB_EN50000000000">
		<a href='/EN/contents/EN50100000000.do' onclick='fn_wiseTracker("^GNB^Search");'  class="depth"><span>Search</span></a>
<div class='title_wrap'><strong><span>Search</span></strong></div>
<ul class="menu-gnb-depth2">
	<li class="menu-gnb-depth2__item" id="GNB_EN50100000000">
		<a href='/EN/contents/EN50100000000.do' onclick='fn_wiseTracker("^GNB^Search^Catalogue");' >Catalogue</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN50200000000">
		<a href='/EN/contents/EN50200000000.do' onclick='fn_wiseTracker("^GNB^Search^Digitized resource");' >Digitized resource</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN50400000000">
		<a href='/EN/contents/EN50400000000.do' onclick='fn_wiseTracker("^GNB^Search^Other Library Resources");' >Other Library Resources</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN50500000000">
		<a href='/EN/contents/EN50500000000.do' onclick='fn_wiseTracker("^GNB^Search^Downloadable Viewer Program");' >Downloadable Viewer Program</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN50600000000">
		<a href='/EN/contents/EN50600000000.do' onclick='fn_wiseTracker("^GNB^Search^Search Guide");' >Search Guide</a>
</ul>
	</li>
	<li class="menu-gnb-depth1__item" id="GNB_EN30000000000">
		<a href='/EN/contents/EN35100000000.do' onclick='fn_wiseTracker("^GNB^Collection");'  class="depth"><span>Collection</span></a>
<div class='title_wrap'><strong><span>Collection</span></strong></div>
<ul class="menu-gnb-depth2">
	<li class="menu-gnb-depth2__item" id="GNB_EN35100000000">
		<a href='/EN/contents/EN30100000000.do' onclick='fn_wiseTracker("^GNB^Collection^Digital Collection");' >Digital Collection</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35200000000">
		<a href='/EN/contents/EN35200000000.do' onclick='fn_wiseTracker("^GNB^Collection^Korean Newspaper Archive");' >Korean Newspaper Archive</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35300000000">
		<a href='/EN/contents/EN35300000000.do' onclick='fn_wiseTracker("^GNB^Collection^Official Gazette");' >Official Gazette</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35400000000">
		<a href='/EN/contents/EN35401000000.do' onclick='fn_wiseTracker("^GNB^Collection^Overseas Materials Related to Korea");' >Overseas Materials Related to Korea</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35500000000">
		<a href='/EN/contents/EN35500000000.do' onclick='fn_wiseTracker("^GNB^Collection^Recommend Book by NLK Librarian");' >Recommend Book by NLK Librarian</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35700000000">
		<a href='#none' onclick='fn_wiseTracker("^GNB^Collection^List of video data");' >List of video data</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35120000000">
		<a href='/EN/contents/EN35120000000.do' onclick='fn_wiseTracker("^GNB^Collection^Online Archiving & Searching Internet Sources&#40;OASIS&#41;");' >Online Archiving &amp; Searching Internet Sources(OASIS)</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35130000000">
		<a href='/EN/contents/EN35130000000.do' onclick='fn_wiseTracker("^GNB^Collection^Open Access Korea &#40;OAK&#41;");' >Open Access Korea (OAK)</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN35110000000">
		<a href='https://www.nl.go.kr/korcis/english/index.do' target='_blank' onclick='fn_wiseTracker("^GNB^Collection^Korean Old and Rare Collection Information System &#40;KORCIS&#41; ");this.blur()' title='Korean Old and Rare Collection Information System (KORCIS)  link KOR' ><span>Korean Old and Rare Collection Information System (KORCIS) </span></a>
</ul>
	</li>
	<li class="menu-gnb-depth1__item" id="GNB_EN40000000000">
		<a href='/EN/contents/EN40100000000.do' onclick='fn_wiseTracker("^GNB^Services");'  class="depth"><span>Services</span></a>
<div class='title_wrap'><strong><span>Services</span></strong></div>
<ul class="menu-gnb-depth2">
	<li class="menu-gnb-depth2__item" id="GNB_EN40100000000">
		<a href='/EN/contents/EN40101000000.do' onclick='fn_wiseTracker("^GNB^Services^Collection Development Policy");' >Collection Development Policy</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40200000000">
		<a href='/EN/contents/EN40201000000.do' onclick='fn_wiseTracker("^GNB^Services^Legal Deposit and Acquisition");' >Legal Deposit and Acquisition</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40300000000">
		<a href='/EN/contents/EN40300000000.do' onclick='fn_wiseTracker("^GNB^Services^Information Organization");' >Information Organization</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40400000000">
		<a href='/EN/contents/EN40400000000.do' onclick='fn_wiseTracker("^GNB^Services^Bibliography Publishing");' >Bibliography Publishing</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40500000000">
		<a href='/EN/contents/EN40501000000.do' onclick='fn_wiseTracker("^GNB^Services^Cooperative Activities");' >Cooperative Activities</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40600000000">
		<a href='/EN/contents/EN40600000000.do' onclick='fn_wiseTracker("^GNB^Services^Digitization");' >Digitization</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40700000000">
		<a href='/EN/contents/EN40700000000.do' onclick='fn_wiseTracker("^GNB^Services^Librarian Training");' >Librarian Training</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40800000000">
		<a href='/EN/contents/EN40800000000.do' onclick='fn_wiseTracker("^GNB^Services^International Standard Identifiers &#40;ISBN/ISSN/ISNI&#41;");' >International Standard Identifiers (ISBN/ISSN/ISNI)</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN40900000000">
		<a href='/EN/contents/EN40900000000.do' onclick='fn_wiseTracker("^GNB^Services^Research Information Services");' >Research Information Services</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN41000000000">
		<a href='/EN/contents/EN41001000000.do' onclick='fn_wiseTracker("^GNB^Services^IFLA PAC Korea Center");' >IFLA PAC Korea Center</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN41100000000">
		<a href='https://inkslib.nl.go.kr/IN/main/index.do' target='_blank' onclick='fn_wiseTracker("^GNB^Services^International Network for Korean Studies Librarians");this.blur()' title='International Network for Korean Studies Librarians link KOR' ><span>International Network for Korean Studies Librarians</span></a>
</ul>
	</li>
	<li class="menu-gnb-depth1__item" id="GNB_EN20000000000">
		<a href='/EN/contents/EN20100000000.do' onclick='fn_wiseTracker("^GNB^Using the Library");'  class="depth"><span>Using the Library</span></a>
<div class='title_wrap'><strong><span>Using the Library</span></strong></div>
<ul class="menu-gnb-depth2">
	<li class="menu-gnb-depth2__item" id="GNB_EN20100000000">
		<a href='/EN/contents/EN20100000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Opening Hours");' >Opening Hours</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN20200000000">
		<a href='/EN/contents/EN20200000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^How to Use the Library");' >How to Use the Library</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN20300000000">
		<a href='/EN/contents/EN20300000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Resource Rooms");' >Resource Rooms</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN20400000000">
		<a href='/EN/contents/EN20401000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Library Tours");' >Library Tours</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN20500000000">
		<a href='/EN/contents/EN20500000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Visiting the Library");' >Visiting the Library</a>
</ul>
	</li>
	<li class="menu-gnb-depth1__item" id="GNB_EN10000000000">
		<a href='/EN/contents/EN10100000000.do' onclick='fn_wiseTracker("^GNB^About the Library");'  class="depth"><span>About the Library</span></a>
<div class='title_wrap'><strong><span>About the Library</span></strong></div>
<ul class="menu-gnb-depth2">
	<li class="menu-gnb-depth2__item" id="GNB_EN10100000000">
		<a href='/EN/contents/EN10100000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Welcome Message");' >Welcome Message</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10200000000">
		<a href='/EN/contents/EN10200000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Chronology");' >Chronology</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10300000000">
		<a href='/EN/contents/EN10300000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Organization Chart");' >Organization Chart</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10400000000">
		<a href='/EN/contents/EN10400000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Facilities");' >Facilities</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10500000000">
		<a href='/EN/contents/EN10500000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Collection Statistics");' >Collection Statistics</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10600000000">
		<a href='/EN/contents/EN10600000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Cultural Assets");' >Cultural Assets</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10700000000">
		<a href='/EN/contents/EN10700000000.do' onclick='fn_wiseTracker("^GNB^About the Library^News");' >News</a>
	</li>
	<li class="menu-gnb-depth2__item" id="GNB_EN10800000000">
		<a href='/EN/contents/EN10800000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Video Clip");' >Video Clip</a>
</ul>
	</li>
</ul>
</div>
					<!-- 전체메뉴 영역 -->
					<div class="menu-tool-wrap">
						<button type="button" class="btn-open" aria-label="All menu">
							<span class="sp_layout">All menu</span>
						</button>
						<!-- 전체메뉴 -->
						<div class="menu-all-wrap">
							<div class="menu-all-inner">
								<h2 class="title">All menu</h2>
								<!-- 유틸영역(MOBILE) -->
								<div class="header__utils-wrap--mobile">
									<div class="personal-wrap">
												<em class="logo">
													<span class="sp_layout">National Library of Korea</span>
												</em>
												<div class="login-bx">
													<strong class="text">Please sign in<br>for convenience.</strong>
												</div>
												<a href="/EN/contents/N60100000000.do" class="login">Sign in</a>
											</div>
										</div>
								<!-- //유틸영역(MOBILE) -->
								<!-- 전체메뉴 -->
								<div class="menu-all-inner--scrollbox">
									<div class="menu-all-inner--scroll scrollbar-outer">
										<div class="menu-all-depth1">
											<div class="menu-all-depth1__item" id="MMAP_EN50000000000">
	<a href="/EN/contents/EN50100000000.do" class="depth depth1">Search</a>
	<div class="menu-all-depth1-category">
	<p class="depth1-title">Search</p>
<ul class="menu-all-depth2">
	<li class="menu-all-depth2__item" id="MMAP_EN50100000000">
		<a href='/EN/contents/EN50100000000.do' onclick='fn_wiseTracker("^GNB^Search^Catalogue");'  class="depth">Catalogue</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN50200000000">
		<a href='/EN/contents/EN50200000000.do' onclick='fn_wiseTracker("^GNB^Search^Digitized resource");'  class="depth">Digitized resource</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN50400000000">
		<a href='/EN/contents/EN50400000000.do' onclick='fn_wiseTracker("^GNB^Search^Other Library Resources");'  class="depth">Other Library Resources</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN50500000000">
		<a href='/EN/contents/EN50500000000.do' onclick='fn_wiseTracker("^GNB^Search^Downloadable Viewer Program");'  class="depth">Downloadable Viewer Program</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN50600000000">
		<a href='/EN/contents/EN50600000000.do' onclick='fn_wiseTracker("^GNB^Search^Search Guide");'  class="depth">Search Guide</a>
</ul>
	</div>
</div>
<div class="menu-all-depth1__item" id="MMAP_EN30000000000">
	<a href="/EN/contents/EN35100000000.do" class="depth depth1">Collection</a>
	<div class="menu-all-depth1-category">
	<p class="depth1-title">Collection</p>
<ul class="menu-all-depth2">
	<li class="menu-all-depth2__item" id="MMAP_EN35100000000">
		<a href='/EN/contents/EN30100000000.do' onclick='fn_wiseTracker("^GNB^Collection^Digital Collection");'  class="depth depth2">Digital Collection</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN34500000000">
		<a href='/EN/contents/EN34501000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^History and Future of National Health Insurance");'  class="depth depth3">History and Future of National Health Insurance</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34501000000">
		<a href='/EN/contents/EN34501000000.do' onclick='fn_wiseTracker("^SNB^History and Future of National Health Insurance^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN34502000000">
		<a href='/EN/contents/EN34502000000.do' onclick='fn_wiseTracker("^SNB^History and Future of National Health Insurance^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN34400000000">
		<a href='/EN/contents/EN34401000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Collection of Overseas Koreans Foundation");'  class="depth depth3">Collection of Overseas Koreans Foundation</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34401000000">
		<a href='/EN/contents/EN34401000000.do' onclick='fn_wiseTracker("^SNB^Collection of Overseas Koreans Foundation^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN34402000000">
		<a href='/EN/contents/EN34402000000.do' onclick='fn_wiseTracker("^SNB^Collection of Overseas Koreans Foundation^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN34300000000">
		<a href='/EN/contents/EN34301000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Breaking down Barriers and Moving toward Liberation, Life of Female Fighters for the Korean Independence");'  class="depth depth3">Breaking down Barriers and Moving toward Liberation, Life of Female Fighters for the Korean Independence</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34301000000">
		<a href='/EN/contents/EN34301000000.do' onclick='fn_wiseTracker("^SNB^Breaking down Barriers and Moving toward Liberation, Life of Female Fighters for the Korean Independence^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN34302000000">
		<a href='/EN/contents/EN34302000000.do' onclick='fn_wiseTracker("^SNB^Breaking down Barriers and Moving toward Liberation, Life of Female Fighters for the Korean Independence^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN34200000000">
		<a href='/EN/contents/EN34201000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Epidemics and the Medical Books of the Joseon Dynasty");'  class="depth depth3">Epidemics and the Medical Books of the Joseon Dynasty</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34201000000">
		<a href='/EN/contents/EN34201000000.do' onclick='fn_wiseTracker("^SNB^Epidemics and the Medical Books of the Joseon Dynasty^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN34202000000">
		<a href='/EN/contents/EN34202000000.do' onclick='fn_wiseTracker("^SNB^Epidemics and the Medical Books of the Joseon Dynasty^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN34100000000">
		<a href='/EN/contents/EN34101000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Ten years of Digital Library; Its Journey has been Recorded!");'  class="depth depth3">Ten years of Digital Library; Its Journey has been Recorded!</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34101000000">
		<a href='/EN/contents/EN34101000000.do' onclick='fn_wiseTracker("^SNB^Ten years of Digital Library; Its Journey has been Recorded!^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN34102000000">
		<a href='/EN/contents/EN34102000000.do' onclick='fn_wiseTracker("^SNB^Ten years of Digital Library; Its Journey has been Recorded!^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN34000000000">
		<a href='/EN/contents/EN34001000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^History of National Library of Korea through Photography");'  class="depth depth3">History of National Library of Korea through Photography</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN34001000000">
		<a href='/EN/contents/EN34001000000.do' onclick='fn_wiseTracker("^SNB^History of National Library of Korea through Photography^Introduction");'  class="depth depth4">Introduction</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN35800000000">
		<a href='/EN/contents/EN35801000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Prize-Winners of Korean Children’s Literature");'  class="depth depth3">Prize-Winners of Korean Children’s Literature</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN35801000000">
		<a href='/EN/contents/EN35801000000.do' onclick='fn_wiseTracker("^SNB^Prize-Winners of Korean Children’s Literature^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN35802000000">
		<a href='/EN/contents/EN35802000000.do' onclick='fn_wiseTracker("^SNB^Prize-Winners of Korean Children’s Literature^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN35900000000">
		<a href='/EN/contents/EN35901000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^The Korean Independence Movement through the U.S. Documents");'  class="depth depth3">The Korean Independence Movement through the U.S. Documents</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN35901000000">
		<a href='/EN/contents/EN35901000000.do' onclick='fn_wiseTracker("^SNB^The Korean Independence Movement through the U.S. Documents^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN35902000000">
		<a href='/EN/contents/EN35902000000.do' onclick='fn_wiseTracker("^SNB^The Korean Independence Movement through the U.S. Documents^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN36000000000">
		<a href='/EN/contents/EN36010000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Export Promotion and the Korean Economy");'  class="depth depth3">Export Promotion and the Korean Economy</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN36010000000">
		<a href='/EN/contents/EN36010000000.do' onclick='fn_wiseTracker("^SNB^Export Promotion and the Korean Economy^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN36020000000">
		<a href='/EN/contents/EN36020000000.do' onclick='fn_wiseTracker("^SNB^Export Promotion and the Korean Economy^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN36100000000">
		<a href='/EN/contents/EN36101000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Research Materials of Migration Policies");'  class="depth depth3">Research Materials of Migration Policies</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN36101000000">
		<a href='/EN/contents/EN36101000000.do' onclick='fn_wiseTracker("^SNB^Research Materials of Migration Policies^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN36102000000">
		<a href='/EN/contents/EN36102000000.do' onclick='fn_wiseTracker("^SNB^Research Materials of Migration Policies^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30100000000">
		<a href='/EN/contents/EN30101000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Rare Books of Korea &#40;National Library of Korea Collection&#41;");'  class="depth depth3">Rare Books of Korea (National Library of Korea Collection)</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30102000000">
		<a href='/EN/contents/EN30102000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Old book");'  class="depth depth4">Old book</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30101000000">
		<a href='/EN/contents/EN30101000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30103000000">
		<a href='/EN/contents/EN30103000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Ancient document");'  class="depth depth4">Ancient document</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30104000000">
		<a href='/EN/contents/EN30104000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Book");'  class="depth depth4">Book</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30105000000">
		<a href='/EN/contents/EN30105000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Document");'  class="depth depth4">Document</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30106000000">
		<a href='/EN/contents/EN30106000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Series");'  class="depth depth4">Series</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30107000000">
		<a href='/EN/contents/EN30107000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^Map");'  class="depth depth4">Map</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30108000000">
		<a href='/EN/contents/EN30108000000.do' onclick='fn_wiseTracker("^SNB^Rare Books of Korea &#40;National Library of Korea Collection&#41;^National Treasure");'  class="depth depth4">National Treasure</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30200000000">
		<a href='/EN/contents/EN30201000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korea Related Materials before 1945");'  class="depth depth3">Korea Related Materials before 1945</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30201000000">
		<a href='/EN/contents/EN30201000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30202000000">
		<a href='/EN/contents/EN30202000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Generic");'  class="depth depth4">Generic</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30203000000">
		<a href='/EN/contents/EN30203000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Philosophy/Religion");'  class="depth depth4">Philosophy/Religion</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30204000000">
		<a href='/EN/contents/EN30204000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^History/Topography");'  class="depth depth4">History/Topography</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30205000000">
		<a href='/EN/contents/EN30205000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Linguistics/Literature");'  class="depth depth4">Linguistics/Literature</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30206000000">
		<a href='/EN/contents/EN30206000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Politics and Law/Economy/Military");'  class="depth depth4">Politics and Law/Economy/Military</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30207000000">
		<a href='/EN/contents/EN30207000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Social/Education");'  class="depth depth4">Social/Education</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30208000000">
		<a href='/EN/contents/EN30208000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Natural Science/Medical Science");'  class="depth depth4">Natural Science/Medical Science</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30209000000">
		<a href='/EN/contents/EN30209000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Engineering/Military");'  class="depth depth4">Engineering/Military</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30210000000">
		<a href='/EN/contents/EN30210000000.do' onclick='fn_wiseTracker("^SNB^Korea Related Materials before 1945^Industry/Traffic");'  class="depth depth4">Industry/Traffic</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30300000000">
		<a href='/EN/contents/EN30301000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^First Paperback Novel in Korean, Ttakjibon");'  class="depth depth3">First Paperback Novel in Korean, Ttakjibon</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30301000000">
		<a href='/EN/contents/EN30301000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30302000000">
		<a href='/EN/contents/EN30302000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Hero Novels");'  class="depth depth4">Hero Novels</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30303000000">
		<a href='/EN/contents/EN30303000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Social Novels");'  class="depth depth4">Social Novels</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30304000000">
		<a href='/EN/contents/EN30304000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Family Saga Novels");'  class="depth depth4">Family Saga Novels</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30305000000">
		<a href='/EN/contents/EN30305000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Detective Novels");'  class="depth depth4">Detective Novels</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30306000000">
		<a href='/EN/contents/EN30306000000.do' onclick='fn_wiseTracker("^SNB^First Paperback Novel in Korean, Ttakjibon^Romance Novels");'  class="depth depth4">Romance Novels</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN33000000000">
		<a href='/EN/contents/EN33010000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^The First issue of Korean Modern Magazines");'  class="depth depth3">The First issue of Korean Modern Magazines</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN33010000000">
		<a href='/EN/contents/EN33010000000.do' onclick='fn_wiseTracker("^SNB^The First issue of Korean Modern Magazineszines^Introducing of the First issue of the Magazine");'  class="depth depth4">Introducing of the First issue of the Magazine</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN33020000000">
		<a href='/EN/contents/EN33020000000.do' onclick='fn_wiseTracker("^SNB^The First issue of Korean Modern Magazineszines^Retrieved the Magazine");'  class="depth depth4">Retrieved the Magazine</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30400000000">
		<a href='/EN/contents/EN30401000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korean Textbooks over the Years: A Window into Korean Education");'  class="depth depth3">Korean Textbooks over the Years: A Window into Korean Education</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30401000000">
		<a href='/EN/contents/EN30401000000.do' onclick='fn_wiseTracker("^SNB^Korean Textbooks over the Years: A Window into Korean Education^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30402000000">
		<a href='/EN/contents/EN30402000000.do' onclick='fn_wiseTracker("^SNB^Korean Textbooks over the Years: A Window into Korean Education^Textbooks during the Enlightenment period");'  class="depth depth4">Textbooks during the Enlightenment period</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30403000000">
		<a href='/EN/contents/EN30403000000.do' onclick='fn_wiseTracker("^SNB^Korean Textbooks over the Years: A Window into Korean Education^Textbooks during the Japanese Occupation Period");'  class="depth depth4">Textbooks during the Japanese Occupation Period</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30404000000">
		<a href='/EN/contents/EN30404000000.do' onclick='fn_wiseTracker("^SNB^Korean Textbooks over the Years: A Window into Korean Education^Textbooks during the Liberation and Government Establishing Period");'  class="depth depth4">Textbooks during the Liberation and Government Establishing Period</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30500000000">
		<a href='/EN/contents/EN30501000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Great figures in Korea");'  class="depth depth3">Great figures in Korea</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30501000000">
		<a href='/EN/contents/EN30501000000.do' onclick='fn_wiseTracker("^SNB^Great figures in Korea^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30502000000">
		<a href='/EN/contents/EN30502000000.do' onclick='fn_wiseTracker("^SNB^Great figures in Korea^Figures who shone the Ancient Times");'  class="depth depth4">Figures who shone the Ancient Times</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30503000000">
		<a href='/EN/contents/EN30503000000.do' onclick='fn_wiseTracker("^SNB^Great figures in Korea^Figures who made Goryeo Dynasty shine");'  class="depth depth4">Figures who made Goryeo Dynasty shine</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30504000000">
		<a href='/EN/contents/EN30504000000.do' onclick='fn_wiseTracker("^SNB^Great figures in Korea^Figures who made Joseon Dynasty shine");'  class="depth depth4">Figures who made Joseon Dynasty shine</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30505000000">
		<a href='/EN/contents/EN30505000000.do' onclick='fn_wiseTracker("^SNB^Great figures in Korea^Figures who made Modern and Contemporary shine");'  class="depth depth4">Figures who made Modern and Contemporary shine</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30600000000">
		<a href='/EN/contents/EN30601000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Economic Policy Materials of Korea");'  class="depth depth3">Economic Policy Materials of Korea</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30601000000">
		<a href='/EN/contents/EN30601000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30602000000">
		<a href='/EN/contents/EN30602000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^Summary of Economy Development in Korea");'  class="depth depth4">Summary of Economy Development in Korea</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30603000000">
		<a href='/EN/contents/EN30603000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^Korean Economy in View of Outside");'  class="depth depth4">Korean Economy in View of Outside</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30604000000">
		<a href='/EN/contents/EN30604000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^KDI Representative joint report");'  class="depth depth4">KDI Representative joint report</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30605000000">
		<a href='/EN/contents/EN30605000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^Major Publications about Economy");'  class="depth depth4">Major Publications about Economy</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30606000000">
		<a href='/EN/contents/EN30606000000.do' onclick='fn_wiseTracker("^SNB^Economic Policy Materials of Korea^Major Economic policy in Korea");'  class="depth depth4">Major Economic policy in Korea</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30700000000">
		<a href='/EN/contents/EN30701000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Donguibogam: the Korean Traditional Medicine book");'  class="depth depth3">Donguibogam: the Korean Traditional Medicine book</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30701000000">
		<a href='/EN/contents/EN30701000000.do' onclick='fn_wiseTracker("^SNB^Donguibogam: the Korean Traditional Medicine book^Introducing of Dongeuibogam medical books in the world");'  class="depth depth4">Introducing of Dongeuibogam medical books in the world</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30702000000">
		<a href='/EN/contents/EN30702000000.do' onclick='fn_wiseTracker("^SNB^Donguibogam: the Korean Traditional Medicine book^Inside Dongeuibogam");'  class="depth depth4">Inside Dongeuibogam</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30703000000">
		<a href='/EN/contents/EN30703000000.do' onclick='fn_wiseTracker("^SNB^Donguibogam: the Korean Traditional Medicine book^Dongeuibogam for People All around the World");'  class="depth depth4">Dongeuibogam for People All around the World</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30704000000">
		<a href='/EN/contents/EN30704000000.do' onclick='fn_wiseTracker("^SNB^Donguibogam: the Korean Traditional Medicine book^Dongeuibogam in Everyday Life");'  class="depth depth4">Dongeuibogam in Everyday Life</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30800000000">
		<a href='/EN/contents/EN30801000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korea&apos;s Famous Current Affairs Cartoon, Gobawu");'  class="depth depth3">Korea's Famous Current Affairs Cartoon, Gobawu</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30801000000">
		<a href='/EN/contents/EN30801000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s Famous Current Affairs Cartoon, Gobawu^Korea&apos;s Famous Current Affairs Cartoon, Gobawu");'  class="depth depth4">Korea's Famous Current Affairs Cartoon, Gobawu</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30802000000">
		<a href='/EN/contents/EN30802000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s Famous Current Affairs Cartoon, Gobawu^Seonghwan Kim: A Short Biography");'  class="depth depth4">Seonghwan Kim: A Short Biography</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30803000000">
		<a href='/EN/contents/EN30803000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s Famous Current Affairs Cartoon, Gobawu^Time of Restoration after the Korean War");'  class="depth depth4">Time of Restoration after the Korean War</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30804000000">
		<a href='/EN/contents/EN30804000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s Famous Current Affairs Cartoon, Gobawu^Time of Contrast in Ideology");'  class="depth depth4">Time of Contrast in Ideology</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30805000000">
		<a href='/EN/contents/EN30805000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s Famous Current Affairs Cartoon, Gobawu^Increased Economic Growth");'  class="depth depth4">Increased Economic Growth</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN30900000000">
		<a href='/EN/contents/EN30901000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korean War by Era");'  class="depth depth3">Korean War by Era</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN30901000000">
		<a href='/EN/contents/EN30901000000.do' onclick='fn_wiseTracker("^SNB^Korean War by Era^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30902000000">
		<a href='/EN/contents/EN30902000000.do' onclick='fn_wiseTracker("^SNB^Korean War by Era^Ancient War Stories");'  class="depth depth4">Ancient War Stories</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30903000000">
		<a href='/EN/contents/EN30903000000.do' onclick='fn_wiseTracker("^SNB^Korean War by Era^War Stories of the Goryeo Dynasty");'  class="depth depth4">War Stories of the Goryeo Dynasty</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30904000000">
		<a href='/EN/contents/EN30904000000.do' onclick='fn_wiseTracker("^SNB^Korean War by Era^War stories of the Joseon Dynasty");'  class="depth depth4">War stories of the Joseon Dynasty</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN30905000000">
		<a href='/EN/contents/EN30905000000.do' onclick='fn_wiseTracker("^SNB^Korean War by Era^Story of Modern War");'  class="depth depth4">Story of Modern War</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31000000000">
		<a href='/EN/contents/EN31001000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korean History in the Eyes of the Dokdo");'  class="depth depth3">Korean History in the Eyes of the Dokdo</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31001000000">
		<a href='/EN/contents/EN31001000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31002000000">
		<a href='/EN/contents/EN31002000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Dokdo in Korean History");'  class="depth depth4">Dokdo in Korean History</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31003000000">
		<a href='/EN/contents/EN31003000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Dokdo on Old Maps of the East");'  class="depth depth4">Dokdo on Old Maps of the East</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31004000000">
		<a href='/EN/contents/EN31004000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^People in the History of Dokdo");'  class="depth depth4">People in the History of Dokdo</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31005000000">
		<a href='/EN/contents/EN31005000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Dokdo in the Eyes of the World");'  class="depth depth4">Dokdo in the Eyes of the World</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31006000000">
		<a href='/EN/contents/EN31006000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Eastern end of Korea, Dokdo");'  class="depth depth4">Eastern end of Korea, Dokdo</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31007000000">
		<a href='/EN/contents/EN31007000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Name of Dokdo");'  class="depth depth4">Name of Dokdo</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31008000000">
		<a href='/EN/contents/EN31008000000.do' onclick='fn_wiseTracker("^SNB^Korean History in the Eyes of the Dokdo^Sea of Dokdo, Donghae");'  class="depth depth4">Sea of Dokdo, Donghae</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31100000000">
		<a href='/EN/contents/EN31101000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Documents of the Joseon Royal Family");'  class="depth depth3">Documents of the Joseon Royal Family</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31101000000">
		<a href='/EN/contents/EN31101000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31102000000">
		<a href='/EN/contents/EN31102000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Description of the History of the Royal Family");'  class="depth depth4">Description of the History of the Royal Family</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31103000000">
		<a href='/EN/contents/EN31103000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^The Lineage of the Royal Family");'  class="depth depth4">The Lineage of the Royal Family</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31104000000">
		<a href='/EN/contents/EN31104000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Politics of the Royal Family");'  class="depth depth4">Politics of the Royal Family</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31105000000">
		<a href='/EN/contents/EN31105000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Rites of the Royal Family");'  class="depth depth4">Rites of the Royal Family</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31106000000">
		<a href='/EN/contents/EN31106000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Acaemic Studies of the Royal Family");'  class="depth depth4">Acaemic Studies of the Royal Family</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31107000000">
		<a href='/EN/contents/EN31107000000.do' onclick='fn_wiseTracker("^SNB^Documents of the Joseon Royal Family^Literature of the Royal Family");'  class="depth depth4">Literature of the Royal Family</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31200000000">
		<a href='/EN/contents/EN31201000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Joseon Geography Books Collection");'  class="depth depth3">Joseon Geography Books Collection</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31201000000">
		<a href='/EN/contents/EN31201000000.do' onclick='fn_wiseTracker("^SNB^Joseon Geography Books Collection^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31202000000">
		<a href='/EN/contents/EN31202000000.do' onclick='fn_wiseTracker("^SNB^Joseon Geography Books Collection^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31300000000">
		<a href='/EN/contents/EN31301000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^The Silhak &#40;Practical Science&#41; Ideology of Baek-won Ha &#40;pen name: Gyunam&#41;");'  class="depth depth3">The Silhak (Practical Science) Ideology of Baek-won Ha (pen name: Gyunam)</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31301000000">
		<a href='/EN/contents/EN31301000000.do' onclick='fn_wiseTracker("^SNB^The Silhak &#40;Practical Science&#41; Ideology of Baek-won Ha &#40;pen name: Gyunam&#41;^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31302000000">
		<a href='/EN/contents/EN31302000000.do' onclick='fn_wiseTracker("^SNB^The Silhak &#40;Practical Science&#41; Ideology of Baek-won Ha &#40;pen name: Gyunam&#41;^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31400000000">
		<a href='/EN/contents/EN31401000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Dictionaries of the Joseon Dynasty");'  class="depth depth3">Dictionaries of the Joseon Dynasty</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31401000000">
		<a href='/EN/contents/EN31401000000.do' onclick='fn_wiseTracker("^SNB^Dictionaries of the Joseon Dynasty^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31402000000">
		<a href='/EN/contents/EN31402000000.do' onclick='fn_wiseTracker("^SNB^Dictionaries of the Joseon Dynasty^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31500000000">
		<a href='/EN/contents/EN31501000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korean Pop Singer, Insu Nam & Ho Bae");'  class="depth depth3">Korean Pop Singer, Insu Nam &amp; Ho Bae</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31501000000">
		<a href='/EN/contents/EN31501000000.do' onclick='fn_wiseTracker("^SNB^Korean Pop Singer, Insu Nam & Ho Bae^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31502000000">
		<a href='/EN/contents/EN31502000000.do' onclick='fn_wiseTracker("^SNB^Korean Pop Singer, Insu Nam & Ho Bae^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31600000000">
		<a href='/EN/contents/EN31601000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korea&apos;s National Land Research Materials Collection");'  class="depth depth3">Korea's National Land Research Materials Collection</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31601000000">
		<a href='/EN/contents/EN31601000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s National Land Research Materials Collection^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31602000000">
		<a href='/EN/contents/EN31602000000.do' onclick='fn_wiseTracker("^SNB^Korea&apos;s National Land Research Materials Collection^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31700000000">
		<a href='/EN/contents/EN31701000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods");'  class="depth depth3">Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31701000000">
		<a href='/EN/contents/EN31701000000.do' onclick='fn_wiseTracker("^SNB^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31702000000">
		<a href='/EN/contents/EN31702000000.do' onclick='fn_wiseTracker("^SNB^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods^Why now is the time to pay attention to Seonbi?");'  class="depth depth4">Why now is the time to pay attention to Seonbi?</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31703000000">
		<a href='/EN/contents/EN31703000000.do' onclick='fn_wiseTracker("^SNB^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods^Various models of Seonbi");'  class="depth depth4">Various models of Seonbi</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31704000000">
		<a href='/EN/contents/EN31704000000.do' onclick='fn_wiseTracker("^SNB^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods^There were a lot of women seonbis as well");'  class="depth depth4">There were a lot of women seonbis as well</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31705000000">
		<a href='/EN/contents/EN31705000000.do' onclick='fn_wiseTracker("^SNB^Rereading the Spirit of Seonbi, scholars of the Goryeo and Joseon periods^Looking for a new seonbi");'  class="depth depth4">Looking for a new seonbi</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31800000000">
		<a href='/EN/contents/EN31801000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Encounter between the writers of the Joseon and Qing Dynasty");'  class="depth depth3">Encounter between the writers of the Joseon and Qing Dynasty</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31801000000">
		<a href='/EN/contents/EN31801000000.do' onclick='fn_wiseTracker("^SNB^Encounter between the writers of the Joseon and Qing Dynasty^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31802000000">
		<a href='/EN/contents/EN31802000000.do' onclick='fn_wiseTracker("^SNB^Encounter between the writers of the Joseon and Qing Dynasty^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN31900000000">
		<a href='/EN/contents/EN31901000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Classics and metal types");'  class="depth depth3">Classics and metal types</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN31901000000">
		<a href='/EN/contents/EN31901000000.do' onclick='fn_wiseTracker("^SNB^Classics and metal types^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN31902000000">
		<a href='/EN/contents/EN31902000000.do' onclick='fn_wiseTracker("^SNB^Classics and metal types^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32000000000">
		<a href='/EN/contents/EN32001000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^A venue in beautiful nature");'  class="depth depth3">A venue in beautiful nature</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32001000000">
		<a href='/EN/contents/EN32001000000.do' onclick='fn_wiseTracker("^SNB^A venue in beautiful nature^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32002000000">
		<a href='/EN/contents/EN32002000000.do' onclick='fn_wiseTracker("^SNB^A venue in beautiful nature^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32100000000">
		<a href='/EN/contents/EN32101000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Ancient documents and Eobo");'  class="depth depth3">Ancient documents and Eobo</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32101000000">
		<a href='/EN/contents/EN32101000000.do' onclick='fn_wiseTracker("^SNB^Ancient documents and Eobo^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32102000000">
		<a href='/EN/contents/EN32102000000.do' onclick='fn_wiseTracker("^SNB^Ancient documents and Eobo^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32200000000">
		<a href='/EN/contents/EN32201000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Provisional Government of the Republic of Korea");'  class="depth depth3">Provisional Government of the Republic of Korea</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32201000000">
		<a href='/EN/contents/EN32201000000.do' onclick='fn_wiseTracker("^SNB^Provisional Government of the Republic of Korea^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32202000000">
		<a href='/EN/contents/EN32202000000.do' onclick='fn_wiseTracker("^SNB^Provisional Government of the Republic of Korea^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32300000000">
		<a href='/EN/contents/EN32301000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Materials on Unification and North Korea");'  class="depth depth3">Materials on Unification and North Korea</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32301000000">
		<a href='/EN/contents/EN32301000000.do' onclick='fn_wiseTracker("^SNB^Materials on Unification and North Korea^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32302000000">
		<a href='/EN/contents/EN32302000000.do' onclick='fn_wiseTracker("^SNB^Materials on Unification and North Korea^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32400000000">
		<a href='/EN/contents/EN32401000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Publishers in the early stage of modern era");'  class="depth depth3">Publishers in the early stage of modern era</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32401000000">
		<a href='/EN/contents/EN32401000000.do' onclick='fn_wiseTracker("^SNB^Publishers in the early stage of modern era^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32402000000">
		<a href='/EN/contents/EN32402000000.do' onclick='fn_wiseTracker("^SNB^Publishers in the early stage of modern era^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32500000000">
		<a href='/EN/contents/EN32501000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^National Informatization Data");'  class="depth depth3">National Informatization Data</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32501000000">
		<a href='/EN/contents/EN32501000000.do' onclick='fn_wiseTracker("^SNB^National Informatization Data^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32502000000">
		<a href='/EN/contents/EN32502000000.do' onclick='fn_wiseTracker("^SNB^National Informatization Data^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32600000000">
		<a href='/EN/contents/EN32601000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Korean literature in the world");'  class="depth depth3">Korean literature in the world</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32601000000">
		<a href='/EN/contents/EN32601000000.do' onclick='fn_wiseTracker("^SNB^Korean literature in the world^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32602000000">
		<a href='/EN/contents/EN32602000000.do' onclick='fn_wiseTracker("^SNB^Korean literature in the world^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32700000000">
		<a href='/EN/contents/EN32701000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Having a glimpse of the lives of women in the past");'  class="depth depth3">Having a glimpse of the lives of women in the past</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32701000000">
		<a href='/EN/contents/EN32701000000.do' onclick='fn_wiseTracker("^SNB^Having a glimpse of the lives of women in the past^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32702000000">
		<a href='/EN/contents/EN32702000000.do' onclick='fn_wiseTracker("^SNB^Having a glimpse of the lives of women in the past^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32800000000">
		<a href='/EN/contents/EN32801000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Tongsinsa&#40;envoy from Joseon&#41;, encounters Japanese people");'  class="depth depth3">Tongsinsa(envoy from Joseon), encounters Japanese people</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32801000000">
		<a href='/EN/contents/EN32801000000.do' onclick='fn_wiseTracker("^SNB^Tongsinsa&#40;envoy from Joseon&#41;, encounters Japanese people^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32802000000">
		<a href='/EN/contents/EN32802000000.do' onclick='fn_wiseTracker("^SNB^Tongsinsa&#40;envoy from Joseon&#41;, encounters Japanese people^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN32900000000">
		<a href='/EN/contents/EN32901000000.do' onclick='fn_wiseTracker("^SNB^Digital Collection^Special appreciation session for Pansori, a deeply rooted tree");'  class="depth depth3">Special appreciation session for Pansori, a deeply rooted tree</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN32901000000">
		<a href='/EN/contents/EN32901000000.do' onclick='fn_wiseTracker("^SNB^Special appreciation session for Pansori, a deeply rooted tree^Introduction");'  class="depth depth4">Introduction</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN32902000000">
		<a href='/EN/contents/EN32902000000.do' onclick='fn_wiseTracker("^SNB^Special appreciation session for Pansori, a deeply rooted tree^Introduction by Category");'  class="depth depth4">Introduction by Category</a>
</ul>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35200000000">
		<a href='/EN/contents/EN35200000000.do' onclick='fn_wiseTracker("^GNB^Collection^Korean Newspaper Archive");'  class="depth">Korean Newspaper Archive</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35300000000">
		<a href='/EN/contents/EN35300000000.do' onclick='fn_wiseTracker("^GNB^Collection^Official Gazette");'  class="depth">Official Gazette</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35400000000">
		<a href='/EN/contents/EN35401000000.do' onclick='fn_wiseTracker("^GNB^Collection^Overseas Materials Related to Korea");'  class="depth depth2">Overseas Materials Related to Korea</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN35401000000">
		<a href='/EN/contents/EN35401000000.do' onclick='fn_wiseTracker("^SNB^Overseas Materials Related to Korea^National Archives and Records Administration &#40;NARA&#41;");'  class="depth depth3">National Archives and Records Administration (NARA)</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN35402000000">
		<a href='/EN/contents/EN35402000000.do' onclick='fn_wiseTracker("^SNB^Overseas Materials Related to Korea^Central Intelligence Agency &#40;CIA&#41;");'  class="depth depth3">Central Intelligence Agency (CIA)</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN35403000000">
		<a href='/EN/contents/EN35403000000.do' onclick='fn_wiseTracker("^SNB^Overseas Materials Related to Korea^Commonwealth of Independent States&#40;CIS&#41;");'  class="depth depth3">Commonwealth of Independent States(CIS)</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35500000000">
		<a href='/EN/contents/EN35500000000.do' onclick='fn_wiseTracker("^GNB^Collection^Recommend Book by NLK Librarian");'  class="depth">Recommend Book by NLK Librarian</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35700000000">
		<a href='#none' onclick='fn_wiseTracker("^GNB^Collection^List of video data");'  class="depth depth2">List of video data</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN35701000000">
		<a href='/EN/contents/EN35701000000.do' onclick='fn_wiseTracker("^SNB^List of video data^Catalog by subject");'  class="depth depth3">Catalog by subject</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN35702000000">
		<a href='/EN/contents/EN35702000000.do' onclick='fn_wiseTracker("^SNB^List of video data^Film Catalog");'  class="depth depth3">Film Catalog</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35120000000">
		<a href='/EN/contents/EN35120000000.do' onclick='fn_wiseTracker("^GNB^Collection^Online Archiving & Searching Internet Sources&#40;OASIS&#41;");'  class="depth">Online Archiving &amp; Searching Internet Sources(OASIS)</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35130000000">
		<a href='/EN/contents/EN35130000000.do' onclick='fn_wiseTracker("^GNB^Collection^Open Access Korea &#40;OAK&#41;");'  class="depth">Open Access Korea (OAK)</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN35110000000">
		<a href='https://www.nl.go.kr/korcis/english/index.do' target='_blank' onclick='fn_wiseTracker("^GNB^Collection^Korean Old and Rare Collection Information System &#40;KORCIS&#41; ");this.blur()' title='Korean Old and Rare Collection Information System (KORCIS)  link KOR'  class="depth"><span>Korean Old and Rare Collection Information System (KORCIS) </span></a>
</ul>
	</div>
</div>
<div class="menu-all-depth1__item" id="MMAP_EN40000000000">
	<a href="/EN/contents/EN40100000000.do" class="depth depth1">Services</a>
	<div class="menu-all-depth1-category">
	<p class="depth1-title">Services</p>
<ul class="menu-all-depth2">
	<li class="menu-all-depth2__item" id="MMAP_EN40100000000">
		<a href='/EN/contents/EN40101000000.do' onclick='fn_wiseTracker("^GNB^Services^Collection Development Policy");'  class="depth depth2">Collection Development Policy</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN40101000000">
		<a href='/EN/contents/EN40101000000.do' onclick='fn_wiseTracker("^SNB^Collection Development Policy^1. General Direction of the Collection Development Policy");'  class="depth depth3">1. General Direction of the Collection Development Policy</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40102000000">
		<a href='/EN/contents/EN40102000000.do' onclick='fn_wiseTracker("^SNB^Collection Development Policy^2. Basic Principles of the Collection Development Policy");'  class="depth depth3">2. Basic Principles of the Collection Development Policy</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40103000000">
		<a href='/EN/contents/EN40103000000.do' onclick='fn_wiseTracker("^SNB^Collection Development Policy^3. Collection Development Guidelines by Type of Resource");'  class="depth depth3">3. Collection Development Guidelines by Type of Resource</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40104000000">
		<a href='/EN/contents/EN40104000000.do' onclick='fn_wiseTracker("^SNB^Collection Development Policy^4. Guidelines for Preservation, Withdrawal and Discard of Library Collection");'  class="depth depth3">4. Guidelines for Preservation, Withdrawal and Discard of Library Collection</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40105000000">
		<a href='/EN/contents/EN40105000000.do' onclick='fn_wiseTracker("^SNB^Collection Development Policy^5. Cooperative Collection Development Strategy and Evaluation Cycle");'  class="depth depth3">5. Cooperative Collection Development Strategy and Evaluation Cycle</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40200000000">
		<a href='/EN/contents/EN40201000000.do' onclick='fn_wiseTracker("^GNB^Services^Legal Deposit and Acquisition");'  class="depth depth2">Legal Deposit and Acquisition</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN40201000000">
		<a href='/EN/contents/EN40201000000.do' onclick='fn_wiseTracker("^SNB^Legal Deposit and Acquisition^Legal Deposit");'  class="depth depth3">Legal Deposit</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40202000000">
		<a href='/EN/contents/EN40202000000.do' onclick='fn_wiseTracker("^SNB^Legal Deposit and Acquisition^Purchase");'  class="depth depth3">Purchase</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40203000000">
		<a href='/EN/contents/EN40203000000.do' onclick='fn_wiseTracker("^SNB^Legal Deposit and Acquisition^Donation");'  class="depth depth3">Donation</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40204000000">
		<a href='/EN/contents/EN40204000000.do' onclick='fn_wiseTracker("^SNB^Legal Deposit and Acquisition^International Exchange");'  class="depth depth3">International Exchange</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40205000000">
		<a href='/EN/contents/EN40205000000.do' onclick='fn_wiseTracker("^SNB^Legal Deposit and Acquisition^Collection Statistics");'  class="depth depth3">Collection Statistics</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40300000000">
		<a href='/EN/contents/EN40300000000.do' onclick='fn_wiseTracker("^GNB^Services^Information Organization");'  class="depth">Information Organization</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40400000000">
		<a href='/EN/contents/EN40400000000.do' onclick='fn_wiseTracker("^GNB^Services^Bibliography Publishing");'  class="depth">Bibliography Publishing</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40500000000">
		<a href='/EN/contents/EN40501000000.do' onclick='fn_wiseTracker("^GNB^Services^Cooperative Activities");'  class="depth depth2">Cooperative Activities</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN40501000000">
		<a href='/EN/contents/EN40501000000.do' onclick='fn_wiseTracker("^SNB^Cooperative Activities^Domestic Cooperation");'  class="depth depth3">Domestic Cooperation</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN40502000000">
		<a href='/EN/contents/EN40502000000.do' onclick='fn_wiseTracker("^SNB^Cooperative Activities^International Cooperation");'  class="depth depth3">International Cooperation</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40600000000">
		<a href='/EN/contents/EN40600000000.do' onclick='fn_wiseTracker("^GNB^Services^Digitization");'  class="depth">Digitization</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40700000000">
		<a href='/EN/contents/EN40700000000.do' onclick='fn_wiseTracker("^GNB^Services^Librarian Training");'  class="depth">Librarian Training</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40800000000">
		<a href='/EN/contents/EN40800000000.do' onclick='fn_wiseTracker("^GNB^Services^International Standard Identifiers &#40;ISBN/ISSN/ISNI&#41;");'  class="depth">International Standard Identifiers (ISBN/ISSN/ISNI)</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN40900000000">
		<a href='/EN/contents/EN40900000000.do' onclick='fn_wiseTracker("^GNB^Services^Research Information Services");'  class="depth">Research Information Services</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN41000000000">
		<a href='/EN/contents/EN41001000000.do' onclick='fn_wiseTracker("^GNB^Services^IFLA PAC Korea Center");'  class="depth depth2">IFLA PAC Korea Center</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN41001000000">
		<a href='/EN/contents/EN41001040000.do' onclick='fn_wiseTracker("^SNB^IFLA PAC Korea Center^Introduction");'  class="depth depth3">Introduction</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN41001040000">
		<a href='/EN/contents/EN41001040000.do' onclick='fn_wiseTracker("^SNB^Introduction^Education Video");'  class="depth depth4">Education Video</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN41001030000">
		<a href='/EN/contents/EN41001030100.do' onclick='fn_wiseTracker("^SNB^Introduction^Educational Activities");'  class="depth depth4">Educational Activities</a>
<ul class="menu-all-depth5">
	<li class="menu-all-depth5__item" id="MMAP_EN41001030100">
		<a href='/EN/contents/EN41001030100.do' onclick='fn_wiseTracker("");'  class="depth depth5">Preservation Workshop</a>
	</li>
	<li class="menu-all-depth5__item" id="MMAP_EN41001030200">
		<a href='/EN/contents/EN41001030200.do' onclick='fn_wiseTracker("");'  class="depth depth5">Preservation Seminar</a>
	</li>
	<li class="menu-all-depth5__item" id="MMAP_EN41001030300">
		<a href='/EN/contents/EN41001030300.do' onclick='fn_wiseTracker("");'  class="depth depth5">Preservation Support</a>
</ul>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN41001010000">
		<a href='/EN/contents/EN41001010100.do' onclick='fn_wiseTracker("^SNB^Introduction^IFLA PAC Korea Center");'  class="depth depth4">IFLA PAC Korea Center</a>
<ul class="menu-all-depth5">
	<li class="menu-all-depth5__item" id="MMAP_EN41001010100">
		<a href='/EN/contents/EN41001010100.do' onclick='fn_wiseTracker("");'  class="depth depth5">Introducing</a>
	</li>
	<li class="menu-all-depth5__item" id="MMAP_EN41001010200">
		<a href='/EN/contents/EN41001010200.do' onclick='fn_wiseTracker("");'  class="depth depth5">Roles</a>
	</li>
	<li class="menu-all-depth5__item" id="MMAP_EN41001010300">
		<a href='/EN/contents/EN41001010300.do' onclick='fn_wiseTracker("");'  class="depth depth5">Major Activities</a>
</ul>
</ul>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN41002000000">
		<a href='/EN/contents/EN41002010000.do' onclick='fn_wiseTracker("^SNB^IFLA PAC Korea Center^Publication");'  class="depth depth3">Publication</a>
<ul class="menu-all-depth4">
	<li class="menu-all-depth4__item" id="MMAP_EN41002010000">
		<a href='/EN/contents/EN41002010000.do' onclick='fn_wiseTracker("^SNB^Publication^IFLA PAC Korea Center Publications");'  class="depth depth4">IFLA PAC Korea Center Publications</a>
	</li>
	<li class="menu-all-depth4__item" id="MMAP_EN41002020000">
		<a href='/EN/contents/EN41002020000.do' onclick='fn_wiseTracker("^SNB^Publication^Resource Preservation and Conservation Info");'  class="depth depth4">Resource Preservation and Conservation Info</a>
</ul>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN41100000000">
		<a href='https://inkslib.nl.go.kr/IN/main/index.do' target='_blank' onclick='fn_wiseTracker("^GNB^Services^International Network for Korean Studies Librarians");this.blur()' title='International Network for Korean Studies Librarians link KOR'  class="depth"><span>International Network for Korean Studies Librarians</span></a>
</ul>
	</div>
</div>
<div class="menu-all-depth1__item" id="MMAP_EN20000000000">
	<a href="/EN/contents/EN20100000000.do" class="depth depth1">Using the Library</a>
	<div class="menu-all-depth1-category">
	<p class="depth1-title">Using the Library</p>
<ul class="menu-all-depth2">
	<li class="menu-all-depth2__item" id="MMAP_EN20100000000">
		<a href='/EN/contents/EN20100000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Opening Hours");'  class="depth">Opening Hours</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN20200000000">
		<a href='/EN/contents/EN20200000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^How to Use the Library");'  class="depth">How to Use the Library</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN20300000000">
		<a href='/EN/contents/EN20300000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Resource Rooms");'  class="depth">Resource Rooms</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN20400000000">
		<a href='/EN/contents/EN20401000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Library Tours");'  class="depth depth2">Library Tours</a>
<ul class="menu-all-depth3">
	<li class="menu-all-depth3__item" id="MMAP_EN20401000000">
		<a href='/EN/contents/EN20401000000.do' onclick='fn_wiseTracker("^SNB^Library Tours^Guided Library Tours");'  class="depth depth3">Guided Library Tours</a>
	</li>
	<li class="menu-all-depth3__item" id="MMAP_EN20403000000">
		<a href='/EN/contents/EN20403000000.do' onclick='fn_wiseTracker("^SNB^Library Tours^VR Tour");'  class="depth depth3">VR Tour</a>
</ul>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN20500000000">
		<a href='/EN/contents/EN20500000000.do' onclick='fn_wiseTracker("^GNB^Using the Library^Visiting the Library");'  class="depth">Visiting the Library</a>
</ul>
	</div>
</div>
<div class="menu-all-depth1__item" id="MMAP_EN10000000000">
	<a href="/EN/contents/EN10100000000.do" class="depth depth1">About the Library</a>
	<div class="menu-all-depth1-category">
	<p class="depth1-title">About the Library</p>
<ul class="menu-all-depth2">
	<li class="menu-all-depth2__item" id="MMAP_EN10100000000">
		<a href='/EN/contents/EN10100000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Welcome Message");'  class="depth">Welcome Message</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10200000000">
		<a href='/EN/contents/EN10200000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Chronology");'  class="depth">Chronology</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10300000000">
		<a href='/EN/contents/EN10300000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Organization Chart");'  class="depth">Organization Chart</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10400000000">
		<a href='/EN/contents/EN10400000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Facilities");'  class="depth">Facilities</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10500000000">
		<a href='/EN/contents/EN10500000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Collection Statistics");'  class="depth">Collection Statistics</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10600000000">
		<a href='/EN/contents/EN10600000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Cultural Assets");'  class="depth">Cultural Assets</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10700000000">
		<a href='/EN/contents/EN10700000000.do' onclick='fn_wiseTracker("^GNB^About the Library^News");'  class="depth">News</a>
	</li>
	<li class="menu-all-depth2__item" id="MMAP_EN10800000000">
		<a href='/EN/contents/EN10800000000.do' onclick='fn_wiseTracker("^GNB^About the Library^Video Clip");'  class="depth">Video Clip</a>
</ul>
	</div>
</div>
<div class="menu-all-depth1__item menu-all-depth1__item--kor">
												<a href="/NL/main/index.do"  class="depth depth1" target="_blank">KOREAN</a>
											</div>
										</div>
									</div>
								</div>
								<!-- //전체메뉴 -->
								<button type="button" class="btn-close">
									<span class="sp_layout sp-close">Close all menu</span>
								</button>
							</div>
						</div>
						<!-- //전체메뉴 -->
					</div>
					<!-- //전체메뉴 영역 -->
				</div>

				<!-- 서브 모바일 메뉴 고정 -->
				<div class="menu-wrap--mobile">
					<!-- 모바일 3뎁스 -->
					<div class="depth3__menu-wrap">
						<h3 class="title">Privacy Policy</h3>
						<a href="#" onclick="window.history.back();" class="btn-back"><span class="sp_layout sp-back">go back</span></a>
					</div>
					<!-- //모바일 3뎁스 -->
					</div>
				<!-- //서브 모바일 메뉴 고정 -->
			</div>
            <!-- //헤더하단 -->

            <!-- 서브 검색 유틸영역 -->
			<!--
				* 헤더 내 검색 영역 별도로 분리(2019.11.15 기획확인완료)
				* 통합 상세검색은 기획/디자인 완료 후 작업 예정
			 -->
			<div class="header__utility">
					<!-- 서브 검색 폼 영역(PC/TABLET) -->
					<h2 class="ir_text">Total search</h2>
	                <div class="wide-search-wrap wide-search-type-7">
	                    <div class="search-form-wrap">
							<div class="search-form-fixwd">
								<h1 class="fixed-logo">
									<a href="/">
										<img src="/resource/common/img/common/fixed_logo.png" alt="National Library of Korea">
									</a>
								</h1>
		                        <div class="search-form__inner">
		                            <form name="comSchForm" id="comSchForm" action="/EN/contents/engSearch.do">
										<input type="hidden" name="srchTarget" value="total">
										<input type="hidden" name="pageNum" value="1">
										<input type="hidden" name="pageSize" value="10">

		                                <!-- 입력 폼 영역 -->
		                                <div class="search-form_group">
		                                    <div class="search-text-wrap">
		                                        <div class="input-text-wrap">
		                                            <input type="text" name="kwd" id="input-text" class="input-text schKwd" aria-label="Search" onkeyDown="if(event.keyCode == 13){goSearchForm('comSchForm');}" placeholder="Search" />
		                                        </div>
											</div>
											<!-- 자동완성 레이어 -->
											<div class="autocomplete_layer">
												<div class="autocomplete_wrap">
													<h3 class="ir_text">Search keyword auto complete list</h3>
													<ul class="result_list">
													</ul>
													<div class="btn_wrap">
														<button type="button" class="autocomplete_close">Turn off auto complete</button>
													</div>
												</div>
											</div>
											<!-- //자동완성 레이어 -->
		                                    <div class="search-btn-wrap">
												<a href="#" role="button" class="btn_arrow">
													<span class="arrow_fold">Expand auto complete</span>
												</a>

												<div style="display : inline-block; position : relative; top : -6px ">
			                                        <button type="button" class="btn-worldword subSearchWord" aria-expanded="false">
			                                            <span class="sp_layout sp-worldword">Open Multilingual input</span>
			                                        </button>
			                                        <!-- 가상키보드 wrapper -->
													<!-- <span class="keyboard-wrapper"></span> -->
													<div class="keyboard-wrapper"></div>
													<!-- //가상키보드 wrapper -->
		                                        </div>
		                                        <button type="button" class="btn-search" onclick="goSearchForm('comSchForm');">
		                                            <span class="sp_layout sp-search">Search</span>
		                                        </button>
		                                    </div>
		                                </div>

		                                <script>
			                                document.getElementsByClassName('subSearchWord')[0].addEventListener('keydown', function(e){
			                                	var code = e.keyCode || e.which;
			                                    if (code == 13) {
			                                    	setTimeout(function(){
			                                    		$('.subSearchKeyword').focus();
			                                    	}, 100);
			                                    }
			                                });
		                                </script>
										<!-- //입력 폼 영역 -->
										<!-- 가상키보드 wrapper -->
										<!--div class="keyboard-wrapper"-->
											<!-- 다국어 입력기 위치이동 -->
										<!--/div-->
										<!-- //가상키보드 wrapper -->
									</form>
									<!-- 전체메뉴 영역 -->
									<div class="menu-tool-wrap menu-tool-gray">
										<button type="button" class="btn-open-pc" aria-label="All Menu">
											<span class="sp_layout">All Menu</span>
										</button>
										<button type="button" class="btn-open" aria-label="All Menu">
											<span class="sp_layout">All Menu</span>
										</button>
									</div>
									<!-- //전체메뉴 영역 -->
		                        </div>
	                        </div>
						<div class="gray-gnb-wrap">
							<div class="gray_menu_bg"></div>
							<div class="gray-gnb">
								<div class="menu-gnb-wrap">
									<ul class="gray-gnb-depth1">
	<li class="gray-gnb-depth1__item" id="GNBB_EN50000000000">
		<a href='/EN/contents/EN50100000000.do' onclick=''  class="depth"><span>Search</span></a>
<div class='title_wrap'><strong><span>Search</span></strong></div>
<ul class="gray-gnb-depth2">
	<li class="gray-gnb-depth2__item" id="GNBB_EN50100000000">
		<a href='/EN/contents/EN50100000000.do' onclick='' >Catalogue</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN50200000000">
		<a href='/EN/contents/EN50200000000.do' onclick='' >Digitized resource</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN50400000000">
		<a href='/EN/contents/EN50400000000.do' onclick='' >Other Library Resources</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN50500000000">
		<a href='/EN/contents/EN50500000000.do' onclick='' >Downloadable Viewer Program</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN50600000000">
		<a href='/EN/contents/EN50600000000.do' onclick='' >Search Guide</a>
	</li>
</ul>
	</li>
	<li class="gray-gnb-depth1__item" id="GNBB_EN30000000000">
		<a href='/EN/contents/EN35100000000.do' onclick=''  class="depth"><span>Collection</span></a>
<div class='title_wrap'><strong><span>Collection</span></strong></div>
<ul class="gray-gnb-depth2">
	<li class="gray-gnb-depth2__item" id="GNBB_EN35100000000">
		<a href='/EN/contents/EN30100000000.do' onclick='' >Digital Collection</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35200000000">
		<a href='/EN/contents/EN35200000000.do' onclick='' >Korean Newspaper Archive</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35300000000">
		<a href='/EN/contents/EN35300000000.do' onclick='' >Official Gazette</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35400000000">
		<a href='/EN/contents/EN35401000000.do' onclick='' >Overseas Materials Related to Korea</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35500000000">
		<a href='/EN/contents/EN35500000000.do' onclick='' >Recommend Book by NLK Librarian</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35700000000">
		<a href='#none' onclick='' >List of video data</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35120000000">
		<a href='/EN/contents/EN35120000000.do' onclick='' >Online Archiving &amp; Searching Internet Sources(OASIS)</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35130000000">
		<a href='/EN/contents/EN35130000000.do' onclick='' >Open Access Korea (OAK)</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN35110000000">
		<a href='https://www.nl.go.kr/korcis/english/index.do' target='_blank' onclick='this.blur()' title='Korean Old and Rare Collection Information System (KORCIS)  link KOR' ><span>Korean Old and Rare Collection Information System (KORCIS) </span></a>
	</li>
</ul>
	</li>
	<li class="gray-gnb-depth1__item" id="GNBB_EN40000000000">
		<a href='/EN/contents/EN40100000000.do' onclick=''  class="depth"><span>Services</span></a>
<div class='title_wrap'><strong><span>Services</span></strong></div>
<ul class="gray-gnb-depth2">
	<li class="gray-gnb-depth2__item" id="GNBB_EN40100000000">
		<a href='/EN/contents/EN40101000000.do' onclick='' >Collection Development Policy</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40200000000">
		<a href='/EN/contents/EN40201000000.do' onclick='' >Legal Deposit and Acquisition</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40300000000">
		<a href='/EN/contents/EN40300000000.do' onclick='' >Information Organization</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40400000000">
		<a href='/EN/contents/EN40400000000.do' onclick='' >Bibliography Publishing</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40500000000">
		<a href='/EN/contents/EN40501000000.do' onclick='' >Cooperative Activities</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40600000000">
		<a href='/EN/contents/EN40600000000.do' onclick='' >Digitization</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40700000000">
		<a href='/EN/contents/EN40700000000.do' onclick='' >Librarian Training</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40800000000">
		<a href='/EN/contents/EN40800000000.do' onclick='' >International Standard Identifiers (ISBN/ISSN/ISNI)</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN40900000000">
		<a href='/EN/contents/EN40900000000.do' onclick='' >Research Information Services</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN41000000000">
		<a href='/EN/contents/EN41001000000.do' onclick='' >IFLA PAC Korea Center</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN41100000000">
		<a href='https://inkslib.nl.go.kr/IN/main/index.do' target='_blank' onclick='this.blur()' title='International Network for Korean Studies Librarians link KOR' ><span>International Network for Korean Studies Librarians</span></a>
	</li>
</ul>
	</li>
	<li class="gray-gnb-depth1__item" id="GNBB_EN20000000000">
		<a href='/EN/contents/EN20100000000.do' onclick=''  class="depth"><span>Using the Library</span></a>
<div class='title_wrap'><strong><span>Using the Library</span></strong></div>
<ul class="gray-gnb-depth2">
	<li class="gray-gnb-depth2__item" id="GNBB_EN20100000000">
		<a href='/EN/contents/EN20100000000.do' onclick='' >Opening Hours</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN20200000000">
		<a href='/EN/contents/EN20200000000.do' onclick='' >How to Use the Library</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN20300000000">
		<a href='/EN/contents/EN20300000000.do' onclick='' >Resource Rooms</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN20400000000">
		<a href='/EN/contents/EN20401000000.do' onclick='' >Library Tours</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN20500000000">
		<a href='/EN/contents/EN20500000000.do' onclick='' >Visiting the Library</a>
	</li>
</ul>
	</li>
	<li class="gray-gnb-depth1__item" id="GNBB_EN10000000000">
		<a href='/EN/contents/EN10100000000.do' onclick=''  class="depth"><span>About the Library</span></a>
<div class='title_wrap'><strong><span>About the Library</span></strong></div>
<ul class="gray-gnb-depth2">
	<li class="gray-gnb-depth2__item" id="GNBB_EN10100000000">
		<a href='/EN/contents/EN10100000000.do' onclick='' >Welcome Message</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10200000000">
		<a href='/EN/contents/EN10200000000.do' onclick='' >Chronology</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10300000000">
		<a href='/EN/contents/EN10300000000.do' onclick='' >Organization Chart</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10400000000">
		<a href='/EN/contents/EN10400000000.do' onclick='' >Facilities</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10500000000">
		<a href='/EN/contents/EN10500000000.do' onclick='' >Collection Statistics</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10600000000">
		<a href='/EN/contents/EN10600000000.do' onclick='' >Cultural Assets</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10700000000">
		<a href='/EN/contents/EN10700000000.do' onclick='' >News</a>
	</li>
	<li class="gray-gnb-depth2__item" id="GNBB_EN10800000000">
		<a href='/EN/contents/EN10800000000.do' onclick='' >Video Clip</a>
	</li>
</ul>
	</li>
</ul>
</div>
							</div>
						</div>
	                    </div>
	                </div>
	                <!-- //서브 검색 폼 영역(PC/TABLET) -->

	                <!-- 서브 검색 폼 영역(MOBILE) -->
					<div class="header__search-wrap">
	                    <button type="button" class="btn-search--open2" aria-label="Search bar">
	                        <span class="sp_layout sp-search">Search bar</span>
	                    </button>
	                    <div class="search-all-wrap">
	                        <h2 class="ir_text">Total search</h2>
	                        <!-- 상단 고정 검색 영역 -->
	                        <div class="search__utils-wrap">
	                            <form name="comSchMoForm" id="comSchMoForm" action="/EN/contents/engSearch.do">
									<input type="hidden" name="srchTarget" value="total">
									<input type="hidden" name="pageNum" value="1">
									<input type="hidden" name="pageSize" value="10">

	                                <fieldset>
	                                    <legend><span class="ir_rext">Total search form</span></legend>
	                                    <div class="search-form_group">
	                                        <div class="search-text-wrap">
	                                            <div class="input-text-wrap">
	                                                <input type="text" name="kwd" id="total_srarch" class="input-text schKwd" aria-label="Input search keyword." onkeyDown="if(event.keyCode === 13){goSearchForm('comSchMoForm'); return false;}" placeholder="Search" />
	                                            </div>
	                                        </div>
	                                        <div class="autocomplete_layer">
												<div class="autocomplete_wrap">
													<h3 class="ir_text">Search keyword auto complete list</h3>
													<ul class="result_list">
													</ul>
													<div class="btn_wrap">
														<button type="button" class="autocomplete_close">Turn off auto complete</button>
													</div>
												</div>
											</div>
	                                        <div class="search-btn-wrap">
	                                            <span class="btn-worldword-wrap">
	                                            	<a href="#" role="button" class="btn_arrow"><!-- [D]is_fold 클래스 추가시 아이콘 펼침 및 대체 텍스트 변경필요 -->
														<span class="arrow_fold">Expand auto complete</span>
													</a>
	                                                <button type="button" class="btn-worldword" aria-expanded="false">
	                                                    <span class="sp_layout sp-worldword">Open Multi-language Input Panel</span>
	                                                </button>
	                                                <button type="button" class="btn-search">
	                                                    <span class="sp_layout sp-search"  onclick="goSearchForm('comSchMoForm');">Search</span>
	                                                </button>
	                                            </span>
	                                        </div>
	                                    </div>
										<button type="button" class="btn-search--close">
											<span class="btn_cancel sp_layout">Cancel</span>
										</button>
	                                </fieldset>
	                            </form>
	                        </div>
	                        <!-- //상단 고정 검색 영역 -->
	                </div>
	                <!-- //서브 검색 폼 영역(MOBILE) -->
	            </div>
	            <!-- //서브 검색 유틸영역 -->
	          </div>
	</div>
	<!-- //header -->
	<!-- container -->
	<div id="container" class="container">
		<!-- contents -->
		<div id="content" class="contents">
			<!-- lnb -->
				<div id="lnb" class="lnb">
				<h2 class="lnb_title">Footer</h2><ul class="menu-lnb">
	<li class="menu-lnb__item" id="SNB_EN70100000000">
		<a href='/EN/contents/EN70100000000.do' onclick='fn_wiseTracker("^SNB^Privacy Policy");' >Privacy Policy</a>
</ul>
</div>
				<!-- //lnb -->
			<div class="sub_contents" id="sub_content">
				<div class="content_top">
							<div class="content_info">
								<!-- breadcrumbs -->
								<div class="breadcrumbs" role="navigation">
									<ol class="breadcrumbs__list">
										<li class="breadcrumbs__item">
											<a href="/EN"  title="National Library of Korea"><span class="sp_layout home">Home</span></a>
										</li>
										<li class="breadcrumbs__item"><span>Footer</span></li>
											<li class="breadcrumbs__item"><strong>Privacy Policy</strong></li>
									</ol>
								</div>
								<!-- //breadcrumbs -->
								<h3 class="title">Privacy Policy</h3>
								<form name="nlScrapForm" id="nlScrapForm" method="post">
									<input type="hidden" name="scrapSitecode" value="exhibition"	/>	<!--SITE 구분 -->
									<input type="hidden" name="scrapTitle" value=""	/>		<!--스크랩 타이틀 -->
									<input type="hidden" name="scrapPath" value="/EN/contents/EN70100000000.do" /> <!--상세URL -->
									<input type="hidden" name="scrapOriginalView" value=""	/>	<!-- 원문보기 -->
									<input type="hidden" name="scrapMarcDown" value=""	/>	<!-- marc 다운 -->
									<input type="hidden" name="scrapBookWriter" value=""	/>	<!-- 저자 -->
									<input type="hidden" name="scrapBookYear" value=""	/>	<!-- 발행년도 -->
									<input type="hidden" name="scrapCateKey" value=""	/>	<!-- 스크랩분류키 -->
									<input type="hidden" name="scrapDesc" value=""	/>	<!-- 스크랩설명 -->
									<input type="hidden" name="scrapGbn" value=""	/>	<!-- 스크랩URL 구분 -->
								</form>
								<!-- 메뉴 설정 영역 -->
								<div class="menu__set">
									<a href="javascript:window.print();" class="menu__set-print" title="Print"><span class="ir_text">Print</span></a>
									<!-- 영문사이트 스크랩 기능 없음으로 제공 안함. -->
									<!-- <a href="#" class="menu__set-scrap" onclick="fn_scrap('B');" title="Scrap"><span class="ir_text">Scrap</span></a> -->
								</div>
								<!-- //메뉴 설정 영역 -->
								</div>
						</div>
					<div class="content_wrap">
					<div class="sub_content">
					<div class="privacy_policy_wrap"> 
<p class="search_notice">The following describes the personal information protection policy of the National Library of Korea (NLK), which is designed to protect the privacy of its users and address related problems in a timely and seamless manner in compliance with Article 30 of the Personal Information Protection Act.</p> 
<div class="privacy_list"> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Required private information, information processing and retention period</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> The NLK acquires and stores its users' personal information in accordance with the law and only with the express consent of relevant individuals. </li> 
<li class="info_item"> The NLK processes minimum amount of personal information for the following purposes. Personal information being processed will not be used for other purposes and in case of using the information for any other purpose, we will take necessary measures including getting consent from the data subject in accordance with Personal Information Protection Law article 18. </li> 
<li class="info_item"> The NLK&rsquo;s purpose of processing personal information and current status of holding personal information registered and shared in accordance with article 32 is as the following. </li> 
</ul> </div> 
<table class="tbl_ucmy0"> 
<caption><span class="ir_text">table of Required private information, information processing and retention period</span></caption> 
<colgroup> 
<col class="col1"> 
<col class="col1"> 
<col class="col2"> 
<col class="col2"> 
<col class="col2"> 
</colgroup> 
<thead>
<tr> 
<th scope="col" class="NamoSE_border_show">File name</th> 
<th scope="col" class="NamoSE_border_show">Holding Period</th> 
<th scope="col" class="NamoSE_border_show">Applicable Law</th> 
<th scope="col" class="NamoSE_border_show">Objectives</th> 
<th scope="col" class="NamoSE_border_show">List of Personal Information Collected</th> 
</tr> 
</thead> 
<tbody> 
<tr> 
<th scope="row" class="NamoSE_border_show">Small Library material mangement system (KOLASYS-NET II) user list</th> 
<td>3 yrs</td> 
<td>Personal Information Protection Act Article 15.1 Obtaining the Consent of an Owner of Information and Small Library material mangement system (KOLASYS-NET II) Operation Guidelines</td> 
<td>Book loan/return service and user identification for Small Library users, making announcements</td> 
<td>
<ul> 
<li>(Essential items) Name, ID, date of birth, password, gender, CI</li> 
<li>(Optional) E-Mail, home phone, cellphone number(contact number)</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Small Library material mangement system (KOLASYS-NET II) administrator list</th> 
<td>3 yrs</td> 
<td>Personal Information Protection Act Article 15.1 Obtaining the Consent of an Owner of Information and Small Library material mangement system (KOLASYS-NET II) Operation Guidelines</td> 
<td>User identification for Small Library users, making announcements</td> 
<td>
<ul> 
<li>(Essential items) Name, address(work), E-Mail, cellphone number(contact number), ID, password, title, related information</li> 
<li>(Optional) name of department</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Database of Chaekeum Service (Library one service) users</th> 
<td>Until canceling the membership</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Provision of the Chaekeum Service (Library one service)</td> 
<td>
<ul> 
<li>(Essential items) Name, email, cellphone number(contact number), membership number, CI(other) ID, password</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">NLK Integrated Service users</th> 
<td>2 yrs</td> 
<td>website terms and conditions of use</td> 
<td>Management of the library users and provision of customized information service</td> 
<td>
<ul> 
<li> 1. Korean residents 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, date of birth, address,legal representative</li> 
<li>(Optional) SMS notificaton status, purpose of use, mailing service, academic information</li> 
</ul> </li> 
<li> 2. Korean residents (the disabled) 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, confirmation of registration as a disabled person, date of birth, address</li> 
<li>(Optional) degree of disability, assistive technology device registration, SMS notification status, purpose of use, mailing service</li> 
</ul> </li> 
<li> 3. Foreigners 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, date of birth, address</li> 
<li>(Optional) purpose of use, field of interest</li> 
</ul> </li> 
<li> 4. Member institutions (apply for library code) 
<ul> 
<li>(Essential items) Name of library, person in charge, department, type of library, address, phone number, email, application date, applicant institution, number of books, reason for application, password, documentary evidence submission method</li> 
<li>(Optional) business registration number, website address, fax no., library opening/closing days</li> 
</ul> </li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Database of participants to librarian training</th> 
<td>Semi-permanent</td> 
<td>Libraries Act Article 19 and Enforcement Decree of the Talent Development for Public Officials Act Article 44</td> 
<td>Management of the training history of training participants</td> 
<td>
<ul> 
<li>(Essential items) Name, E-Mail, contact number, date of birth, gender, place of employment and department, title, responsibilities, certification, appointment date</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Database of lecturers for librarian training</th> 
<td>30 yrs</td> 
<td>Libraries Act Article 19 and Enforcement Decree of the Talent Development for Public Officials Act Article 44</td> 
<td>Management of internal/external lecturers for librarian training</td> 
<td>
<ul> 
<li>(Essential items) Name, date of birth, gender, type, employment status, place of employment and department, title, etc. (optional) address, E-Mail, contact number, place of ployment, title,lecture subject, license plate number</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Users of the KOLASYS-NET (Small Library Integrated Materials Management System)</th> 
<td>3 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Management of the users of the KOLASYS-NET</td> 
<td>
<ul> 
<li>(Essential items) Name, address(home), E-Mail, cellphone number(contact number), date of birth(other) place of employment, ID, password</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Users of the Video Studio of the Digital Library Media Center</th> 
<td>1 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Management of the studio equipment and facility users</td> 
<td>
<ul> 
<li>(Essential items) Name, ID, contact number, previous experiences and production details, date of birth </li> 
<li>(optional) address, E-Mail, job and place of employment</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Users of the Audio-Visual Studio of the Digital Library Media Center</th> 
<td>1 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Management of the studio equipment and facility users</td> 
<td>
<ul> 
<li>(Essential items) Name, ID, contact number, previous experiences and production details, date of birth </li> 
<li>(optional) address, E-Mail, job and place of employment</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Users of the International Network for Korean Studies Librarians (INKSLIB)</th> 
<td>10 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects) and the NLK&rsquo;s internal regulations</td> 
<td>Operation of the International Network for Korean Studies Librarians (INKSLIB)</td> 
<td>
<ul> 
<li>(Essential items) Name, E-Mail, place of employment and department, address, phone number, fax number </li> 
<li>(optional) Korean name, Job Title, Address, Gender, email address open, percentage of Korean collection work</li> 
</ul></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">A list of applicants for Monthly Parking Pass</th> 
<td>5 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Identify applicants for Monthly Parking Pass, deliver matters of notification</td> 
<td>
<ul> 
<li>(Essential) Name, ID, cellphone number, license plate number, car model, evidential documents</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">A applicants for the rental of wedding hall</th> 
<td>3 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Identify applicants for the wedding hall, deliver matters of notification</td> 
<td>
<ul> 
<li>(Essential) Name, date of birth, address, phone number, cellphone number, E-Mail, parents&rsquo; name</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">A list of applicants for community service</th> 
<td>10 yrs</td> 
<td>Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</td> 
<td>Identify those who applied for community service, deliver matters of notification</td> 
<td>
<ul> 
<li>(Essential) Name, gender, date of birth, address, phone number, cellphone number, E-Mail</li> 
<li>(Optional) university name, license plate number, car model</li> 
</ul> </td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">National authority file</th> 
<td>Semi-permanent</td> 
<td>Personal Information Protection Law article 15 paragraph 1 sub-paragraph 3</td> 
<td>Identifying domestic creators, providing search service and issuing International Standard Name Identifier (ISNI)</td> 
<td>
<ul> 
<li>(Essential) name of creator (Korean name, Chinese character, English name), official name of creation</li> 
<li>(Optional) the creator&rsquo;s birth date, institution the creator belongs to, creator&rsquo;s field of creation, creator&rsquo;s consortium participant institution control number and identification number, figures related with the creator, groups related with the creator, creator&rsquo;s URL, place of issue, publication year of creation, publisher of creation, co-author of creation, identification number, field of creation, subject name of work, full-text URL of work, role of creator</li> 
</ul> </td> 
</tr> 
</tbody> 
</table> 
<ul class="mo_ucmy0_list"> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Small Library material mangement system (KOLASYS-NET II) user list</strong> 
<p>- Holding Period: 3 yrs</p> 
<p>- Applicable Law: Personal Information Protection Act Article 15.1 Obtaining the Consent of an Owner of Information and Small Library material mangement system (KOLASYS-NET II) Operation Guidelines</p> 
<p>- Objectives: Book loan/return service and user identification for Small Library users, making announcements</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, ID, date of birth, password, gender, CI</li> 
<li>(Optional) E-Mail, home phone, cellphone number(contact number)</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Small Library material mangement system (KOLASYS-NET II) administrator list</strong> 
<p>- Holding Period: 3 yrs</p> 
<p>- Applicable Law: Personal Information Protection Act Article 15.1 Obtaining the Consent of an Owner of Information and Small Library material mangement system (KOLASYS-NET II) Operation Guidelines</p> 
<p>- Objectives: User identification for Small Library users, making announcements</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, address(work), E-Mail, cellphone number(contact number), ID, password, title, related information</li> 
<li>(Optional) name of department</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Database of Chaekeum Service (Library one service) users</strong> 
<p>- Holding Period: Until canceling the membership</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Provision of the Chaekeum Service (Library one service)</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, email, cellphone number(contact number), membership number, CI(other) ID, password</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">NLK Integrated Service users</strong> 
<p>- Holding Period: 2 yrs</p> 
<p>- Applicable Law: website terms and conditions of use</p> 
<p>- Objectives: Management of the library users and provision of customized information service</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li> 1. Korean residents 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, date of birth, address,legal representative</li> 
<li>(Optional) SMS notificaton status, purpose of use, mailing service, academic information</li> 
</ul> </li> 
<li> 2. Korean residents (the disabled) 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, confirmation of registration as a disabled person, date of birth, address</li> 
<li>(Optional) degree of disability, assistive technology device registration, SMS notification status, purpose of use, mailing service</li> 
</ul> </li> 
<li> 3. Foreigners 
<ul> 
<li>(Essential items) ID, password, Name, email, contact number (or cellphone number), gender, date of birth, address</li> 
<li>(Optional) purpose of use, field of interest</li> 
</ul> </li> 
<li> 4. Member institutions (apply for library code) 
<ul> 
<li>(Essential items) Name of library, person in charge, department, type of library, address, phone number, email, application date, applicant institution, number of books, reason for application, password, documentary evidence submission method</li> 
<li>(Optional) business registration number, website address, fax no., library opening/closing days</li> 
</ul> </li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Database of participants to librarian training</strong> 
<p>- Holding Period: Semi-permanent</p> 
<p>- Applicable Law: Libraries Act Article 19 and Enforcement Decree of the Talent Development for Public Officials Act Article 44</p> 
<p>- Objectives: Management of the training history of training participants</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, E-Mail, contact number, date of birth, gender, place of employment and department, title, responsibilities, certification, appointment date</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Database of lecturers for librarian training</strong> 
<p>- Holding Period: 30 yrs</p> 
<p>- Applicable Law: Libraries Act Article 19 and Enforcement Decree of the Talent Development for Public Officials Act Article 44</p> 
<p>- Objectives: Management of internal/external lecturers for librarian training</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, date of birth, gender, type, employment status, place of employment and department, title, etc. </li> 
<li>(optional) address, E-Mail, contact number, place of ployment, title,lecture subject, license plate number</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Users of the KOLASYS-NET (Small Library Integrated Materials Management System)</strong> 
<p>- Holding Period: 3 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Management of the users of the KOLASYS-NET</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, address(home), E-Mail, cellphone number(contact number), date of birth(other) place of employment, ID, password </li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Users of the Video Studio of the Digital Library Media Center</strong> 
<p>- Holding Period: 1 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Management of the studio equipment and facility users</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, ID, contact number, previous experiences and production details, date of birth </li> 
<li>(optional) address, E-Mail, job and place of employment</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Users of the Audio-Visual Studio of the Digital Library Media Center</strong> 
<p>- Holding Period: 1 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Management of the studio equipment and facility users</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, ID, contact number, previous experiences and production details, date of birth </li> 
<li>(optional) address, E-Mail, job and place of employment</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Users of the International Network for Korean Studies Librarians (INKSLIB)</strong> 
<p>- Holding Period: Semi-permanent</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects) and the NLK&rsquo;s internal regulations</p> 
<p>- Objectives: Operation of the International Network for Korean Studies Librarians (INKSLIB)</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential items) Name, E-Mail, gender, place of employment and department, address, phone number, fax number </li> 
<li>(optional) whether or not receiving The Report on the Trend in Korean Studies Libraries, whether or not disclosing email address, the proportion of the work related Korean Studies in the person&rsquo;s role at work)</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">A list of applicants for Monthly Parking Pass</strong> 
<p>- Holding Period: 5 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Identify applicants for Monthly Parking Pass, deliver matters of notification</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential) Name, ID, cellphone number, license plate number, car model, evidential documents</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">A applicants for the rental of wedding hall</strong> 
<p>- Holding Period: 3 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Identify applicants for the wedding hall, deliver matters of notification</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential) Name, date of birth, address, phone number, cellphone number, E-Mail, parents&rsquo; name</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">A list of applicants for community service</strong> 
<p>- Holding Period: 10 yrs</p> 
<p>- Applicable Law: Clause 1 of Article 15 of the Personal Information Protection Act (Consent of data subjects)</p> 
<p>- Objectives: Identify those who applied for community service, deliver matters of notification</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential) Name, gender, date of birth, address, phone number, cellphone number, E-Mail</li> 
<li>(Optional) university name, license plate number, car model</li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">National authority file</strong> 
<p>- Holding Period: Semi-permanent</p> 
<p>- Applicable Law: Personal Information Protection Law article 15 paragraph 1 sub-paragraph 3</p> 
<p>- Objectives: Identifying domestic creators, providing search service and issuing International Standard Name Identifier (ISNI)</p> 
<div>- List of Personal Information Collected: 
<ul> 
<li>(Essential) name of creator (Korean name, Chinese character, English name), official name of creation</li> 
<li>(Optional) the creator&rsquo;s birth date, institution the creator belongs to, creator&rsquo;s field of creation, creator&rsquo;s consortium participant institution control number and identification number, figures related with the creator, groups related with the creator, creator&rsquo;s URL, place of issue, publication year of creation, publisher of creation, co-author of creation, identification number, field of creation, subject name of work, full-text URL of work, role of creator</li> 
</ul> </div> </li> 
</ul> 
<ul class="info_list"> 
<li class="info_item note_that">Personal information listed below can be automatically created and collected when using internet service.</li> 
<li class="info_item">IP address, cookie, MAC address, service usage history, browsing history etc.</li> 
<li class="info_item note_that">For more details on personal information files managed by the National Library of Korea, please visit www.privacy.go.kr (Personal Data Protection Laws in Korea: Comprehensive Support for Privacy Protection Portal of the Ministry of the Interior and Safety) &rarr; Regarding Personal Information &rarr; Requests for Access to Personal Information&rarr; Catalog Service for Personal Information Files</li> 
</ul> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Providing personal information to a third party</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item">In principle, personal information is processed within range clarified as purpose of collecting, using personal information. The NLK does not process or provide personal information to a third party for other purposes without the data subject&rsquo;s consent except for the following cases. 
<ul class="inner_info_list"> 
<li class="inner_info_item">Upon a special approval by data subjects.</li> 
<li class="inner_info_item">In accordance with other laws.</li> 
<li class="inner_info_item">When it is believed to be necessary for the clear benefit for the life, health, and/or property of the data subject but a prior approval is unobtainable due to such reasons as the inability of the individual or his/her legal representative to express his/her intent or the inability to find out the whereabouts of the individual or his/her legal representative.</li> 
<li class="inner_info_item">When personal information is provided with anonymity for the purpose of statistical analysis or academic research.</li> 
<li class="inner_info_item">When it is determined through the deliberation of the personal information protection committee that it is impossible to perform certain activities required by law unless such information is made available for such exceptional causes or to the third party.</li> 
<li class="inner_info_item">When it needs to be provided to foreign governments or international organizations in order for international treaties/agreements to be implemented</li> 
<li class="inner_info_item">When it is needed for criminal investigation and/or prosecution</li> 
<li class="inner_info_item">When it is needed for court hearings; and</li> 
<li class="inner_info_item">When it is needed for the execution of court rulings such as imprisonment and protective disposition</li> 
</ul> </li> 
<li class="info_item">The NLK does not provide registered personal information files to a third party except for in cases mentioned under paragraph.</li> 
<li class="info_item">In case personal information is provided to a third party in accordance with paragraph 1, the NLK will notify/inform the data subject in accordance with law.</li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Required private information, information processing and retention period</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> For efficient processing of personal information, the NLK is contracting out processing of personal information as follows. </li> 
</ul> </div> 
<table class="tbl_ucmy0"> 
<caption><span class="ir_text">table of contracting out processing of personal information</span></caption> 
<colgroup> 
<col class="col1"> 
<col class="col1"> 
<col class="col4"> 
<col class="col1"> 
<col class="col1"> 
<col class="col1"> 
<col class="col1"> 
<col class="col1"> 
</colgroup> 
<thead>
<tr> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Division consigning the work</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Work outsourced</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Information disclosed</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Outsourcing period</th> 
<th scope="col" colspan="3" class="NamoSE_border_show">Company</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Management status inspection results</th> 
</tr> 
<tr> 
<th class="NamoSE_border_show">Name</th> 
<th class="NamoSE_border_show">Person in charge</th> 
<th class="NamoSE_border_show">Contact</th> 
</tr> 
</thead> 
<tbody> 
<tr> 
<th scope="row" class="NamoSE_border_show">Information Technology Division</th> 
<td>Maintenance of the computer system and information commons in 2019</td> 
<td>Members and staff database, database usage record and system usage record (for work)</td> 
<td>Until termination of contract</td> 
<td>Sysone</td> 
<td>Jun-ho Jang</td> 
<td><a href="tel:02-3483-8890">02-3483-8890</a></td> 
<td>No issues</td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Information Technology Division</th> 
<td>Maintenance of computer equipment including network in 2019</td> 
<td>All personal information stored in staff PC</td> 
<td>Until termination of contract</td> 
<td>ITballey</td> 
<td>Tae-seok Park</td> 
<td><a href="tel:02-590-6293">02-590-6293</a></td> 
<td>No issues</td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Information Technology Division</th> 
<td>Sending notification messages</td> 
<td>Mobile phone number</td> 
<td>Until termination of contract</td> 
<td>BIZTALK</td> 
<td>Hyeon-sup Kim</td> 
<td><a href="tel:02-552-0931">02-552-0931</a></td> 
<td>No issues</td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Information Technology Division</th> 
<td>Operating the National Library of Korea&rsquo;s webpage</td> 
<td>Member database, regular parking pass&middot;wedding hall&middot;volunteer activity applicant list, librarian training attendee&middot;lecturer database, overseas Korean studies librarian database, digital library video&middot;audio studio rental applicant list</td> 
<td>Until termination of contract</td> 
<td>Daumsoft</td> 
<td>Byeong-guk Kim</td> 
<td><a href="tel:02-590-6394">02-590-6394</a></td> 
<td>No issues</td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Information Technology Division</th> 
<td>Operating technology information centers of public libraries</td> 
<td>Library One Service user database, KOLASYS-NET operator and user list</td> 
<td>Until termination of contract</td> 
<td>eco, Korea Advanced Integration Technology</td> 
<td>Min-cheol Jeon</td> 
<td><a href="tel:02-3483-8840">02-3483-8840</a></td> 
<td>No issues</td> 
</tr> 
</tbody> 
</table> 
<ul class="mo_ucmy0_list"> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Division consigning the work: Information Technology Division</strong> 
<p>- Work outsourced: Maintenance of the computer system and information commons in 2019</p> 
<p>- Information disclosed: Members and staff database, database usage record and system usage record (for work)</p> 
<p>- Outsourcing period: Until termination of contract</p> 
<div>- Company: 
<ul> 
<li>Name: Sysone</li> 
<li>Person in charge: Jun-ho Jang</li> 
<li>Contact: <a href="tel:02-3483-8890">02-3483-8890</a></li> 
</ul> </div> 
<p>- Management status inspection results: No issues</p> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Division consigning the work: Information Technology Division</strong> 
<p>- Work outsourced: Maintenance of computer equipment including network in 2019</p> 
<p>- Information disclosed: All personal information stored in staff PC</p> 
<p>- Outsourcing period: Until termination of contract</p> 
<div>- Company: 
<ul> 
<li>Name: ITballey</li> 
<li>Person in charge: Tae-seok Park</li> 
<li>Contact: <a href="tel:02-590-6293">02-590-6293</a></li> 
</ul> </div> 
<p>- Management status inspection results: No issues</p> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Division consigning the work: Information Technology Division</strong> 
<p>- Work outsourced: Sending notification messages</p> 
<p>- Information disclosed: Mobile phone number</p> 
<p>- Outsourcing period: Until termination of contract</p> 
<div>- Company: 
<ul> 
<li>Name: BIZTALK</li> 
<li>Person in charge: Hyeon-sup Kim</li> 
<li>Contact: <a href="tel:02-552-0931">02-552-0931</a></li> 
</ul> </div> 
<p>- Management status inspection results: No issues</p> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Division consigning the work: Information Technology Division</strong> 
<p>- Work outsourced: Operating the National Library of Korea&rsquo;s webpage</p> 
<p>- Information disclosed: Member database, regular parking pass&middot;wedding hall&middot;volunteer activity applicant list, librarian training attendee&middot;lecturer database, overseas Korean studies librarian database, digital library video&middot;audio studio rental applicant list</p> 
<p>- Outsourcing period: Until termination of contract</p> 
<div>- Company: 
<ul> 
<li>Name: Daumsoft</li> 
<li>Person in charge: Byeong-guk Kim</li> 
<li>Contact: <a href="tel:02-590-6394">02-590-6394</a></li> 
</ul> </div> 
<p>- Management status inspection results: No issues</p> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Division consigning the work: Information Technology Division</strong> 
<p>- Work outsourced: Operating technology information centers of public libraries</p> 
<p>- Information disclosed: Library One Service user database, KOLASYS-NET operator and user list</p> 
<p>- Outsourcing period: Until termination of contract</p> 
<div>- Company: 
<ul> 
<li>Name: eco, Korea Advanced Integration Technology</li> 
<li>Person in charge: Min-cheol Jeon</li> 
<li>Contact: <a href="tel:02-3483-8840">02-3483-8840</a></li> 
</ul> </div> 
<p>- Management status inspection results: No issues</p> </li> 
</ul> 
<ul class="info_list"> 
<li class="info_item">When signing contract on consignment, the NLK clarifies on contract document responsibilities regarding the ban on processing personal information for purposes other than carrying out the consigned task, technical protection measures, restrictions on reconsignment, supervision, conpensation for damages etc. and supervises the processing of personal information.</li> 
<li class="info_item"> In case there are changes in the consigned task or consignee, the NLK will notify in accordance with the guideline on processing personal information without delay.</li> 
</ul> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">rights and duties of data subjects and legal representatives and ways of exercising them</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item">Data subjects can exercise their right and request to the NLK to access, revise, delete, suspend processing of personal information. </li> 
<li class="info_item">Data subjects can exercise their rights in accordance with paragraph 1 by following Personal Information Protection Law enforcement regulation enclosure no.8 and requesting in written form (by letter, email, FAX etc.). The NLK will promptly respond to the request (download the form).</li> 
<li class="info_item">Data subjects can have a representative including a legal representative of the data subject exercise their rights in accordance with paragraph 1. In this case, you have to submit power of attorney written in accordance with Personal Information Protection Law enforcement regulation enclosure no.11 (download the form).</li> 
<li class="info_item">Data subject&rsquo;s right to make request to view and suspend processing of personal information can be restricted in accordance with Personal Information Protection Law article 35 paragraph 5, article 37 paragraph 2.</li> 
<li class="info_item">If clarified in another law that the specific personal information is to be collected, data subject cannot request to delete the information.</li> 
<li class="info_item">When there is a request to view, revise/delete, suspend processing of personal information, the NLK checks whether the person who made the request is the data subject himself/herself or a justifiable representative.</li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Destruction of personal information</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> 
<p>The NLK destroys personal information immediately when the retention period is exceeded, the goal of processing the information is achieved and the information is no longer needed.</p> 
<p>When it is necessary to preserve personal information continuously in accordance with a different law after the retention period is exceeded or the goal of processing the personal information is achieved, the personal information (or personal information file) is moved to a separate database or another storage space.</p> 
<p>The procedure and method of destroying personal information are as follows.</p> 
<ul class="inner_info_list"> 
<li class="inner_info_item"> <strong class="tit">Procedure of destroying personal information</strong> 
<p>The NLK has to establish a plan for destroying personal information (or personal information file). The NLK selects personal information (personal information file) to destroy, gets approval from staff in charge of personal information protection and destroys the personal information (personal information file)</p> </li> 
<li class="inner_info_item"> <strong class="tit">Method of destroying personal information</strong> 
<p>The NLK destroys personal information recorded/stored in digital form in a way that the information cannot be restored and pulverizes or incinerates personal information recorded/printed on paper document.</p> </li> 
</ul> </li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Measures to guarantee the security of personal information</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> 
<p>The National Library of Korea is taking the following measures to secure safety of personal information.</p> 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Administrative measures : establish/implement management plan, educate staff regularly etc. </li> 
<li class="inner_info_item"> Technical measures : control access authority such as personal information processing system, install access control system, encode identification information etc., install security program </li> 
<li class="inner_info_item"> Physical measures : restrict access to data processing room, information storage room etc. </li> 
</ul> </li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Installation&middot;operation of automatic personal information collecting device</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> 
<p>To provide customized service to its users, the NLK uses &lsquo;cookies&rsquo; that stores and retrieves information frequently.</p> 
<p>Cookies are a small amount of information sent from the server (http) used for operating the website to user&rsquo;s computer browser. They are stored in a hard disk in user&rsquo;s PC.</p> 
<ul class="inner_info_list"> 
<li class="inner_info_item"> A. Purpose of using cookies : Cookies are used to grasp services and websites used, searched key words, whether the user has secure connection etc. to provide optimal information to users. </li> 
<li class="inner_info_item"> B. Installation, operation of cookies and refusal : You can refuse to save cookies by setting options (tools > internet option > personal information). </li> 
<li class="inner_info_item"> C. If you refuse to save cookies, you may encounter difficulties when using customized services. </li> 
</ul> </li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Staff in charge of personal information protection</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> The NLK appoints a staff in charge of personal information protection to process personal information, handle complaints from data subjects, relieve damage etc. </li> 
<li class="info_item"> Staff in charge of personal information protection. 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Name : Lee Jongmin </li> 
<li class="inner_info_item"> Position : Information System Operation Director </li> 
<li class="inner_info_item"> Phone : <a href="tel:02-590-6310">02-590-6310</a> (※ You will be transferred to the department in charge of personal information protection) </li> 
<li class="inner_info_item"> Fax : <a href="tel:02-590-0577"></a>02-590-0577 </li> 
<li class="inner_info_item"> E-mail : <a href="mailto:privacy@mail.nl.go.kr">privacy@mail.nl.go.kr</a> </li> 
</ul> </li> 
<li class="info_item"> Staff in charge of personal information protection. 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Department : Information Technology Division </li> 
<li class="inner_info_item"> Staff in charge : Lee Jeongho </li> 
<li class="inner_info_item"> Phone : <a href="tel:02-590-6310">02-590-6310</a> </li> 
<li class="inner_info_item"> Fax : <a href="tel:02-590-0577">02-590-0577</a> </li> 
<li class="inner_info_item"> E-mail : <a href="mailto:privacy@mail.nl.go.kr">privacy@mail.nl.go.kr</a> </li> 
</ul> </li> 
<li class="info_item"> Data subjects can contact staff and department in charge of personal information protection to inquire about personal information protection matters, make request, request for damage relief etc. when using the NLK&rsquo;s service (or project). The NLK will respond to your request without delay. </li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Request access to personal information</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> Data subjects can request for access to personal information to the department below in accordance with Personal Information Protection Act article 35. The NLK will take immediate actions in response to users&rsquo; requests. </li> 
</ul> </div> 
<table class="tbl_ucmy0"> 
<caption><span class="ir_text">table of Request access to personal information</span></caption> 
<colgroup> 
<col class="col3"> 
<col class="col3"> 
<col class="col1"> 
<col class="col1"> 
<col class="col1"> 
<col class="col5"> 
</colgroup> 
<thead>
<tr> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Personal information file name</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Name of division</th> 
<th scope="col" rowspan="2" class="NamoSE_border_show">Person in charge</th> 
<th scope="col" colspan="3" class="NamoSE_border_show">Contact</th> 
</tr> 
<tr> 
<th class="NamoSE_border_show">Phone</th> 
<th class="NamoSE_border_show">Fax</th> 
<th class="NamoSE_border_show">Email</th> 
</tr> 
</thead> 
<tbody> 
<tr> 
<th scope="row" class="NamoSE_border_show">
<ul> 
<li>KOLASYS-NET user list</li> 
<li>KOLASYS-NET operator list</li> 
<li>KOLASIA user list</li> 
</ul> </th> 
<td>Information Technology Division</td> 
<td>Sang-hyeon Han</td> 
<td><a href="tel:02-3483-8877">02-3483-8877</a></td> 
<td><a href="tel:02-590-0577">02-590-0577</a></td> 
<td><a href="mailto:cfss24@korea.kr">cfss24@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Library One Service database </th> 
<td>Information Technology Division</td> 
<td>Chae-hyeok Lee</td> 
<td><a href="tel:02-590-0727">02-590-0727</a></td> 
<td><a href="tel:02-590-0577">02-590-0577</a></td> 
<td><a href="mailto:konos_lch@korea.kr">konos_lch@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">National Library of Korea member database </th> 
<td>Information Technology Division</td> 
<td>Eun-bi Seo</td> 
<td><a href="tel:02-3483-8898">02-3483-8898</a></td> 
<td><a href="tel:02-590-0577">02-590-0577</a></td> 
<td><a href="mailto:silverbee7841@korea.kr">silverbee7841@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">
<ul> 
<li>Librarian training attendee database,</li> 
<li>librarian training lecturer database</li> 
</ul> </th> 
<td>Librarian Training &amp; Culture Division</td> 
<td>Jeong-hye Seo</td> 
<td><a href="tel:02-590-0555">02-590-0555</a></td> 
<td><a href="tel:02-590-0557">02-590-0557</a></td> 
<td><a href="mailto:kiraina@korea.kr">kiraina@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">
<ul> 
<li>Digital library video studio rental application form</li> 
<li>Digital library audio studio rental application form</li> 
</ul> </th> 
<td>Digital Library Service Division</td> 
<td>Su-jin Lee</td> 
<td><a href="tel:02-590-6306">02-590-6306</a></td> 
<td><a href="tel:02-590-0665">02-590-0665</a></td> 
<td><a href="mailto:lsujin@korea.kr">lsujin@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">Overseas Korean studies librarian database </th> 
<td>International Cooperation &amp; Public Relations Team</td> 
<td>Hae-yong Lee</td> 
<td><a href="tel:02-590-6327">02-590-6327</a></td> 
<td><a href="tel:02-590-6329">02-590-6329</a></td> 
<td><a href="mailto:hylee12@korea.kr">hylee12@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">List of regular parking permit applicants </th> 
<td>General Affairs Division</td> 
<td>Younng-ki Song</td> 
<td><a href="tel:02-590-0523">02-590-0523</a></td> 
<td><a href="tel:02-590-0530">02-590-0530</a></td> 
<td><a href="mailto:yksong93@korea.kr">yksong93@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">List of wedding hall rental applicants </th> 
<td>General Affairs Division</td> 
<td>Sang-hoon Keum</td> 
<td><a href="tel:02-590-0534">02-590-0534</a></td> 
<td><a href="tel:02-590-0530">02-590-0530</a></td> 
<td><a href="mailto:shkeum@korea.kr">shkeum@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">List of volunteer activity applicants </th> 
<td>Collection Management &amp; Service Division</td> 
<td>Ji-young Lee</td> 
<td><a href="tel:02-3483-8832">02-3483-8832</a></td> 
<td><a href="tel:02-590-0607">02-590-0607</a></td> 
<td><a href="mailto:ylee108@korea.kr">ylee108@korea.kr</a></td> 
</tr> 
<tr> 
<th scope="row" class="NamoSE_border_show">National authority files </th> 
<td>Bibliographic Control Division</td> 
<td>Min-sang Song</td> 
<td><a href="tel:02-590-6367">02-590-6367</a></td> 
<td><a href="tel:02-590-0621">02-590-0621</a></td> 
<td><a href="mailto:sms1920@korea.kr">sms1920@korea.kr</a></td> 
</tr> 
</tbody> 
</table> 
<ul class="mo_ucmy0_list"> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">KOLASYS-NET user list, KOLASYS-NET operator list, KOLASIA user list</strong> 
<p>- Name of division: Information Technology Division</p> 
<p>- Person in charge: Sang-hyeon Han</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-3483-8877">02-3483-8877</a></li> 
<li>Fax: <a href="tel:02-590-0577">02-590-0577</a></li> 
<li>Email: <a href="mailto:cfss24@korea.kr">cfss24@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Library One Service database</strong> 
<p>- Name of division: Information Technology Division</p> 
<p>- Person in charge: Chae-hyeok Lee</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-0727">02-590-0727</a></li> 
<li>Fax: <a href="tel:02-590-0577">02-590-0577</a></li> 
<li>Email: <a href="mailto:konos_lch@korea.kr">konos_lch@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">National Library of Korea member database</strong> 
<p>- Name of division: Information Technology Division</p> 
<p>- Person in charge: Eun-bi Seo</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-3483-8898">02-3483-8898</a></li> 
<li>Fax: <a href="tel:02-590-0577">02-590-0577</a></li> 
<li>Email: <a href="mailto:silverbee7841@korea.kr">silverbee7841@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Librarian training attendee database, ibrarian training lecturer database</strong> 
<p>- Name of division: Librarian Training &amp; Culture Division</p> 
<p>- Person in charge: Jeong-hye Seo</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-0555">02-590-0555</a></li> 
<li>Fax: <a href="tel:02-590-0557">02-590-0557</a></li> 
<li>Email: <a href="mailto:kiraina@korea.kr">kiraina@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Digital library video studio rental application form, Digital library audio studio rental application form</strong> 
<p>- Name of division: Digital Library Service Division</p> 
<p>- Person in charge: Su-jin Lee</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-6306">02-590-6306</a></li> 
<li>Fax: <a href="tel:02-590-0665">02-590-0665</a></li> 
<li>Email: <a href="mailto:lsujin@korea.kr">lsujin@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">Overseas Korean studies librarian database</strong> 
<p>- Name of division: International Cooperation &amp; Public Relations Team</p> 
<p>- Person in charge: Hae-yong Lee</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-6327">02-590-6327</a></li> 
<li>Fax: <a href="tel:02-590-6329">02-590-6329</a></li> 
<li>Email: <a href="mailto:hylee12@korea.kr">hylee12@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">List of regular parking permit applicants</strong> 
<p>- Name of division: General Affairs Division</p> 
<p>- Person in charge: Younng-ki Song</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-0523">02-590-0523</a></li> 
<li>Fax: <a href="tel:02-590-0530">02-590-0530</a></li> 
<li>Email: <a href="mailto:yksong93@korea.kr">yksong93@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">List of wedding hall rental applicants</strong> 
<p>- Name of division: General Affairs Division</p> 
<p>- Person in charge: Sang-hoon Keum</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-0534">02-590-0534</a></li> 
<li>Fax: <a href="tel:02-590-0530">02-590-0530</a></li> 
<li>Email: <a href="mailto:shkeum@korea.kr">shkeum@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">List of volunteer activity applicants</strong> 
<p>- Name of division: Collection Management &amp; Service Division</p> 
<p>- Person in charge: Ji-young Lee</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-3483-8832">02-3483-8832</a></li> 
<li>Fax: <a href="tel:02-590-0607">02-590-0607</a></li> 
<li>Email: <a href="mailto:jylee108@korea.kr">jylee108@korea.kr</a></li> 
</ul> </div> </li> 
<li class="mo_ucmy0_item"> <strong class="ucmy0_title">National authority files</strong> 
<p>- Name of division: Bibliographic Control Division</p> 
<p>- Person in charge: Min-sang Song</p> 
<div>- Contact: 
<ul> 
<li>Phone: <a href="tel:02-590-6367">02-590-6367</a></li> 
<li>Fax: <a href="tel:02-590-0621">02-590-0621</a></li> 
<li>Email: <a href="mailto:sms1920@korea.kr">sms1920@korea.kr</a></li> 
</ul> </div> </li> 
</ul> 
<ul class="info_list"> 
<li class="info_item"> Data subjects can also request for access to personal information on the Ministry of Public Administration and Security&rsquo;s &lsquo;Portal for supporting personal informaion protection&rsquo; website (<a href="www.privacy.go.kr" target="_blank" title="Open the new window">www.privacy.go.kr</a>).</li> 
<li class="info_item note_that">the Ministry of Public Administration and Security&rsquo;s &lsquo;Portal for supporting personal informaion protection&rsquo; &rarr; civil complaints on personal information &rarr; request for access to personal information etc. (I-PIN is neeeded for identification)</li> 
</ul> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">Remedial measures for infringement of rights</strong> </a> </dt> <dd class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> Data subjects can inquire about damage relief for private information infringement, consultation etc. to the institutions listed below. </li> 
<li class="info_item"> The institutions below do not belong to the NLK. Please contact the institutions if you are not satisfied with the NLK&rsquo;s services for handling complaints and relieving damage or need more help. </li> 
<li class="info_item"> Center for personal information infringement matters (run by Korea Internet &amp; Security Agency) 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Responsibilities : reporting violation of privacy rights, consultations </li> 
<li class="inner_info_item"> Website : <a href="privacy.kisa.or.kr" target="_blank" title="Open the new window">privacy.kisa.or.kr</a> </li> 
<li class="inner_info_item"> Tel : 118 without exchange number </li> 
<li class="inner_info_item"> Address: (58324) 9 Jinheung-gil (Bitgaram-dong 301-2) , Naju-city, Jeollanam-do. Personnal Information Breach Report Center 3rd floor. </li> 
</ul> </li> 
<li class="info_item"> Personal Information Dispute Mediation Committee 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Responsibilities : making a request for mediation of conflicts regarding personal information issues or conflicts between groups (civil remedies) </li> 
<li class="inner_info_item"> Website : <a href="kopico.go.kr" target="_blank" title="Open the new window">kopico.go.kr</a> </li> 
<li class="inner_info_item"> Tel : (without country code) 1833-6972 </li> 
<li class="inner_info_item"> Address: (03171) 4F, Seoul Government Complex, 209 Sejong-daero (Sejong-ro), Jongno-gu, Seoul, Republic of Korea </li> 
</ul> </li> 
<li class="info_item"> Supreme Prosecutors&rsquo; Office Cyber Investigation Division : 1301 without exchange number, <a href="mailto:cid@spo.go.kr">cid@spo.go.kr</a> (<a href="www.spo.go.kr" target="_blank" title="Open the new window">www.spo.go.kr</a>) </li> 
<li class="info_item"> National Police Agency Cyber Terror Investigation: 182 without exchange number (<a href="cyberbureau.police.go.kr" target="_blank" title="Open the new window">cyberbureau.police.go.kr</a>) </li> 
</ul> </div> </div> </div> </dd> </dl> <dl class="privacy_item"> <dt class="privacy_title" title="Detail view"> <a href="#" class="title"> <strong class="inner_title">The revised regulation on personal information processing</strong> </a> </dt> 
<div class="privacy_cont"> 
<div class="content_text_wrap"> 
<div class="informaition_inner"> 
<div class="informaition_cont"> 
<ul class="info_list"> 
<li class="info_item"> This regulation shall take effect on Sep 21, 2018 </li> 
<li class="info_item"> See below for previous regulations 
<ul class="inner_info_list"> 
<li class="inner_info_item"> Regulations implemented before January 31, 2013 </li> 
<li class="inner_info_item"> Regulations implemented before March 12, 2018 </li> 
<li class="inner_info_item"> Regulations implemented before September 21, 2018 </li> 
<li class="inner_info_item"> Regulations implemented before Feburary 28, 2019 </li> 
</ul> </li> 
</ul> </div> </div> </div> </div></dl> </div> </div></div>
				</div>
			</div>
		</div>
		<!-- //contents -->
	</div>
	<!-- //container -->
	<!-- 다국어입력기 -->
	<div class="worldword-wrap" style="display:none">
		<fieldset>
			<legend>Multilingual keyboard</legend>
			<strong class="worldword-title">Multilingual keyboard</strong>
			<div class="worldword">
				<ul class="language">
					<li><a href="#none" class="subSearchKeyword" data-type="히라가나">Hiragana</a></li>
					<li><a href="#none" data-type="가타카나">Katakana</a></li>
					<li><a href="#none" data-type="한글고어">Archaic term for Korean</a></li>
					<li><a href="#none" data-type="그리스문자">Greek alphabet</a></li>
					<li><a href="#none" data-type="괄호기호">Parentheses symbol</a></li>
					<li><a href="#none" data-type="학술기호">Academic Symbols</a></li>
					<li><a href="#none" data-type="기술기호">Describe symbol</a></li>
					<li><a href="#none" data-type="라틴문자">Latin alphabet</a></li>
					<li><a href="#none" data-type="러시아문자">Russian alphabet</a></li>
					<li><a href="#none" data-type="단위기호">Unit symbol</a></li>
					<li><a href="#none" data-type="일반기호">General Symbol</a></li>
					<li><a href="#none" data-type="로마자">Roman alphabet</a></li>
					<li>
						<a href="#none" data-type="첨자기호">Subscript · Fractional numbers</a>
					</li>
				</ul>
				<!-- 히라가나 -->
				<div class="language-contents" data-type="히라가나" style="display:none">
					<h5 class="ir_text">히라가나</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">あ</a></li>
						<li><a href="#">ぁ</a></li>
						<li><a href="#">か</a></li>
						<li><a href="#">が</a></li>
						<li><a href="#">さ</a></li>
						<li><a href="#">ざ</a></li>
						<li><a href="#">た</a></li>
						<li><a href="#">だ</a></li>
						<li><a href="#">な</a></li>
						<li><a href="#">は</a></li>
						<li><a href="#">ば</a></li>
						<li><a href="#">ぱ</a></li>
						<li><a href="#">ま</a></li>
						<li><a href="#">や</a></li>
						<li><a href="#">ゃ</a></li>
						<li><a href="#">ら</a></li>
						<li><a href="#">わ</a></li>
						<li><a href="#">ゎ</a></li>
						<li><a href="#">ん</a></li>
					</ul>
					<div class="ir_text">두 번째 줄</div>
					<ul>
						<li><a href="#">い</a></li>
						<li><a href="#">ぃ</a></li>
						<li><a href="#">き</a></li>
						<li><a href="#">ぎ</a></li>
						<li><a href="#">し</a></li>
						<li><a href="#">じ</a></li>
						<li><a href="#">ち</a></li>
						<li><a href="#">ぢ</a></li>
						<li><a href="#">に</a></li>
						<li><a href="#">ひ</a></li>
						<li><a href="#">び</a></li>
						<li><a href="#">ぴ</a></li>
						<li><a href="#">み</a></li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li><a href="#">り</a></li>
					</ul>
					<div class="ir_text">세 번째 줄</div>
					<ul>
						<li><a href="#">う</a></li>
						<li><a href="#">ぅ</a></li>
						<li><a href="#">く</a></li>
						<li><a href="#">ぐ</a></li>
						<li><a href="#">す</a></li>
						<li><a href="#">ず</a></li>
						<li><a href="#">つ</a></li>
						<li><a href="#">づ</a></li>
						<li><a href="#">っ</a></li>
						<li><a href="#">ぬ</a></li>
						<li><a href="#">ふ</a></li>
						<li><a href="#">ぶ</a></li>
						<li><a href="#">ぷ</a></li>
						<li><a href="#">む</a></li>
						<li><a href="#">ゆ</a></li>
						<li><a href="#">ゅ</a></li>
						<li><a href="#">る</a></li>
					</ul>
					<div class="ir_text">네 번째 줄</div>
					<ul>
						<li><a href="#">え</a></li>
						<li><a href="#">ぇ</a></li>
						<li><a href="#">け</a></li>
						<li><a href="#">げ</a></li>
						<li><a href="#">せ</a></li>
						<li><a href="#">ぜ</a></li>
						<li><a href="#">て</a></li>
						<li><a href="#">で</a></li>
						<li><a href="#">ね</a></li>
						<li><a href="#">へ</a></li>
						<li><a href="#">べ</a></li>
						<li><a href="#">ぺ</a></li>
						<li><a href="#">め</a></li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li><a href="#">れ</a></li>
					</ul>
					<div class="ir_text">다섯 번째 줄</div>
					<ul>
						<li><a href="#">お</a></li>
						<li><a href="#">ぉ</a></li>
						<li><a href="#">こ</a></li>
						<li><a href="#">ご</a></li>
						<li><a href="#">そ</a></li>
						<li><a href="#">ぞ</a></li>
						<li><a href="#">と</a></li>
						<li><a href="#">ど</a></li>
						<li><a href="#">の</a></li>
						<li><a href="#">ほ</a></li>
						<li><a href="#">ぼ</a></li>
						<li><a href="#">ぽ</a></li>
						<li><a href="#">も</a></li>
						<li><a href="#">よ</a></li>
						<li><a href="#">ょ</a></li>
						<li><a href="#">ろ</a></li>
						<li><a href="#">を</a></li>
					</ul>
				</div>
				<!-- //히라가나 -->
				<!-- 가타카나 -->
				<div class="language-contents" data-type="가타카나" style="display:none">
					<h5 class="ir_text">가타카나</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">ア</a></li>
						<li><a href="#">ァ</a></li>
						<li><a href="#">カ</a></li>
						<li><a href="#">ガ</a></li>
						<li><a href="#">サ</a></li>
						<li><a href="#">ザ</a></li>
						<li><a href="#">タ</a></li>
						<li><a href="#">ダ</a></li>
						<li><a href="#">ナ</a></li>
						<li><a href="#">ハ</a></li>
						<li><a href="#">バ</a></li>
						<li><a href="#">パ</a></li>
						<li><a href="#">マ</a></li>
						<li><a href="#">ヤ</a></li>
						<li><a href="#">ャ</a></li>
						<li><a href="#">ラ</a></li>
						<li><a href="#">ワ</a></li>
						<li><a href="#">ヮ</a></li>
						<li><a href="#">ン</a></li>
					</ul>
					<div class="ir_text">두 번째 줄</div>
					<ul>
						<li><a href="#">イ</a></li>
						<li><a href="#">ィ</a></li>
						<li><a href="#">キ</a></li>
						<li><a href="#">ギ</a></li>
						<li><a href="#">シ</a></li>
						<li><a href="#">ジ</a></li>
						<li><a href="#">チ</a></li>
						<li><a href="#">ヂ</a></li>
						<li><a href="#">ニ</a></li>
						<li><a href="#">ヒ</a></li>
						<li><a href="#">ビ</a></li>
						<li><a href="#">ピ</a></li>
						<li><a href="#">ミ</a></li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li><a href="#">リ</a></li>
					</ul>
					<div class="ir_text">세 번째 줄</div>
					<ul>
						<li><a href="#">ウ</a></li>
						<li><a href="#">ゥ</a></li>
						<li><a href="#">ク</a></li>
						<li><a href="#">グ</a></li>
						<li><a href="#">ス</a></li>
						<li><a href="#">ズ</a></li>
						<li><a href="#">ツ</a></li>
						<li><a href="#">ヅ</a></li>
						<li><a href="#">ッ</a></li>
						<li><a href="#">ヌ</a></li>
						<li><a href="#">フ</a></li>
						<li><a href="#">ブ</a></li>
						<li><a href="#">プ</a></li>
						<li><a href="#">ム</a></li>
						<li><a href="#">ユ</a></li>
						<li><a href="#">ュ</a></li>
						<li><a href="#">ル</a></li>
					</ul>
					<div class="ir_text">네 번째 줄</div>
					<ul>
						<li><a href="#">エ</a></li>
						<li><a href="#">ェ</a></li>
						<li><a href="#">ケ</a></li>
						<li><a href="#">ゲ</a></li>
						<li><a href="#">セ</a></li>
						<li><a href="#">ゼ</a></li>
						<li><a href="#">テ</a></li>
						<li><a href="#">デ</a></li>
						<li><a href="#">ネ</a></li>
						<li><a href="#">ヘ</a></li>
						<li><a href="#">ベ</a></li>
						<li><a href="#">ペ</a></li>
						<li><a href="#">メ</a></li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li><a href="#">レ</a></li>
					</ul>
					<div class="ir_text">다섯 번째 줄</div>
					<ul>
						<li><a href="#">オ</a></li>
						<li><a href="#">ォ</a></li>
						<li><a href="#">コ</a></li>
						<li><a href="#">ゴ</a></li>
						<li><a href="#">ソ</a></li>
						<li><a href="#">ゾ</a></li>
						<li><a href="#">ト</a></li>
						<li><a href="#">ド</a></li>
						<li><a href="#">ノ</a></li>
						<li><a href="#">ホ</a></li>
						<li><a href="#">ボ</a></li>
						<li><a href="#">ポ</a></li>
						<li><a href="#">モ</a></li>
						<li><a href="#">ヨ</a></li>
						<li><a href="#">ョ</a></li>
						<li><a href="#">ロ</a></li>
						<li><a href="#">ヲ</a></li>
						<li><a href="#">―</a></li>
					</ul>
				</div>
				<!-- //가타카나 -->
				<!-- 한글고어 -->
				<div class="language-contents" data-type="한글고어" style="display:none">
					<h5 class="ir_text">한글고어</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">ㅥ</a></li>
						<li><a href="#">ㅦ</a></li>
						<li><a href="#">ㅧ</a></li>
						<li><a href="#">ㅨ</a></li>
						<li><a href="#">ㅩ</a></li>
						<li><a href="#">ㅪ</a></li>
						<li><a href="#">ㅫ</a></li>
						<li><a href="#">ㅬ</a></li>
						<li><a href="#">ㅭ</a></li>
						<li><a href="#">ㅮ</a></li>
						<li><a href="#">ㅯ</a></li>
						<li><a href="#">ㅰ</a></li>
						<li><a href="#">ㅱ</a></li>
						<li><a href="#">ㅲ</a></li>
						<li><a href="#">ㅳ</a></li>
						<li><a href="#">ㅴ</a></li>
						<li><a href="#">ㅵ</a></li>
						<li><a href="#">ㅶ</a></li>
						<li><a href="#">ㅷ</a></li>
						<li><a href="#">ㅸ</a></li>
						<li><a href="#">ㅹ</a></li>
						<li><a href="#">ㅺ</a></li>
						<li><a href="#">ㅻ</a></li>
						<li><a href="#">ㅼ</a></li>
						<li><a href="#">ㅽ</a></li>
						<li><a href="#">ㅾ</a></li>
						<li><a href="#">ㅿ</a></li>
						<li><a href="#">ㆀ</a></li>
						<li><a href="#">ㆁ</a></li>
						<li><a href="#">ㆂ</a></li>
						<li><a href="#">ㆃ</a></li>
						<li><a href="#">ㆄ</a></li>
						<li><a href="#">ㆅ</a></li>
						<li><a href="#">ㆆ</a></li>
						<li><a href="#">ㆇ</a></li>
						<li><a href="#">ㆈ</a></li>
						<li><a href="#">ㆉ</a></li>
						<li><a href="#">ㆊ</a></li>
						<li><a href="#">ㆋ</a></li>
						<li><a href="#">ㆌ</a></li>
						<li><a href="#">ㆍ</a></li>
						<li><a href="#">ㆎ</a></li>
					</ul>
				</div>
				<!-- //한글고어 -->
				<!-- 그리스문자 -->
				<div class="language-contents" data-type="그리스문자" style="display:none">
					<h5 class="ir_text">그리스문자</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">Α</a></li>
						<li><a href="#">Β</a></li>
						<li><a href="#">Γ</a></li>
						<li><a href="#">Δ</a></li>
						<li><a href="#">Ε</a></li>
						<li><a href="#">Ζ</a></li>
						<li><a href="#">Η</a></li>
						<li><a href="#">Θ</a></li>
						<li><a href="#">Ι</a></li>
						<li><a href="#">Κ</a></li>
						<li><a href="#">Λ</a></li>
						<li><a href="#">Μ</a></li>
						<li><a href="#">Ν</a></li>
						<li><a href="#">Ξ</a></li>
						<li><a href="#">Ο</a></li>
						<li><a href="#">Π</a></li>
						<li><a href="#">Ρ</a></li>
						<li><a href="#">Σ</a></li>
						<li><a href="#">Τ</a></li>
						<li><a href="#">Υ</a></li>
						<li><a href="#">Φ</a></li>
						<li><a href="#">Χ</a></li>
						<li><a href="#">Ψ</a></li>
						<li><a href="#">Ω</a></li>
						<li><a href="#">α</a></li>
						<li><a href="#">β</a></li>
						<li><a href="#">γ</a></li>
						<li><a href="#">δ</a></li>
						<li><a href="#">ε</a></li>
						<li><a href="#">ζ</a></li>
						<li><a href="#">η</a></li>
						<li><a href="#">θ</a></li>
						<li><a href="#">ι</a></li>
						<li><a href="#">κ</a></li>
						<li><a href="#">λ</a></li>
						<li><a href="#">μ</a></li>
						<li><a href="#">ν</a></li>
						<li><a href="#">ξ</a></li>
						<li><a href="#">ο</a></li>
						<li><a href="#">π</a></li>
						<li><a href="#">ρ</a></li>
						<li><a href="#">σ</a></li>
						<li><a href="#">τ</a></li>
						<li><a href="#">υ</a></li>
						<li><a href="#">φ</a></li>
						<li><a href="#">χ</a></li>
						<li><a href="#">ψ</a></li>
						<li><a href="#">ω</a></li>
					</ul>
				</div>
				<!-- //그리스문자 -->
				<!-- 괄호기호 -->
				<div class="language-contents" data-type="괄호기호" style="display:none">
					<h5 class="ir_text">괄호기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">‘</a></li>
						<li><a href="#">’</a></li>
						<li><a href="#">“</a></li>
						<li><a href="#">”</a></li>
						<li><a href="#">〔</a></li>
						<li><a href="#">〕</a></li>
						<li><a href="#">〈</a></li>
						<li><a href="#">〉</a></li>
						<li><a href="#">「</a></li>
						<li><a href="#">」</a></li>
						<li><a href="#">『</a></li>
						<li><a href="#">』</a></li>
						<li><a href="#">【</a></li>
						<li><a href="#">】</a></li>
						<li><a href="#">＂</a></li>
						<li><a href="#">（</a></li>
						<li><a href="#">）</a></li>
						<li><a href="#">［</a></li>
						<li><a href="#">］</a></li>
						<li><a href="#">｛</a></li>
						<li><a href="#">｝</a></li>
					</ul>
				</div>
				<!-- //괄호기호 -->
				<!-- 학술기호 -->
				<div class="language-contents" data-type="학술기호" style="display:none">
					<h5 class="ir_text">학술기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">±</a></li>
						<li><a href="#">×</a></li>
						<li><a href="#">÷</a></li>
						<li><a href="#">≠</a></li>
						<li><a href="#">≤</a></li>
						<li><a href="#">≥</a></li>
						<li><a href="#">∞</a></li>
						<li><a href="#">∴</a></li>
						<li><a href="#">♂</a></li>
						<li><a href="#">♀</a></li>
						<li><a href="#">∠</a></li>
						<li><a href="#">⊥</a></li>
						<li><a href="#">⌒</a></li>
						<li><a href="#">∂</a></li>
						<li><a href="#">∇</a></li>
						<li><a href="#">≡</a></li>
						<li><a href="#">≒</a></li>
						<li><a href="#">≪</a></li>
						<li><a href="#">≫</a></li>
						<li><a href="#">√</a></li>
						<li><a href="#">∽</a></li>
						<li><a href="#">∝</a></li>
						<li><a href="#">∵</a></li>
						<li><a href="#">∫</a></li>
						<li><a href="#">∬</a></li>
						<li><a href="#">∈</a></li>
						<li><a href="#">∋</a></li>
						<li><a href="#">⊆</a></li>
						<li><a href="#">⊇</a></li>
						<li><a href="#">⊂</a></li>
						<li><a href="#">⊃</a></li>
						<li><a href="#">∪</a></li>
						<li><a href="#">∩</a></li>
						<li><a href="#">∧</a></li>
						<li><a href="#">∨</a></li>
						<li><a href="#">￢</a></li>
						<li><a href="#">⇒</a></li>
						<li><a href="#">⇔</a></li>
						<li><a href="#">∀</a></li>
						<li><a href="#">∃</a></li>
						<li><a href="#">∮</a></li>
						<li><a href="#">∑</a></li>
						<li><a href="#">∏</a></li>
						<li><a href="#">＋</a></li>
						<li><a href="#">－</a></li>
						<li><a href="#">＜</a></li>
						<li><a href="#">＝</a></li>
						<li><a href="#">＞</a></li>
					</ul>
				</div>
				<!-- //학술기호 -->
				<!-- 기술기호 -->
				<div class="language-contents" data-type="기술기호" style="display:none">
					<h5 class="ir_text">기술기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">、</a></li>
						<li><a href="#">。</a></li>
						<li><a href="#">·</a></li>
						<li><a href="#">‥</a></li>
						<li><a href="#">…</a></li>
						<li><a href="#">¨</a></li>
						<li><a href="#">〃</a></li>
						<li><a href="#">&shy;</a></li>
						<li><a href="#">―</a></li>
						<li><a href="#">∥</a></li>
						<li><a href="#">＼</a></li>
						<li><a href="#">∼</a></li>
						<li><a href="#">´</a></li>
						<li><a href="#">～</a></li>
						<li><a href="#">ˇ</a></li>
						<li><a href="#">˘</a></li>
						<li><a href="#">˝</a></li>
						<li><a href="#">˚</a></li>
						<li><a href="#">˙</a></li>
						<li><a href="#">¸</a></li>
						<li><a href="#">˛</a></li>
						<li><a href="#">¡</a></li>
						<li><a href="#">¿</a></li>
						<li><a href="#">ː</a></li>
						<li><a href="#">！</a></li>
						<li><a href="#">＇</a></li>
						<li><a href="#">，</a></li>
						<li><a href="#">．</a></li>
						<li><a href="#">／</a></li>
						<li><a href="#">：</a></li>
						<li><a href="#">；</a></li>
						<li><a href="#">？</a></li>
						<li><a href="#">＾</a></li>
						<li><a href="#">＿</a></li>
						<li><a href="#">｀</a></li>
						<li><a href="#">｜</a></li>
						<li><a href="#">￣</a></li>
					</ul>
				</div>
				<!-- //기술기호 -->
				<!-- 라틴문자 -->
				<div class="language-contents" data-type="라틴문자" style="display:none">
				<h5 class="ir_text">라틴문자</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">Æ</a></li>
						<li><a href="#">Ð</a></li>
						<li><a href="#">Ħ</a></li>
						<li><a href="#">ĲvĿ</a></li>
						<li><a href="#">Ł</a></li>
						<li><a href="#">Ø</a></li>
						<li><a href="#">Œ</a></li>
						<li><a href="#">Þ</a></li>
						<li><a href="#">Ŧ</a></li>
						<li><a href="#">Ŋ</a></li>
						<li><a href="#">æ</a></li>
						<li><a href="#">đ</a></li>
						<li><a href="#">ð</a></li>
						<li><a href="#">ħ</a></li>
						<li><a href="#">ı</a></li>
						<li><a href="#">ĳ</a></li>
						<li><a href="#">ĸ</a></li>
						<li><a href="#">ŀ</a></li>
						<li><a href="#">ł</a></li>
						<li><a href="#">ø</a></li>
						<li><a href="#">œ</a></li>
						<li><a href="#">ß</a></li>
						<li><a href="#">þ</a></li>
						<li><a href="#">ŧ</a></li>
						<li><a href="#">ŋ</a></li>
						<li><a href="#">ŉ</a></li>
					</ul>
				</div>
				<!-- //라틴문자 -->
				<!-- 러시아문자 -->
				<div class="language-contents" data-type="러시아문자" style="display:none">
					<h5 class="ir_text">러시아문자</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">А</a></li>
						<li><a href="#">Б</a></li>
						<li><a href="#">В</a></li>
						<li><a href="#">Г</a></li>
						<li><a href="#">Д</a></li>
						<li><a href="#">Е</a></li>
						<li><a href="#">Ё</a></li>
						<li><a href="#">Ж</a></li>
						<li><a href="#">З</a></li>
						<li><a href="#">И</a></li>
						<li><a href="#">Й</a></li>
						<li><a href="#">К</a></li>
						<li><a href="#">Л</a></li>
						<li><a href="#">М</a></li>
						<li><a href="#">Н</a></li>
						<li><a href="#">О</a></li>
						<li><a href="#">П</a></li>
						<li><a href="#">Р</a></li>
						<li><a href="#">С</a></li>
						<li><a href="#">Т</a></li>
						<li><a href="#">У</a></li>
						<li><a href="#">Ф</a></li>
						<li><a href="#">Х</a></li>
						<li><a href="#">Ц</a></li>
						<li><a href="#">Ч</a></li>
						<li><a href="#">Ш</a></li>
						<li><a href="#">Щ</a></li>
						<li><a href="#">Ъ</a></li>
						<li><a href="#">Ы</a></li>
						<li><a href="#">Ь</a></li>
						<li><a href="#">Э</a></li>
						<li><a href="#">Ю</a></li>
						<li><a href="#">Я</a></li>
						<li><a href="#">а</a></li>
						<li><a href="#">б</a></li>
						<li><a href="#">в</a></li>
						<li><a href="#">г</a></li>
						<li><a href="#">д</a></li>
						<li><a href="#">е</a></li>
						<li><a href="#">ё</a></li>
						<li><a href="#">ж</a></li>
						<li><a href="#">з</a></li>
						<li><a href="#">и</a></li>
						<li><a href="#">й</a></li>
						<li><a href="#">к</a></li>
						<li><a href="#">л</a></li>
						<li><a href="#">м</a></li>
						<li><a href="#">н</a></li>
						<li><a href="#">о</a></li>
						<li><a href="#">п</a></li>
						<li><a href="#">р</a></li>
						<li><a href="#">с</a></li>
						<li><a href="#">т</a></li>
						<li><a href="#">у</a></li>
						<li><a href="#">ф</a></li>
						<li><a href="#">х</a></li>
						<li><a href="#">ц</a></li>
						<li><a href="#">ч</a></li>
						<li><a href="#">ш</a></li>
						<li><a href="#">щ</a></li>
						<li><a href="#">ъ</a></li>
						<li><a href="#">ы</a></li>
						<li><a href="#">ь</a></li>
						<li><a href="#">э</a></li>
						<li><a href="#">ю</a></li>
						<li><a href="#">я</a></li>
					</ul>
				</div>
				<!-- //러시아문자 -->
				<!-- 단위기호 -->
				<div class="language-contents" data-type="단위기호" style="display:none">
					<h5 class="ir_text">단위기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">′</a></li>
						<li><a href="#">″</a></li>
						<li><a href="#">℃</a></li>
						<li><a href="#">Å</a></li>
						<li><a href="#">￠</a></li>
						<li><a href="#">￡</a></li>
						<li><a href="#">￥</a></li>
						<li><a href="#">¤</a></li>
						<li><a href="#">℉</a></li>
						<li><a href="#">‰</a></li>
						<li><a href="#">＄</a></li>
						<li><a href="#">％</a></li>
						<li><a href="#">Ｆ</a></li>
						<li><a href="#">￦</a></li>
						<li><a href="#">㎕</a></li>
						<li><a href="#">㎖</a></li>
						<li><a href="#">㎗</a></li>
						<li><a href="#">ℓ</a></li>
						<li><a href="#">㎘</a></li>
						<li><a href="#">㏄</a></li>
						<li><a href="#">㎣</a></li>
						<li><a href="#">㎤</a></li>
						<li><a href="#">㎥</a></li>
						<li><a href="#">㎦</a></li>
						<li><a href="#">㎙</a></li>
						<li><a href="#">㎚</a></li>
						<li><a href="#">㎛</a></li>
						<li><a href="#">㎜</a></li>
						<li><a href="#">㎝</a></li>
						<li><a href="#">㎞</a></li>
						<li><a href="#">㎟</a></li>
						<li><a href="#">㎠</a></li>
						<li><a href="#">㎡</a></li>
						<li><a href="#">㎢</a></li>
						<li><a href="#">㏊</a></li>
						<li><a href="#">㎍</a></li>
						<li><a href="#">㎎</a></li>
						<li><a href="#">㎏</a></li>
						<li><a href="#">㏏</a></li>
						<li><a href="#">㎈</a></li>
						<li><a href="#">㎉</a></li>
						<li><a href="#">㏈</a></li>
						<li><a href="#">㎧</a></li>
						<li><a href="#">㎨</a></li>
						<li><a href="#">㎰</a></li>
						<li><a href="#">㎱</a></li>
						<li><a href="#">㎲</a></li>
						<li><a href="#">㎳</a></li>
						<li><a href="#">㎴</a></li>
						<li><a href="#">㎵</a></li>
						<li><a href="#">㎶</a></li>
						<li><a href="#">㎷</a></li>
						<li><a href="#">㎸</a></li>
						<li><a href="#">㎹</a></li>
						<li><a href="#">㎀</a></li>
						<li><a href="#">㎁</a></li>
						<li><a href="#">㎂</a></li>
						<li><a href="#">㎃</a></li>
						<li><a href="#">㎄</a></li>
						<li><a href="#">㎺</a></li>
						<li><a href="#">㎻</a></li>
						<li><a href="#">㎽</a></li>
						<li><a href="#">㎾</a></li>
						<li><a href="#">㎿</a></li>
						<li><a href="#">㎐</a></li>
						<li><a href="#">㎑</a></li>
						<li><a href="#">㎒</a></li>
						<li><a href="#">㎓</a></li>
						<li><a href="#">㎔</a></li>
						<li><a href="#">Ω</a></li>
						<li><a href="#">㏀</a></li>
						<li><a href="#">㏁</a></li>
						<li><a href="#">㎊</a></li>
						<li><a href="#">㎋</a></li>
						<li><a href="#">㎌</a></li>
						<li><a href="#">㏖</a></li>
						<li><a href="#">㏅</a></li>
						<li><a href="#">㎭</a></li>
						<li><a href="#">㎮</a></li>
						<li><a href="#">㎯</a></li>
						<li><a href="#">㏛</a></li>
						<li><a href="#">㎩</a></li>
						<li><a href="#">㎪</a></li>
						<li><a href="#">㎫</a></li>
						<li><a href="#">㎬</a></li>
						<li><a href="#">㏝</a></li>
						<li><a href="#">㏐</a></li>
						<li><a href="#">㏓</a></li>
						<li><a href="#">㏃</a></li>
						<li><a href="#">㏉</a></li>
						<li><a href="#">㏜</a></li>
						<li><a href="#">㏆</a></li>
					</ul>
				</div>
				<!-- //단위기호 -->
				<!-- 일반기호 -->
				<div class="language-contents" data-type="일반기호" style="display:none">
					<h5 class="ir_text">일반기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">§</a></li>
						<li><a href="#">※</a></li>
						<li><a href="#">☆</a></li>
						<li><a href="#">★</a></li>
						<li><a href="#">○</a></li>
						<li><a href="#">●</a></li>
						<li><a href="#">◎</a></li>
						<li><a href="#">◇</a></li>
						<li><a href="#">◆</a></li>
						<li><a href="#">□</a></li>
						<li><a href="#">■</a></li>
						<li><a href="#">△</a></li>
						<li><a href="#">▽</a></li>
						<li><a href="#">→</a></li>
						<li><a href="#">←</a></li>
						<li><a href="#">↑</a></li>
						<li><a href="#">↓</a></li>
						<li><a href="#">↔</a></li>
						<li><a href="#">〓</a></li>
						<li><a href="#">◁</a></li>
						<li><a href="#">◀</a></li>
						<li><a href="#">▷</a></li>
						<li><a href="#">▶</a></li>
						<li><a href="#">♤</a></li>
						<li><a href="#">♠</a></li>
						<li><a href="#">♡</a></li>
						<li><a href="#">♥</a></li>
						<li><a href="#">♧</a></li>
						<li><a href="#">♣</a></li>
						<li><a href="#">⊙</a></li>
						<li><a href="#">◈</a></li>
						<li><a href="#">▣</a></li>
						<li><a href="#">◐</a></li>
						<li><a href="#">◑</a></li>
						<li><a href="#">▒</a></li>
						<li><a href="#">▤</a></li>
						<li><a href="#">▥</a></li>
						<li><a href="#">▨</a></li>
						<li><a href="#">▧</a></li>
						<li><a href="#">▦</a></li>
						<li><a href="#">▩</a></li>
						<li><a href="#">♨</a></li>
						<li><a href="#">☏</a></li>
						<li><a href="#">☎</a></li>
						<li><a href="#">☜</a></li>
						<li><a href="#">☞</a></li>
						<li><a href="#">¶</a></li>
						<li><a href="#">†</a></li>
						<li><a href="#">‡</a></li>
						<li><a href="#">↕</a></li>
						<li><a href="#">↗</a></li>
						<li><a href="#">↙</a></li>
						<li><a href="#">↖</a></li>
						<li><a href="#">↘</a></li>
						<li><a href="#">♭</a></li>
						<li><a href="#">♩</a></li>
						<li><a href="#">♪</a></li>
						<li><a href="#">♬</a></li>
						<li><a href="#">㉿</a></li>
						<li><a href="#">㈜</a></li>
						<li><a href="#">№</a></li>
						<li><a href="#">㏇</a></li>
						<li><a href="#">™</a></li>
						<li><a href="#">㏂</a></li>
						<li><a href="#">㏘</a></li>
						<li><a href="#">℡</a></li>
						<li><a href="#">＃</a></li>
						<li><a href="#">＆</a></li>
						<li><a href="#">＊</a></li>
						<li><a href="#">＠</a></li>
						<li><a href="#">ª</a></li>
						<li><a href="#">º</a></li>
					</ul>
				</div>
				<!-- //일반기호 -->
				<!-- 로마자 -->
				<div class="language-contents" data-type="로마자" style="display:none">
					<h5 class="ir_text">로마자</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">ⅰ</a></li>
						<li><a href="#">ⅱ</a></li>
						<li><a href="#">ⅲ</a></li>
						<li><a href="#">ⅳ</a></li>
						<li><a href="#">ⅴ</a></li>
						<li><a href="#">ⅵ</a></li>
						<li><a href="#">ⅶ</a></li>
						<li><a href="#">ⅷ</a></li>
						<li><a href="#">ⅸ</a></li>
						<li><a href="#">ⅹ</a></li>
						<li><a href="#">Ⅰ</a></li>
						<li><a href="#">Ⅱ</a></li>
						<li><a href="#">Ⅲ</a></li>
						<li><a href="#">Ⅳ</a></li>
						<li><a href="#">Ⅴ</a></li>
						<li><a href="#">Ⅵ</a></li>
						<li><a href="#">Ⅶ</a></li>
						<li><a href="#">Ⅷ</a></li>
						<li><a href="#">Ⅸ</a></li>
						<li><a href="#">Ⅹ</a></li>
					</ul>
				</div>
				<!-- //로마자 -->
				<!-- 첨자기호 -->
				<div class="language-contents" data-type="첨자기호" style="display:none">
					<h5 class="ir_text">첨자기호</h5>
					<div class="ir_text">첫 번째 줄</div>
					<ul>
						<li><a href="#">½</a></li>
						<li><a href="#">⅓</a></li>
						<li><a href="#">⅔</a></li>
						<li><a href="#">¼</a></li>
						<li><a href="#">¾</a></li>
						<li><a href="#">⅛</a></li>
						<li><a href="#">⅜</a></li>
						<li><a href="#">⅝</a></li>
						<li><a href="#">⅞</a></li>
						<li><a href="#">¹</a></li>
						<li><a href="#">²</a></li>
						<li><a href="#">³</a></li>
						<li><a href="#">⁴</a></li>
						<li><a href="#">ⁿ</a></li>
						<li><a href="#">₁</a></li>
						<li><a href="#">₂</a></li>
						<li><a href="#">₃</a></li>
						<li><a href="#">₄</a></li>
					</ul>
				</div>
				<!-- //첨자기호 -->
			</div>
		</fieldset>
		<button type="button" class="worldword-close">
			<span class="sp_layout">Close multilingual keyboard</span>
		</button>
	</div>
	<!-- //다국어입력기 -->


    <div class="footer" id="footer">
        <div class="footer_page_wrap">
            <div class="inner">
                <ul class="footer_page_list">
                    <li class="footer_page_item">
                        <strong class="title">Services</strong>
                        <ul class="inner_list">
                            <li class="inner_item">
                                <a href="#">Collection Development Policy</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Legal Deposit and Acquisition</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Information Organization</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Bibliography Publishing</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Cooperative Activities</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Digitization</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Librarian Training</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">International Standard Identifiers (ISBN/ISSN/ISNI)</a>
                            </li>
                        </ul>
                    </li>
                    <li class="footer_page_item">
                        <strong class="title">Using the Library</strong>
                        <ul class="inner_list">
                            <li class="inner_item">
                                <a href="#">Opening Hours</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">How to Use the Library</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Resource Rooms</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Library Tours</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">Visiting the Library</a>
                            </li>
                        </ul>
                    </li>
                    <li class="footer_page_item">
                        <strong class="title">Related Websites</strong>
                        <ul class="inner_list">
                            <li class="inner_item">
                                <a href="#">National Library for Children and Young Audults</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">National Library of Korea, Sejong</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">National Library for the Disabled</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">IFLA PAC Korea Center</a>
                            </li>
                            <li class="inner_item">
                                <a href="#">International Network for Korean Studies Librarians</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
		<!-- 푸터 상단 -->
		<div class="footer__inner-top">
			<div class="inner">
				<h2 class="ir_text">Bottom menu</h2>
				<!-- 안내 영역 -->
				<ul class="footer-util__list">
					<li class="footer-util__item contact">
                        <strong>Contact Us </strong>
                        <span>
							TEL <a href="tel:02-590-0500"> +82-2-590-0500</a>
							FAX <a href="tel:02-590-0530"> +82-2-590-0530</a>
						</span>
					</li>
					<li class="footer-util__item">
						<a href="/EN/contents/EN70100000000.do" class="point">Privacy Policy</a>
					</li>
					<li class="footer-util__item sitemap">
						<a href="/EN/contents/EN60400000000.do">Sitemap</a>
					</li>
					<li class="footer-util__item">
						<a href="/EN/contents/EN20500000000.do">Visiting the Library</a>
					</li>
				</ul>
				<!-- 안내 영역 -->
				<!-- SNS 영역 -->
				<ul class="footer-sns__list">
					<li class="footer-sns__item">
						<a href="https://www.instagram.com/nationallibraryofkorea/" class="instagram" target="_blank" title="Open in new window">
							<span class="ico">Instagram</span>
						</a>
					</li>
					<li class="footer-sns__item">
						<a href="http://blog.naver.com/dibrary1004" class="blog" target="_blank" title="Open in new window">
							<span class="ico">Blog</span>
						</a>
					</li>
					<li class="footer-sns__item">
						<a href="https://ko-kr.facebook.com/national.library.of.korea" class="facebook" target="_blank" title="Open in new window">
							<span class="ico">Facebook</span>
						</a>
					</li>
					<li class="footer-sns__item">
						<a href="https://twitter.com/library1004" class="twitter" target="_blank" title="Open in new window">
							<span class="ico">Twitter</span>
						</a>
					</li>
					<li class="footer-sns__item">
						<a href="https://www.youtube.com/channel/UCKjWKI1yRlzWfgnF98HZ_TA" class="youtube" target="_blank" title="Open in new window">
							<span class="ico">Youtube</span>
						</a>
					</li>
				</ul>
				<!-- //SNS 영역 -->
			</div>
		</div>
		<!-- //푸터 상단 -->
        <!-- 푸터 하단 -->
        <div class="footer__inner-bottom">
			<div class="inner">
				<!-- 국립중앙도서관 정보 -->
				<div class="info-wrap">

					<!-- 푸터 로고 -->
					<em class="footer-logo" title="National Library of Korea Logo">
						<span class="sp_logo">National Library of Korea</span>
					</em>
					<!-- //푸터 로고 -->

					<!-- 주소, Copyright -->
					<ul class="contact__list">
						<li class="contact__item">201 BANPODAERO(BANPO-DONG), SEOCHO-GU, SEOUL, REPUBLIC OF KOREA</li>
						<li class="contact__item">TEL <a href="tel:02-590-0500">+82-2-590-0500</a> FAX +82-2-590-0530</li>
						<li class="contact__item copyright">Copyright&copy; National Library of Korea. All rights reserved.</li>
					</ul>
					<!-- //주소, Copyright -->

					<!-- 외부 로고 -->
					<ul class="certificate__list">
					<!--
						<li class="certificate__item item--isms">
							<a target="_blank" href="http://nl.go.kr/nl/_res/img/img/ISMS_EN.png" title="정보보호관리체계 인증서 보기(새창)">
								<img src="/resource/templete/en/common/img/common/isms.png" alt="정보보호관리체계 인증서 한국인터넷진흥원장(2018.7.27.~2021.7.26.)">
							</a>
						</li>
						-->
						</ul>
					<!-- //외부 로고 -->

				</div>
				<!-- //국립중앙도서관 정보 -->
			</div>

		</div>
		<!-- //푸터 하단 -->
	</div>
	<!-- //footer -->

	<!-- 위로가기 -->
	<div class="fixed_btn_wrap">
		<a href="#container">Top</a>
	</div>

	<!-- 팝업 : 스크랩 등록 -->
	<div class="layer_popup_wrap layer_popup_wrap3" data-layer="layer_old_document" style="display:none" id="layerScrap">
	</div>
	<!-- //팝업 : 스크랩 등록 -->

	<!-- //위로가기 -->
	<!-- 웹로그 솔루션 -->
	<script type="text/javascript" src="https://ds.nl.go.kr/js/nlogger.js" ></script>

	<script type="text/javascript"> nLogger.configure({
		nth_service_id: "mainEnglish",
		nth_logging_url_base_http: "https://ds.nl.go.kr/nlog",
		nth_logging_url_base_https: "https://ds.nl.go.kr/nlog"
	});
	</script>

	<script type="text/javascript"> nLogger.log();</script>
	<!-- //웹로그 솔루션 -->
<!--  한국문화정보원 웹로그 -->

<script>
	/* 스크랩 등록 폼 호출 */
	function fn_scrap(gbn){
	 	var data = null;
		var frm = document.nlScrapForm;
		frm.scrapGbn.value = gbn;

		data = new FormData(frm);

		$.ajax({
			type : "post"
			, url : "/EN/main/scrapCateList.ajax"
			, data : data
		    , processData: false  // Important!
		    , contentType: false
	        , cache: false
			, dataType : "html"
			, success : function(data){
				$("#layerScrap").show();
				$("#layerScrap").html(data);
			}
			, error : function(jqXHR,textStatus,e){
	 			alert("일정 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
				return;
			}
		});
	}

	/* 스크랩 등록  */
	function fn_scrapInst(){
	//	 	var data = $('#nlScrapForm').serialize();
	 	var url = "/EN/main/scrapCrud.ajax";

	 	document.nlScrapForm.scrapCateKey.value = $("#selCateKey").val();
	 	document.nlScrapForm.scrapDesc.value = $("#scrapContents").val();

		$.ajax({
			url : url,
			data : $('#nlScrapForm').serialize(),
			type: 'POST',
			dataType : "json",
			async : false,
			success: function(data) {
					alert(data.result);
					$("#layerScrap").hide();
			},
			error : function(xhr) {
				alert(xhr.status);
			}
		});
	}

	/* 스크랩 분류 호출 */
	function fn_scrapCate(gbn){
	 	var data = null;
		var frm = document.nlScrapForm;
		frm.scrapGbn.value = gbn;

		data = new FormData(frm);

		$.ajax({
			type : "post"
			, url : "/EN/main/scrapCateList.ajax"
			, data : data
		    , processData: false  // Important!
		    , contentType: false
	        , cache: false
			, dataType : "html"
			, success : function(data){
				$("#sublayPopup").show();
				$("#sublayPopup").html(data);
			}
			, error : function(jqXHR,textStatus,e){
	 			alert("일정 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
				return;
			}
		});
	}

	$(document).ready(function(){
		
		ItgJs.NowPageById("EN70000000000>EN70100000000","GNB");	
		ItgJs.NowPageById2("EN70000000000>EN70100000000","SNB");
		ItgJs.NowPageById2("EN70000000000>EN70100000000","TAB");
		ItgJs.NowPageById2("EN70000000000>EN70100000000","MTAB");
		

		$('.gray-gnb-depth1__item').first().addClass("active");
	});

	window.onload = function(){
		$(".depth4-menu__list .is_selected").find('a').attr('title','Current Page');
	}

	/**
	 * <a href="#">링크</a>
	 * 위와 같은 형태로 된 링크를 '#'동작이 먹지 않게 막는다.
	 */
	$(document).delegate("a[href='#']","click",function(event){
		event.preventDefault();
	});
	$(document).delegate("a[href='#none']","click",function(event){
		event.preventDefault();
	});

	/*
	$(function(){
		$("#qrImg").prop("src", "/comm/qr.do?url=/EN/contents/EN70100000000.do");
	})
	*/

	$(document).ready(function(){

		/* 통합검색 자동완성 */
		$(".schKwd").keyup(function() {
			var akc_enable = akc_getCookie(); //자동완성 1:켜기, 0:끄기

			//if(!$(".autocomplete_layer").hasClass("is_collapsed")){ //자동완성 끄기 해제시
			if(akc_enable == 1){
				var term = $(this).val();
				if(!ItgJs.fn_isEmpty(term)){
					$.ajax({
							  url : "/EN/main/autoCompleteList.ajax"
							, data: {'term':term}
							, dataType: "json"
							, type : "post"
							, beforeSend : ""
							, success : function(data){
								var suggest = "";
								var sArr = data.suggestArr;
								for(var i in sArr) {
									suggest += "<li class='item'>"+
																"<a href='#none' onclick='autocompleteChoice(\""+sArr[i]+"\");'>"+
																	"<strong>"+term+"</strong>"+sArr[i]+
																"</a>"+
														"</li>";
								}
								$(".result_list").html(suggest);
								$(".result_list").refreshAutoList(suggest);
							}
							, error : function(jqXHR,textStatus,e){
								//alert("결과 조회 중 오류가 발생하였습니다. 관리자에게 문의해 주세요.");
								return;
							}
					});
				}
			//}
			}else{//자동완성 미사용
				$('div.autocomplete_layer').addClass('is_collapsed');
				$(".result_list").refreshAutoList("");
			}

			});

		var loginYn = 'false';
		if(loginYn == 'true'){
			$('#SNB_EN60100000000').hide();
			$('#SNB_EN60200000000').hide();
		}	

		var researchYn = 'false';
		if(researchYn == 'false'){
			$('#SNB_EN60306000000').hide();
			$('#MMAP_EN60306000000').hide();
		}

	});

	/* 자동완성 결과 선택 */
	function autocompleteChoice(suggest){
		$(".autocomplete_layer").removeClass("is_expanded");
		$(".search-btn-wrap .btn_arrow").removeClass("is_fold");
		$(".schKwd").val(suggest);
	}

	//자동완성 쿠키
	function akc_setCookie(bool) {
		var akc_cookie = 0;
		var todayDate;

		if(bool)
		{
			akc_cookie = "1";
			akc_enable = "1";
			$('div.autocomplete_layer').removeClass('is_collapsed');
		} else {
			akc_enable = "0";
			$('div.autocomplete_layer').addClass('is_collapsed');
		}

		todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + 3650);
		document.cookie = "KonanAKC=" + escape(akc_cookie) + "; path=/; expires=" + todayDate.toGMTString();

		$('div.autocomplete_layer').removeClass('is_expanded');
		$(".result_list").refreshAutoList("");
	}

	function akc_getCookie() {
		var bool=false;
		var allcookies;
		var pos;
		var start;
		var end;
		var akc_cookie;

		allcookies = document.cookie;
		pos = allcookies.indexOf("KonanAKC=");
		if ( pos==-1 ) return "1";
		start = pos + 9;
		end = allcookies.indexOf(";",start);

		if (end == -1) end = allcookies.length;

		akc_cookie = allcookies.substring(start,end);
		akc_cookie = unescape(akc_cookie);

		return akc_cookie;
	}

	//[자동완성 목록 갱신]
	$.fn.refreshAutoList = function(str){
		var listStr = str;
		//최초 수행 버튼
		var akc_enable = akc_getCookie(); //자동완성 1:켜기, 0:끄기
		var closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(0);\">Turn off auto complete</button>";

		if(akc_enable == 1){
			closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(0);\">Turn off auto complete</button>";
			$('.search-btn-wrap .btn_arrow .arrow_fold').removeClass('is_collapsed');
		}else{
			closeBtn = "<button type=\"button\" class=\"autocomplete_close\" onclick=\"akc_setCookie(1);\">Turn on auto complete</button>";
			listStr = "<li class='item'><a href=\"javascript:void(0);\">Autocomplete is off.</a></li>";
			$('.search-btn-wrap .btn_arrow .arrow_fold').addClass('is_collapsed');
		}
		$('.autocomplete_layer div.btn_wrap').html(closeBtn);//자동완성 켜기끄기 버튼
		$(this).html(listStr);
	}

</script>
<!-- 본문 영역 -->

	<!--footer-->
	<div id="loadingLayer" style="position: fixed; display: block; width: 100%; background-color: rgba(0,0,0,0.6); z-index: 9999; top: 0; left: 0;"></div><!--//footer-->
</body>
</html>
