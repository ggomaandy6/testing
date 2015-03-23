<%@ page contentType="text/html; charset=UTF-8" %>

<spring:eval var="secureChannel" expression="@config.getProperty('system.secure')" />

<% String host = request.getServerName(); %>

<div id="mainwrapper" class="mainwrapper good excellent">
    <header id="mainheader">
        <div class="mainheader-top">
            <div class="wrap">
                <a href="/" class="mainheader-logo"><i></i><span class="a11y">레진코믹스</span></a>
                <div class="mobile mobile-header">레진코믹스</div>
                <nav id="nav-main" class="nav-main">
                    <h2 class="a11y">사이트 네비게이션</h2>
                    <a href="#scheduled" data-subtabname="scheduled">연재</a>
                    <a href="#printed" data-subtabname="printed">출판</a>
                    <a href="#top50" data-subtabname="top50">Top 50</a>
                    <a href="#genre" data-subtabname="genre">장르</a>
                </nav>
            </div>
        </div>
        <div id="mainheader-subtabs" class="mainheader-bottom">
            <div class="wrap">
                <nav class="nav-sub" data-tabname="comic">
                    <h2 class="a11y">만화 서브 네비게이션</h2>
                    <a href="#scheduled" class="nav-sub-tab" data-subtabname="scheduled">연재</a>
                    <a href="#printed" class="nav-sub-tab" data-subtabname="printed">출판</a>
                    <a href="#top50" class="nav-sub-tab" data-subtabname="top50">Top 50</a>
                    <a href="#genre" class="nav-sub-tab" data-subtabname="genre">장르</a>
                </nav>
                <nav class="nav-sub" data-tabname="novel">
                    <h2 class="a11y">소설 서브 네비게이션</h2>
                    <a href="#1" class="nav-sub-tab" data-subtabname="1">1</a>
                    <a href="#2" class="nav-sub-tab" data-subtabname="2">2</a>
                    <a href="#3" class="nav-sub-tab" data-subtabname="3">3</a>
                    <a href="#4" class="nav-sub-tab" data-subtabname="4">4</a>
                </nav>
                <nav class="nav-sub" data-tabname="video">
                    <h2 class="a11y">영상 서브 네비게이션</h2>
                    <a href="#1" class="nav-sub-tab" data-subtabname="1">1</a>
                    <a href="#2" class="nav-sub-tab" data-subtabname="2">2</a>
                    <a href="#3" class="nav-sub-tab" data-subtabname="3">3</a>
                    <a href="#4" class="nav-sub-tab" data-subtabname="4">4</a>
                </nav>
            </div>
        </div>
    </header>

    <div class="search">
        <div class="wrap">
            <a id="btn-search" class="btn-search mobile"><span class="a11y">검색창 열기</span></a>
            <label class="a11y" for="search-main">검색</label>
            <input type="text" name="search-main" id="search-main" placeholder="만화/작가 검색">
        </div>
    </div>

    <nav class="sidenav" data-logged="<c:choose><c:when test="${empty currentUser}">0</c:when><c:otherwise>1</c:otherwise></c:choose>">
        <h2 class="a11y">사이드 네비게이션</h2>
        <div class="wrap">
            <a class="btn-menu"><span class="a11y">메뉴</span></a>

            <c:if test="${empty currentUser}">
            <div class="sidenav-login" data-logintab="0">
                <div id="auth-tabs" class="sidenav-tabs">
                    <a href="#" class="sidenav-btn-login btn-login">로그인</a>
                    <a href="#" class="sidenav-btn-join btn-join">회원가입</a>
                </div>
                <div class="sidenav-logintab">
                    <form id="login-form" class="sidenav-form" action="${secureChannel}://<%= host %>/login/submit" method="post" autocomplete="off" novalidate>
                        <input type="hidden" name="redirect" value="">
                        <button type="button" id="login-fb" class="sidenav-btn-fb">페이스북으로 로그인</button>
                        <hr>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input type="email" name="username" placeholder="이메일">
                        </div>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input type="password" name="password" placeholder="비밀번호">
                        </div>
                        <button type="submit" class="sidenav-btn-email">이메일로 로그인</button>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input id="keep-login" name="remember_me" type="checkbox">
                            <label for="keep-login">로그인 상태 유지</label>
                            <a href="/login/forgot_password" class="sidenav-btn-findpassword">비밀번호 찾기</a>
                        </div>
                    </form>
                    <div class="sidenav-info">
                        아직 레진코믹스 회원이 아니세요? <a href="/signup" class="btn-join">회원가입</a>
                        <br>페이스북으로 로그인시 자동으로 가입됩니다.
                        <br>고객지원 : help@lezhin.com
                    </div>
                </div>
                <div class="sidenav-jointab">
                    <form id="signup-form" class="sidenav-form" action="${secureChannel}://<%= request.getServerName() %>/signup" method="post" autocomplete="off" novalidate>
                        <input type="hidden" name="redirect" value="">
                        <button type="button" id="signup-fb" class="sidenav-btn-fb">페이스북으로 회원가입</button>
                        <hr>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input type="email" name="username" placeholder="사용중인 이메일 주소를 입력해주세요">
                        </div>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input type="password" name="password" placeholder="비밀번호 (6자리 이상)">
                        </div>
                        <button type="submit" class="sidenav-btn-email">이메일로 회원가입</button>
                        <div class="login-input">
                            <div class="login-msg"></div>
                            <input id="join-agree" type="checkbox">
                            <label for="join-agree"><a class="link" href="/html/terms.html" target="_blank">서비스 약관</a> 및 <a class="link" href="/html/privacy.html" target="_blank">개인정보 취급방침</a>에 동의합니다.</label>
                        </div>
                    </form>
                    <div class="sidenav-info">
                        이미 레진코믹스 회원이시면  <a href="/login" class="btn-login">로그인</a> 해주세요!
                        <br>고객지원 : help@lezhin.com
                    </div>
                </div>
            </div>
            </c:if>

            <div id="sidenav-exit" class="sidenav-wrap">
                <div class="sidenav-top">
                <c:if test="${not empty currentUser}">
                    <div class="sidenav-user">
                        <span id="sidenav-email">${currentUser.username}</span> 님
                    </div>
                    <div class="sidenav-coinwrap">
                        <div class="sidenav-platform">
                            웹/안드로이드
                            <br>iOS
                        </div>
                        <div class="sidenav-coin">
                            <span id="sidenav-webcoin"><fmt:formatNumber value="${currentUser.coinWeb + currentUser.coinAndroid}" type="number"/></span>코인<br>
                            <span id="sidenav-ioscoin"><fmt:formatNumber value="${currentUser.coinIOS}" type="number"/></span>코인
                        </div>
                    </div>
                </c:if>
                </div>
                <div class="sidenav-bottom">
                    <div class="sidenav-icon">
                        <a href="/v3/comic" class="ico-comic" data-tabname="comic">만화</a>
                        <a href="/v3/novel" class="ico-novel" data-tabname="comic">소설</a>
                        <a href="/v3/video" class="ico-video" data-tabname="comic">영상</a>
                        <a href="/v3/ranking" class="ico-ranking" data-tabname="comic">랭킹</a>
                        <c:if test="${not empty currentUser}">
                        <a href="/library" class="ico-library logged">내 서재</a>
                        </c:if>
                    </div>
                    <c:if test="${not empty currentUser}">
                    <a href="/library" class="ico-library logged">내 서재</a>
                    <a href="/account" class="ico-info logged">내 정보</a>
                    <a href="/payment" class="ico-coin logged">코인 충전</a>
                    <a href="/invite" class="ico-friend logged">친구 초대</a>
                    <a href="/mylist" class="ico-mylist logged">마이 리스트</a>
                    </c:if>
                    <c:if test="${empty currentUser}">
                    <a href="/login" class="ico-login unlogged">로그인</a>
                    <a href="/signup" class="ico-signup unlogged">회원가입</a>
                    <a href="http://desk.lezhin.com/faqs_kr_mw">고객 지원</a>
                    </c:if>
                    <c:if test="${not empty currentUser}">
                    <a href="http://desk.lezhin.com/faqs_kr_mw?id=${currentUser.userId}">고객 지원</a>
                    <a href="/logout" class="ico-logout logged">로그아웃</a>
                    </c:if>
                </div>
            </div>
        </div>
    </nav>
