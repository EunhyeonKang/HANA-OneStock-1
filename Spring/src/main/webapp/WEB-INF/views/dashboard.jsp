<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="../../resources/style/common.css">
    <link rel="stylesheet" href="../../resources/style/dashboard.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://unpkg.com/lightweight-charts/dist/lightweight-charts.standalone.production.js"></script>

</head>
<body>
<header>
    <nav>
        <a href="/">
            <img src="../../resources/img/logo.png" height="40">
        </a>
        <div>
            <ul>
                <li class="nav-list">
                    <a class="nav-menu">서비스소개</a>
                <li class="nav-list">
                    <a class="nav-menu">마이페이지</a>
                <li class="nav-list">
                    <a class="nav-menu">로그아웃</a>
            </ul>
        </div>
    </nav>
</header>
<div class="main">
    <div class="search-menu">
        <div class="a">
            <input class="search-box" type="text" placeholder="🔍 SEARCH">
            <button class="search-button" onclick="handleSearch()">검색</button>
            <div class="search-result"></div>
        </div>
    </div>
</div>
<div class="content">
    <div class="container">
        <!-- 왼쪽 서브 메뉴 -->
        <div class="left_sub_menu">
            <div class="sub_menu">
                <h2>추천종목</h2>
                <ul class="stock_name">
                    <li>삼성전자<i class="arrow fas fa-angle-right"></i></li>
                    <ul class="small_menu">
                        <li>종목번호 005930</li>
                        <li>69,500 <span class="blue_text"> -0.57%</span></li>
                    </ul>
                </ul>
                <ul class="stock_name">
                    <li>카카오<i class="arrow fas fa-angle-right"></i></li>
                    <ul class="small_menu">
                        <li>종목번호 035720</li>
                        <li>49,850 <span> 0.00%</span></li>
                    </ul>
                </ul>
                <h2>종목추가</h2>
                <ul class="stock_name">
                    <li>삼성전자<i class="arrow fas fa-angle-right"></i></li>
                    <ul class="small_menu">
                        <li>종목번호 005930</li>
                        <li>69,500 <span class="blue_text"> -0.57%</span></li>
                    </ul>
                </ul>
                <ul class="stock_name">
                    <li>카카오<i class="arrow fas fa-angle-right"></i></li>
                    <ul class="small_menu">
                        <li>종목번호 035720</li>
                        <li>49,850 <span> 0.00%</span></li>
                    </ul>
                </ul>
                <ul class="stock_name">
                    <li>카카오<i class="arrow fas fa-angle-right"></i></li>
                    <ul class="small_menu">
                        <li>종목번호 035720</li>
                        <li>49,850 <span> 0.00%</span></li>
                    </ul>
                </ul>
            </div>
        </div>
        <div class="chart_div">
            <div class="chart">
                <script>
                    var chart = LightweightCharts.createChart(document.querySelector('.chart'), {
                        width: 750,
                        height: 350,
                        rightPriceScale: {
                            visible: true,
                            borderColor: 'rgba(197, 203, 206, 1)',
                        },
                        leftPriceScale: {
                            visible: true,
                            borderColor: 'rgba(197, 203, 206, 1)',
                        },
                        layout: {
                            backgroundColor: '#ffffff',
                            textColor: 'rgba(33, 56, 77, 1)',
                        },
                        grid: {
                            horzLines: {
                                color: '#F0F3FA',
                            },
                            vertLines: {
                                color: '#F0F3FA',
                            },
                        },
                        crosshair: {
                            mode: LightweightCharts.CrosshairMode.Normal,
                        },
                        timeScale: {
                            borderColor: 'rgba(197, 203, 206, 1)',
                        },
                        handleScroll: {
                            vertTouchDrag: false,
                        },
                    });


                    chart.addLineSeries({
                        color: 'rgba(4, 111, 232, 1)',
                        lineWidth: 2,
                    }).setData([{time: {year: 2018, month: 9, day: 22}, value: 25.531816900940186},
                        {time: {year: 2018, month: 10, day: 4}, value: 30.0951233353539},
                        {time: {year: 2018, month: 10, day: 5}, value: 30.30985059775389},
                        {time: {year: 2018, month: 10, day: 6}, value: 30.71612555943148},
                        {time: {year: 2018, month: 10, day: 7}, value: 28.222424591003268},
                        {time: {year: 2018, month: 10, day: 8}, value: 31.01149570947896},
                        {time: {year: 2018, month: 10, day: 9}, value: 30.390225881550307},
                        {time: {year: 2018, month: 10, day: 10}, value: 29.451733557312163},
                        {time: {year: 2018, month: 10, day: 11}, value: 34.14376900459634},
                        {time: {year: 2018, month: 10, day: 12}, value: 30.223333215683407},
                        {time: {year: 2018, month: 10, day: 13}, value: 35.1548736041708},
                        {time: {year: 2018, month: 10, day: 14}, value: 37.795223779011096},
                        {time: {year: 2018, month: 10, day: 15}, value: 38.95966228546306},
                        {time: {year: 2018, month: 10, day: 16}, value: 35.59132526195566},
                        {time: {year: 2018, month: 10, day: 17}, value: 38.42249768195307},
                        {time: {year: 2018, month: 10, day: 18}, value: 40.82520015585623},
                        {time: {year: 2018, month: 10, day: 19}, value: 37.401446370157814},
                        {time: {year: 2018, month: 10, day: 20}, value: 44.14728329801845},
                        {time: {year: 2018, month: 10, day: 21}, value: 43.908512951087765},
                        {time: {year: 2018, month: 10, day: 22}, value: 47.139711966410914},
                        {time: {year: 2018, month: 10, day: 23}, value: 43.78495537329606},
                        {time: {year: 2018, month: 10, day: 24}, value: 46.37910782721347},
                        {time: {year: 2018, month: 10, day: 25}, value: 48.280192310089234},
                        {time: {year: 2018, month: 10, day: 26}, value: 49.63767420501933},
                        {time: {year: 2018, month: 10, day: 27}, value: 43.05752682224708},
                        {time: {year: 2018, month: 10, day: 28}, value: 48.32708061157758},
                        {time: {year: 2018, month: 10, day: 29}, value: 53.39600337663517},
                        {time: {year: 2018, month: 10, day: 30}, value: 46.711006266435355},
                        {time: {year: 2018, month: 10, day: 31}, value: 54.13809826985657},
                        {time: {year: 2018, month: 11, day: 1}, value: 55.79021790616995},
                        {time: {year: 2018, month: 11, day: 2}, value: 49.2873885580548},
                        {time: {year: 2018, month: 11, day: 3}, value: 56.97009522871737},
                        {time: {year: 2018, month: 11, day: 4}, value: 50.823930530973975},
                        {time: {year: 2018, month: 11, day: 5}, value: 54.960060077375076},
                        {time: {year: 2018, month: 11, day: 6}, value: 62.0222568413422},
                        {time: {year: 2018, month: 11, day: 7}, value: 58.20081640960216},
                        {time: {year: 2018, month: 11, day: 8}, value: 65.13004590769961},
                        {time: {year: 2018, month: 11, day: 9}, value: 57.78891076252559},
                        {time: {year: 2018, month: 11, day: 10}, value: 58.792896124952186},
                        {time: {year: 2018, month: 11, day: 11}, value: 61.87890147945707},
                        {time: {year: 2018, month: 11, day: 12}, value: 60.93156560716248},
                        {time: {year: 2018, month: 11, day: 13}, value: 57.85928164082374},
                        {time: {year: 2018, month: 11, day: 14}, value: 70.95139577968187},
                        {time: {year: 2018, month: 11, day: 15}, value: 71.59735270974251},
                        {time: {year: 2018, month: 11, day: 16}, value: 68.6730845432055},
                        {time: {year: 2018, month: 11, day: 17}, value: 70.1298800651962},
                        {time: {year: 2018, month: 11, day: 18}, value: 68.82963709012753},
                        {time: {year: 2018, month: 11, day: 19}, value: 70.66316240517193},
                        {time: {year: 2018, month: 11, day: 20}, value: 67.83320577283186},
                        {time: {year: 2018, month: 11, day: 21}, value: 75.08486799785067},
                        {time: {year: 2018, month: 11, day: 22}, value: 72.87979342888752},
                        {time: {year: 2018, month: 11, day: 23}, value: 78.84973566116827},
                        {time: {year: 2018, month: 11, day: 24}, value: 77.59573370643601},
                        {time: {year: 2018, month: 11, day: 25}, value: 74.74726921909757},
                        {time: {year: 2018, month: 11, day: 26}, value: 69.68128245039887},
                        {time: {year: 2018, month: 11, day: 27}, value: 84.2489916330028},
                        {time: {year: 2018, month: 11, day: 28}, value: 85.49947753269504},
                        {time: {year: 2018, month: 11, day: 29}, value: 79.8486264148003},
                        {time: {year: 2018, month: 11, day: 30}, value: 87.69287202402485},
                        {time: {year: 2018, month: 12, day: 1}, value: 78.01690218289475},
                        {time: {year: 2018, month: 12, day: 2}, value: 90.03789034980372},
                        {time: {year: 2018, month: 12, day: 3}, value: 80.8840602849401},
                        {time: {year: 2018, month: 12, day: 4}, value: 76.88131503723805},
                        {time: {year: 2018, month: 12, day: 5}, value: 80.31060219295262},
                        {time: {year: 2018, month: 12, day: 6}, value: 93.94619117220051},
                        {time: {year: 2018, month: 12, day: 7}, value: 94.87133202008548},
                        {time: {year: 2018, month: 12, day: 8}, value: 82.60328626838404},
                        {time: {year: 2018, month: 12, day: 9}, value: 97.16768398118845},
                        {time: {year: 2018, month: 12, day: 10}, value: 86.28219316727935},
                        {time: {year: 2018, month: 12, day: 11}, value: 88.98768390749808},
                        {time: {year: 2018, month: 12, day: 12}, value: 86.9799632094888},
                        {time: {year: 2018, month: 12, day: 13}, value: 94.84612878449812},
                        {time: {year: 2018, month: 12, day: 14}, value: 102.1160216124386},
                        {time: {year: 2018, month: 12, day: 15}, value: 87.0646295567293},
                        {time: {year: 2018, month: 12, day: 16}, value: 88.48802912330535},
                        {time: {year: 2018, month: 12, day: 17}, value: 89.68490260440238},
                        {time: {year: 2018, month: 12, day: 18}, value: 86.66224375818467},
                        {time: {year: 2018, month: 12, day: 19}, value: 88.05916917094234},
                        {time: {year: 2018, month: 12, day: 20}, value: 78.96513176162487},
                        {time: {year: 2018, month: 12, day: 21}, value: 90.54239307317953},
                        {time: {year: 2018, month: 12, day: 22}, value: 92.40550159209458},
                        {time: {year: 2018, month: 12, day: 23}, value: 82.47365747958841},
                        {time: {year: 2018, month: 12, day: 24}, value: 91.55327647717618},
                        {time: {year: 2018, month: 12, day: 25}, value: 89.34790162747024},
                        {time: {year: 2018, month: 12, day: 26}, value: 85.68927849920716},
                        {time: {year: 2018, month: 12, day: 27}, value: 85.86795553966918},
                        {time: {year: 2018, month: 12, day: 28}, value: 90.55358282944198},
                        {time: {year: 2018, month: 12, day: 29}, value: 91.28939932554621},
                        {time: {year: 2018, month: 12, day: 30}, value: 100.90495261248472},
                        {time: {year: 2018, month: 12, day: 31}, value: 98.99348823473713}]);


                    const candlestickSeries = chart.addCandlestickSeries({priceScaleId: 'left'});
                    candlestickSeries.setData([{
                        close: 108.9974612905403,
                        high: 121.20998259466148,
                        low: 96.65376292551082,
                        open: 104.5614412226746,
                        time: {year: 2018, month: 9, day: 22}
                    },
                        {
                            close: 110.46815600023501,
                            high: 111.3650273696516,
                            low: 82.65543461471314,
                            open: 110.16538466099634,
                            time: {year: 2018, month: 9, day: 23}
                        },
                        {
                            close: 90.62131977740425,
                            high: 109.19838270252615,
                            low: 82.30106956144076,
                            open: 105.03104735287424,
                            time: {year: 2018, month: 9, day: 24}
                        },
                        {
                            close: 96.80120024431532,
                            high: 101.92074283374939,
                            low: 89.25819769856513,
                            open: 89.25819769856513,
                            time: {year: 2018, month: 9, day: 25}
                        },
                        {
                            close: 94.87113928076117,
                            high: 104.12503365679314,
                            low: 85.42405005240111,
                            open: 104.12503365679314,
                            time: {year: 2018, month: 9, day: 26}
                        },
                        {
                            close: 100.76494087674855,
                            high: 102.60508417239113,
                            low: 80.76268547064865,
                            open: 92.93299948659636,
                            time: {year: 2018, month: 9, day: 27}
                        },
                        {
                            close: 101.45855928883597,
                            high: 110.26727325817173,
                            low: 91.10348900896837,
                            open: 93.4362185148034,
                            time: {year: 2018, month: 9, day: 28}
                        },
                        {
                            close: 91.68871815146144,
                            high: 103.73263644407702,
                            low: 73.5329263610334,
                            open: 92.96467883926464,
                            time: {year: 2018, month: 9, day: 29}
                        },
                        {
                            close: 89.39633140354033,
                            high: 101.06569518834237,
                            low: 81.71149885084162,
                            open: 83.08248758612376,
                            time: {year: 2018, month: 9, day: 30}
                        },
                        {
                            close: 93.09498513675378,
                            high: 93.09498513675378,
                            low: 76.81138276012628,
                            open: 91.97280452613565,
                            time: {year: 2018, month: 10, day: 1}
                        },
                        {
                            close: 89.26733004009083,
                            high: 89.26733004009083,
                            low: 76.27851645958225,
                            open: 85.83860311023625,
                            time: {year: 2018, month: 10, day: 2}
                        },
                        {
                            close: 89.66035763006947,
                            high: 89.66035763006947,
                            low: 67.63677527399729,
                            open: 77.79584976144585,
                            time: {year: 2018, month: 10, day: 3}
                        },
                        {
                            close: 89.59687813884807,
                            high: 97.05916949817754,
                            low: 72.9823390058379,
                            open: 77.37388423995716,
                            time: {year: 2018, month: 10, day: 4}
                        },
                        {
                            close: 83.6425403120788,
                            high: 91.72593377862522,
                            low: 65.27208271740422,
                            open: 85.92711686401718,
                            time: {year: 2018, month: 10, day: 5}
                        },
                        {
                            close: 82.99053929200655,
                            high: 93.4482645370556,
                            low: 65.98920655616067,
                            open: 71.8940788814462,
                            time: {year: 2018, month: 10, day: 6}
                        },
                        {
                            close: 73.09595957510754,
                            high: 86.65935598412881,
                            low: 62.710852488609326,
                            open: 80.78945254092527,
                            time: {year: 2018, month: 10, day: 7}
                        },
                        {
                            close: 80.12127692112905,
                            high: 87.49034842093855,
                            low: 60.09987438133361,
                            open: 70.2408873110499,
                            time: {year: 2018, month: 10, day: 8}
                        },
                        {
                            close: 77.60439116240829,
                            high: 83.20908153481327,
                            low: 68.56836128158209,
                            open: 75.83440719565763,
                            time: {year: 2018, month: 10, day: 9}
                        },
                        {
                            close: 73.8952889203428,
                            high: 81.89987377779327,
                            low: 57.8891283348631,
                            open: 66.51904017615065,
                            time: {year: 2018, month: 10, day: 10}
                        },
                        {
                            close: 75.08452506029613,
                            high: 75.08452506029613,
                            low: 59.208194031968155,
                            open: 72.14475369395771,
                            time: {year: 2018, month: 10, day: 11}
                        },
                        {
                            close: 73.08898607472305,
                            high: 73.08898607472305,
                            low: 63.05632280826725,
                            open: 66.93050765469924,
                            time: {year: 2018, month: 10, day: 12}
                        },
                        {
                            close: 58.993371469509704,
                            high: 73.08872095153116,
                            low: 53.52204433018574,
                            open: 66.12840939191403,
                            time: {year: 2018, month: 10, day: 13}
                        },
                        {
                            close: 57.150755012485,
                            high: 74.57414896810235,
                            low: 52.6552427480398,
                            open: 68.50876667562338,
                            time: {year: 2018, month: 10, day: 14}
                        },
                        {
                            close: 58.03147289822832,
                            high: 69.62445357159157,
                            low: 53.8260018823565,
                            open: 61.62298899368165,
                            time: {year: 2018, month: 10, day: 15}
                        },
                        {
                            close: 60.6852855399041,
                            high: 69.02095441024431,
                            low: 54.00939224622043,
                            open: 64.81901552322648,
                            time: {year: 2018, month: 10, day: 16}
                        },
                        {
                            close: 57.508820449565285,
                            high: 63.82926565242872,
                            low: 54.07370975509682,
                            open: 54.07370975509682,
                            time: {year: 2018, month: 10, day: 17}
                        },
                        {
                            close: 51.60796818909221,
                            high: 64.88712939579875,
                            low: 51.60796818909221,
                            open: 53.489226476218434,
                            time: {year: 2018, month: 10, day: 18}
                        },
                        {
                            close: 55.139520748382864,
                            high: 59.161320710177925,
                            low: 52.228139922762765,
                            open: 52.228139922762765,
                            time: {year: 2018, month: 10, day: 19}
                        },
                        {
                            close: 47.47868992247237,
                            high: 58.0836625917653,
                            low: 46.43213518526832,
                            open: 47.59258635788406,
                            time: {year: 2018, month: 10, day: 20}
                        },
                        {
                            close: 47.22596723150508,
                            high: 51.55468175560989,
                            low: 45.22654435521185,
                            open: 47.452459556200054,
                            time: {year: 2018, month: 10, day: 21}
                        },
                        {
                            close: 53.39724151191295,
                            high: 58.256006746786035,
                            low: 46.40105667413804,
                            open: 53.41548527476272,
                            time: {year: 2018, month: 10, day: 22}
                        },
                        {
                            close: 45.015877277800854,
                            high: 51.2955426978105,
                            low: 40.26534748806228,
                            open: 43.90158660063875,
                            time: {year: 2018, month: 10, day: 23}
                        },
                        {
                            close: 49.307312373439665,
                            high: 49.93643636637581,
                            low: 43.20705757075934,
                            open: 45.672934511555795,
                            time: {year: 2018, month: 10, day: 24}
                        },
                        {
                            close: 45.15418019295631,
                            high: 48.59676744409583,
                            low: 37.628047445918504,
                            open: 40.33862825788268,
                            time: {year: 2018, month: 10, day: 25}
                        },
                        {
                            close: 43.2972018283068,
                            high: 43.2972018283068,
                            low: 36.335943004352245,
                            open: 42.605991542720965,
                            time: {year: 2018, month: 10, day: 26}
                        },
                        {
                            close: 39.1153643552137,
                            high: 44.311406627923844,
                            low: 35.31457011784855,
                            open: 42.00000202357808,
                            time: {year: 2018, month: 10, day: 27}
                        },
                        {
                            close: 36.06960076896885,
                            high: 42.89041111567749,
                            low: 33.58326637182405,
                            open: 37.40942817102858,
                            time: {year: 2018, month: 10, day: 28}
                        },
                        {
                            close: 35.8981036950969,
                            high: 42.19793419602979,
                            low: 33.62190962880232,
                            open: 36.87246325249825,
                            time: {year: 2018, month: 10, day: 29}
                        },
                        {
                            close: 31.378205119641457,
                            high: 37.33501102832602,
                            low: 31.30137162225214,
                            open: 35.651275660713694,
                            time: {year: 2018, month: 10, day: 30}
                        },
                        {
                            close: 33.574536057730576,
                            high: 37.30152570719593,
                            low: 27.369689193426243,
                            open: 34.330180925654936,
                            time: {year: 2018, month: 10, day: 31}
                        },
                        {
                            close: 28.91735096504839,
                            high: 32.62196350117741,
                            low: 27.072564759401843,
                            open: 29.398552328599372,
                            time: {year: 2018, month: 11, day: 1}
                        },
                        {
                            close: 28.44143154172122,
                            high: 31.042019861166594,
                            low: 23.383320830495375,
                            open: 27.275885037308072,
                            time: {year: 2018, month: 11, day: 2}
                        },
                        {
                            close: 25.92162714418916,
                            high: 30.57604443170622,
                            low: 25.418671641150752,
                            open: 26.775196275924657,
                            time: {year: 2018, month: 11, day: 3}
                        },
                        {
                            close: 26.376994016637433,
                            high: 28.198647836523744,
                            low: 21.492969733673334,
                            open: 26.27980943059139,
                            time: {year: 2018, month: 11, day: 4}
                        },
                        {
                            close: 28.60834088674494,
                            high: 28.60834088674494,
                            low: 21.89002840571941,
                            open: 25.376464895884993,
                            time: {year: 2018, month: 11, day: 5}
                        },
                        {
                            close: 31.103861067101136,
                            high: 31.103861067101136,
                            low: 24.39227668420513,
                            open: 28.994785427089838,
                            time: {year: 2018, month: 11, day: 6}
                        },
                        {
                            close: 28.6308138310307,
                            high: 35.430817482769164,
                            low: 24.069515410358232,
                            open: 27.109407394069084,
                            time: {year: 2018, month: 11, day: 7}
                        },
                        {
                            close: 29.468889521733466,
                            high: 37.54082586961352,
                            low: 27.90833873315644,
                            open: 33.16901271715577,
                            time: {year: 2018, month: 11, day: 8}
                        },
                        {
                            close: 35.887823124204296,
                            high: 39.21804237580939,
                            low: 30.951078044055627,
                            open: 30.951078044055627,
                            time: {year: 2018, month: 11, day: 9}
                        },
                        {
                            close: 34.361137347097575,
                            high: 35.27083445807796,
                            low: 27.825889562160082,
                            open: 34.86040182980157,
                            time: {year: 2018, month: 11, day: 10}
                        },
                        {
                            close: 36.61336645243868,
                            high: 40.31460537175622,
                            low: 33.96383400053921,
                            open: 39.70037560142739,
                            time: {year: 2018, month: 11, day: 11}
                        },
                        {
                            close: 41.321693986803055,
                            high: 44.45481986667003,
                            low: 35.67563772228475,
                            open: 38.67059795413642,
                            time: {year: 2018, month: 11, day: 12}
                        },
                        {
                            close: 40.15038854039306,
                            high: 41.50912000191902,
                            low: 32.610637769394444,
                            open: 41.50912000191902,
                            time: {year: 2018, month: 11, day: 13}
                        },
                        {
                            close: 44.092601065208015,
                            high: 44.092601065208015,
                            low: 37.778306506100726,
                            open: 38.99045898154136,
                            time: {year: 2018, month: 11, day: 14}
                        },
                        {
                            close: 41.42426637839382,
                            high: 44.72189614841937,
                            low: 41.42426637839382,
                            open: 44.72189614841937,
                            time: {year: 2018, month: 11, day: 15}
                        },
                        {
                            close: 41.19513795258408,
                            high: 49.08084695291049,
                            low: 36.24282165100056,
                            open: 44.909248500660254,
                            time: {year: 2018, month: 11, day: 16}
                        },
                        {
                            close: 44.24935708161703,
                            high: 53.028535501565486,
                            low: 40.32056743060158,
                            open: 46.198546801109984,
                            time: {year: 2018, month: 11, day: 17}
                        },
                        {
                            close: 43.18555863372182,
                            high: 52.34250206788521,
                            low: 43.18555863372182,
                            open: 49.58135271619679,
                            time: {year: 2018, month: 11, day: 18}
                        },
                        {
                            close: 50.8568887039091,
                            high: 52.60441957102357,
                            low: 39.917719271944364,
                            open: 48.197532365645806,
                            time: {year: 2018, month: 11, day: 19}
                        },
                        {
                            close: 48.79128595974164,
                            high: 52.45087789296739,
                            low: 46.80633073487828,
                            open: 52.45087789296739,
                            time: {year: 2018, month: 11, day: 20}
                        },
                        {
                            close: 46.97300046781947,
                            high: 55.80689868049132,
                            low: 46.97300046781947,
                            open: 55.80689868049132,
                            time: {year: 2018, month: 11, day: 21}
                        },
                        {
                            close: 55.58129861112469,
                            high: 55.58129861112469,
                            low: 49.087279242343996,
                            open: 53.16719476594961,
                            time: {year: 2018, month: 11, day: 22}
                        },
                        {
                            close: 50.058979311730226,
                            high: 62.55333249171461,
                            low: 50.058979311730226,
                            open: 52.628489607588826,
                            time: {year: 2018, month: 11, day: 23}
                        },
                        {
                            close: 51.193155229085995,
                            high: 59.08949991997865,
                            low: 51.193155229085995,
                            open: 55.352594157474755,
                            time: {year: 2018, month: 11, day: 24}
                        },
                        {
                            close: 60.099338327208436,
                            high: 66.93510126958154,
                            low: 55.27299867222781,
                            open: 61.05897620044226,
                            time: {year: 2018, month: 11, day: 25}
                        },
                        {
                            close: 58.3802630890727,
                            high: 71.50922937699602,
                            low: 50.95210438359451,
                            open: 62.4679688326532,
                            time: {year: 2018, month: 11, day: 26}
                        },
                        {
                            close: 57.875350873413225,
                            high: 65.59903214448208,
                            low: 57.875350873413225,
                            open: 62.747405667247016,
                            time: {year: 2018, month: 11, day: 27}
                        },
                        {
                            close: 61.231150731698605,
                            high: 66.3829902228434,
                            low: 61.231150731698605,
                            open: 65.01028486919516,
                            time: {year: 2018, month: 11, day: 28}
                        },
                        {
                            close: 64.9698540874806,
                            high: 77.09783903299783,
                            low: 58.455031795628194,
                            open: 58.455031795628194,
                            time: {year: 2018, month: 11, day: 29}
                        },
                        {
                            close: 72.40978471883417,
                            high: 72.40978471883417,
                            low: 53.05804901549206,
                            open: 65.907298021202,
                            time: {year: 2018, month: 11, day: 30}
                        },
                        {
                            close: 74.60745731538934,
                            high: 78.33742117000789,
                            low: 54.42067144918077,
                            open: 73.20930147914103,
                            time: {year: 2018, month: 12, day: 1}
                        },
                        {
                            close: 64.10866184869924,
                            high: 76.14506447001202,
                            low: 61.5224432669736,
                            open: 69.33984127682314,
                            time: {year: 2018, month: 12, day: 2}
                        },
                        {
                            close: 65.92038759928786,
                            high: 76.98479070362022,
                            low: 65.92038759928786,
                            open: 69.32298264631615,
                            time: {year: 2018, month: 12, day: 3}
                        },
                        {
                            close: 68.23682161095334,
                            high: 77.6723729460968,
                            low: 68.23682161095334,
                            open: 74.39471534484744,
                            time: {year: 2018, month: 12, day: 4}
                        },
                        {
                            close: 67.45035792565862,
                            high: 83.53728553118547,
                            low: 67.45035792565862,
                            open: 74.79418570077237,
                            time: {year: 2018, month: 12, day: 5}
                        },
                        {
                            close: 79.26722967320323,
                            high: 79.26722967320323,
                            low: 68.40654829383521,
                            open: 68.40654829383521,
                            time: {year: 2018, month: 12, day: 6}
                        },
                        {
                            close: 74.95305464030587,
                            high: 81.65884414224071,
                            low: 64.08761481290135,
                            open: 81.65884414224071,
                            time: {year: 2018, month: 12, day: 7}
                        },
                        {
                            close: 86.30802154315482,
                            high: 91.21953112925642,
                            low: 65.46112304993535,
                            open: 77.82514647663533,
                            time: {year: 2018, month: 12, day: 8}
                        },
                        {
                            close: 82.67218208289492,
                            high: 92.45833377442081,
                            low: 76.80728739647081,
                            open: 87.18916937056241,
                            time: {year: 2018, month: 12, day: 9}
                        },
                        {
                            close: 73.86125805398967,
                            high: 83.68952750914036,
                            low: 73.86125805398967,
                            open: 75.76119064173785,
                            time: {year: 2018, month: 12, day: 10}
                        },
                        {
                            close: 79.00109311074502,
                            high: 88.74271558831151,
                            low: 69.00900811612337,
                            open: 88.74271558831151,
                            time: {year: 2018, month: 12, day: 11}
                        },
                        {
                            close: 80.98779620162513,
                            high: 97.07429720104427,
                            low: 73.76970378608283,
                            open: 88.57288529720472,
                            time: {year: 2018, month: 12, day: 12}
                        },
                        {
                            close: 87.83619759370346,
                            high: 91.29759438607132,
                            low: 74.00740214639268,
                            open: 87.51853658661781,
                            time: {year: 2018, month: 12, day: 13}
                        },
                        {
                            close: 87.50134898892377,
                            high: 102.95635188637507,
                            low: 81.0513723219724,
                            open: 94.74009794290814,
                            time: {year: 2018, month: 12, day: 14}
                        },
                        {
                            close: 92.40159548029843,
                            high: 103.24363067710844,
                            low: 75.44605394394573,
                            open: 95.99903495559444,
                            time: {year: 2018, month: 12, day: 15}
                        },
                        {
                            close: 87.43619322092951,
                            high: 99.39349139000474,
                            low: 80.24624983473528,
                            open: 99.39349139000474,
                            time: {year: 2018, month: 12, day: 16}
                        },
                        {
                            close: 84.42724177432086,
                            high: 95.57485075893881,
                            low: 84.42724177432086,
                            open: 90.71070399095831,
                            time: {year: 2018, month: 12, day: 17}
                        },
                        {
                            close: 96.04408990868804,
                            high: 101.02158248010466,
                            low: 94.38544669520195,
                            open: 101.02158248010466,
                            time: {year: 2018, month: 12, day: 18}
                        },
                        {
                            close: 97.2120815653703,
                            high: 103.35830035963959,
                            low: 78.72594316029567,
                            open: 86.98009038330306,
                            time: {year: 2018, month: 12, day: 19}
                        },
                        {
                            close: 105.23366706522204,
                            high: 106.56174456393981,
                            low: 94.6658899187065,
                            open: 106.56174456393981,
                            time: {year: 2018, month: 12, day: 20}
                        },
                        {
                            close: 89.53750874231946,
                            high: 112.27917367188074,
                            low: 87.13586952228918,
                            open: 96.0857985693989,
                            time: {year: 2018, month: 12, day: 21}
                        },
                        {
                            close: 88.55787263435407,
                            high: 112.62138454627025,
                            low: 80.42783344898223,
                            open: 88.34340019789849,
                            time: {year: 2018, month: 12, day: 22}
                        },
                        {
                            close: 86.00639650371167,
                            high: 110.94532193307279,
                            low: 74.78703575498496,
                            open: 92.4275741143068,
                            time: {year: 2018, month: 12, day: 23}
                        },
                        {
                            close: 90.45119640254379,
                            high: 92.51500970997435,
                            low: 82.69475430846728,
                            open: 86.21662699549296,
                            time: {year: 2018, month: 12, day: 24}
                        },
                        {
                            close: 93.38124264891343,
                            high: 93.38124264891343,
                            low: 84.5674956907938,
                            open: 87.54923273867136,
                            time: {year: 2018, month: 12, day: 25}
                        },
                        {
                            close: 87.88725775527871,
                            high: 90.14253631595105,
                            low: 77.28638555494503,
                            open: 83.93199044032968,
                            time: {year: 2018, month: 12, day: 26}
                        },
                        {
                            close: 71.77940077333062,
                            high: 89.25710176370582,
                            low: 67.74278646676306,
                            open: 78.5346198695072,
                            time: {year: 2018, month: 12, day: 27}
                        },
                        {
                            close: 72.08757207606054,
                            high: 79.36518615067514,
                            low: 69.18787486704672,
                            open: 69.18787486704672,
                            time: {year: 2018, month: 12, day: 28}
                        },
                        {
                            close: 73.87977927793119,
                            high: 77.62891475860795,
                            low: 70.42293039125319,
                            open: 70.42293039125319,
                            time: {year: 2018, month: 12, day: 29}
                        },
                        {
                            close: 74.86330345366132,
                            high: 75.88473282167168,
                            low: 62.89549355427313,
                            open: 74.86554252962132,
                            time: {year: 2018, month: 12, day: 30}
                        },
                        {
                            close: 71.00787215611817,
                            high: 71.00787215611817,
                            low: 57.29681995441558,
                            open: 60.04464694823929,
                            time: {year: 2018, month: 12, day: 31}
                        }]);
                </script>
            </div>
            <div class="trade_div">
                <button type="button" id="toggleButton">매수/매도</button>
                <form id="tradeForm">
                    <div class="left-column">
                        <div class="form-group">
                            <label for="availableFunds">주문 가능</label>
                            <input type="text" id="availableFunds" name="availableFunds" value="0 KRW" readonly>
                        </div>
                        <div class="form-group">
                            <label for="buyPrice">매수 가격</label>
                            <input type="text" id="buyPrice" name="buyPrice" placeholder="1000 KRW">
                        </div>
                    </div>
                    <div class="right-column">
                        <div class="form-group">
                            <label for="orderQuantity">주문 수량</label>
                            <input type="text" id="orderQuantity" name="orderQuantity" placeholder="0">
                        </div>
                        <div class="form-group">
                            <label for="quantityPercent">주문 비율</label>
                            <div class="percent-buttons">
                                <button type="button" id="10percent">10%</button>
                                <button type="button" id="25percent">25%</button>
                                <button type="button" id="50percent">50%</button>
                                <button type="button" id="100percent">100%</button>
                            </div>
                        </div>
                    </div>
                    <div class="last-column">
                        <div class="form-group">
                            <label for="totalOrder">주문 총액</label>
                            <input type="text" id="totalOrder" name="totalOrder" readonly>
                        </div>
                        <input type="submit" value="매수하기">
                    </div>
                </form>
            </div>
        </div>
    </div>
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

