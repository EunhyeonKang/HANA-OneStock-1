<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="../../resources/style/common.css">
    <link rel="stylesheet" href="../../resources/style/mypage.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
</head>
<body>
<header>
    <nav>
        <a href="index_login">
            <img src="../../resources/img/logo.png" height="40">
        </a>
        <div>
            <ul>
                <li class="nav-list">
                    <a class="nav-menu">서비스소개</a>
                <li class="nav-list">
                    <a class="nav-menu">마이페이지</a>
                <%-- provider 데이터가 "kakao"일 경우 카카오 로그인 버튼을 표시 --%>
                <c:if test="${provider eq 'kakao'}">
                <li class="nav-list">
                    <a href="/oauth/logout" class="nav-menu">로그아웃</a>
                </li>
                </c:if>

                <%-- provider 데이터가 "kakao"가 아닐 경우 일반 로그아웃 버튼을 표시 --%>
                <c:if test="${empty provider}">
                    <li class="nav-list">
                        <a href="/logoutMember" class="nav-menu">로그아웃</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>
<div class="content">
    <div class="member_info_div">
        <div class="chart_div">
            <div class="chart">
                <h3>박경덕님의 현재 보유 현금입니다.</h3>
                <div class="money">
                    <div style="display: flex; align-items: center;">
                        <img src="../../resources/img/wallet.png" width="50"
                             style="vertical-align: middle; margin-right: 30px">
                        <span style="vertical-align: middle; font-weight: 900; font-size: 40px;">289,000</span>
                    </div>
                    <div style="display: flex; align-items: center; margin: 30px 0px 30px 0px">
                        <input type="button" class="small-btn" value="충전하기">
                        <input type="button" class="small-btn" value="충전내역">
                    </div>
                </div>
                <h3>박경덕님의 현재 수익률입니다.</h3>
                <div style="font-weight: 900; font-size: 32px;">
                    <p>목표수익률: 5.0%</p>
                    <p>당일수익률: 4.7%</p>
                </div>
                <div style="display: flex; align-items: center; margin: 10px 0px 30px 0px">
                    <input type="button" class="small-btn" value="변경하기">
                </div>
            </div>
            <div class="chart">
                <div class="piechart">
                    <h3 id="chartTitle"></h3>
                    <script>
                        fetch("../../resources/json/data.json")
                            .then((response) => response.json())
                            .then((data) => {
                                // 결제내역 데이터 가져오기
                                const assetData = data.assetData;

                                // 차트 데이터 설정
                                const chartData = {
                                    datasets: [{
                                        backgroundColor: ['rgba(255, 99, 132, 0.5)',
                                            'rgba(54, 162, 235, 0.5)',
                                            'rgba(255, 206, 86, 0.5)',
                                            'rgba(75, 192, 192, 0.5)',
                                            'rgba(153, 102, 255, 0.5)'],
                                        data: assetData.map(item => item.amount)
                                    }],
                                    labels: assetData.map(item => `${item.category} : ${item.amount}`)
                                };

                                // 차트 생성
                                var ctx1 = document.getElementById("myPieChart");
                                var myPieChart = new Chart(ctx1, {
                                    type: 'pie',
                                    data: chartData,
                                    options: {
                                        layout: {
                                            padding: {
                                                top: 0, // 위쪽 패딩 조정
                                                bottom: 80, // 아래쪽 패딩 조정
                                                left: 90, // 왼쪽 패딩 조정
                                                right: 90 // 오른쪽 패딩 조정
                                            }
                                        },
                                        cutoutPercentage: 30,
                                        maintainAspectRatio: false,
                                        legend: {
                                            position: 'bottom',
                                            align: 'start',
                                            labels: {
                                                usePointStyle: true,
                                                fontSize: 14,
                                                padding: 20,
                                                fontColor: "black",
                                            },
                                        },
                                        plugins: {
                                            title: {
                                                display: true,
                                                text: "보유 자산",
                                            },
                                        },
                                    }
                                });
                                // 차트 제목 업데이트
                                document.getElementById("chartTitle").textContent = myPieChart.options.plugins.title.text;
                            })
                            .catch((error) => {
                                console.error("JSON 파일을 로드하는 중 오류가 발생했습니다:", error);
                            });
                    </script>
                    <canvas id="myPieChart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="button-container">
    <a href="mypage2" class="button">회원정보 수정</a>
</div>
<footer>
    <hr>
    <p>
        <span>고객센터 1800-0000</span><br/>
        <span>평일 AM 09:00 ~ PM 18:00 </span><br/>
        <span>서울특별시 영등포구 의사당대로 82(여의도동) | 사업자등록번호 116-81-05992 </span><br/>
        <span>Copyright 2023. HANA-OneStock. All Rights Reserved.</span>
    </p>
    <br>
</footer>
</body>
</html>