<script>
    // 검색창
    $(document).ready(function () {
        $('.search-box').on('input', function () {
            var input = $('.search-box').val();
            $.ajax({
                url: '/stock-searching',  // API endpoint
                type: 'GET',
                data: {
                    'input': input
                },
                success: function (data) {
                    var resultHtml = '';
                    for (var i = 0; i < data.length; i++) {
                        resultHtml += '<div>' + data[i].name + '</div>'; // Assuming 'name' is a property of Stock
                    }
                    $('.search-result').html(resultHtml).show();
                },
                error: function (data) {
                },
            });
        });

        // Hide the search result when the user clicks outside
        $(document).click(function (event) {
            if (!$(event.target).closest('.searchBar').length) {
                $('.search-result').hide();
            }
        });

        // Select the search result and fill in the search box
        $(document).on('click', '.search-result div', function () {
            $('.search-box').val($(this).text());
        });
    });

    // 사용자가 종목 검색 버튼을 클릭할 때 호출
    function handleSearch() {
        const input = $('.search-box').val();
        // console.log(input);
        $.ajax({
            url: "/get-chart",
            type: "GET",
            contentType: "application/json",
            data: {
                'input': input
            },
            success: function (data) {
                const ohlcvList = JSON.parse(data);
                const candleData = ohlcvList.map((item) => ({
                    close: item.close,
                    high: item.high,
                    low: item.low,
                    open: item.open,
                    time: new Date(item.s_date).toISOString().split('T')[0],
                }));
                candlestickSeries.setData(candleData);
            },
            error: function () {
                alert("Error occurred.");
            },
        });
    }

    // 매수/매도
    var toggleButton = document.getElementById("toggleButton");
    var tradeForm = document.getElementById("tradeForm");
    var isBuyForm = true;
    toggleButton.addEventListener("click", function () {
        if (isBuyForm) {
            tradeForm.innerHTML = `
                    <div class="left-column">
                        <div class="form-group">
                            <label for="sellPrice">매도 가격</label>
                            <input type="text" id="sellPrice" name="sellPrice" placeholder="1000 KRW">
                        </div>
                    </div>
                    <div class="right-column">
                        <div class="form-group">
                            <label for="orderQuantity">주문 수량</label>
                            <input type="text" id="orderQuantity" name="orderQuantity" placeholder="0">
                        </div>
                        <div class="form-group">
                            <label for="quantityPercent">주문 비율</label>
                            <div class="percent-buttons">
                                <button type="button" id="10percent">10%</button>
                                <button type="button" id="25percent">25%</button>
                                <button type="button" id="50percent">50%</button>
                                <button type="button" id="100percent">100%</button>
                            </div>
                        </div>
                    </div>
                    <div class="last-column">
                        <div class="form-group">
                            <label for="totalOrder">주문 총액</label>
                            <input type="text" id="totalOrder" name="totalOrder" readonly>
                        </div>
                        <input type="submit" value="매도하기">
                    </div>
                `;
            toggleButton.innerText = "매수하기";
        } else {
            tradeForm.innerHTML = `
                <div class="left-column">
                    <div class="form-group">
                        <label for="availableFunds">주문 가능</label>
                        <input type="text" id="availableFunds" name="availableFunds" value="0 KRW" readonly>
                    </div>
                    <div class="form-group">
                        <label for="buyPrice">매수 가격</label>
                        <input type="text" id="buyPrice" name="buyPrice" placeholder="1000 KRW">
                    </div>
                </div>
                <div class="right-column">
                    <div class="form-group">
                        <label for="orderQuantity">주문 수량</label>
                        <input type="text" id="orderQuantity" name="orderQuantity" placeholder="0">
                    </div>
                    <div class="form-group">
                        <label for="quantityPercent">주문 비율</label>
                        <div class="percent-buttons">
                            <button type="button" id="10percent">10%</button>
                            <button type="button" id="25percent">25%</button>
                            <button type="button" id="50percent">50%</button>
                            <button type="button" id="100percent">100%</button>
                        </div>
                    </div>
                </div>
                <div class="last-column">
                    <div class="form-group">
                        <label for="totalOrder">주문 총액</label>
                        <input type="text" id="totalOrder" name="totalOrder" readonly>
                    </div>
                    <input type="submit" value="매수하기">
                </div>
                `;
            toggleButton.innerText = "매도하기";
        }

        isBuyForm = !isBuyForm;
    });
</script>
</body>
</html>