-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-06-05 04:11:29
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `tea_activity`
--

-- --------------------------------------------------------

--
-- 資料表結構 `activity`
--

CREATE TABLE `activity` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_s` date NOT NULL,
  `time_e` date NOT NULL,
  `point` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `valid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `activity`
--

INSERT INTO `activity` (`id`, `name`, `time_s`, `time_e`, `point`, `content`, `price`, `img`, `valid`) VALUES
(1, '茶的風味鑑賞學：識茶、品茶、泡茶，探索茶的世界', '2024-08-20', '2024-08-20', '台北市', '茶藝跟咖啡其實很像！學會品茶可以增進生活樂趣，懂得按照自己的需求挑選茶飲；學會泡茶更是特殊技能，除了享受療育的泡茶過程外，也不失為一種與人交際的談資喔！', 1000, '', 0),
(2, '一輩子受用的茶知識', '2024-09-09', '2024-08-21', '台北市', '臺灣茶品質優秀，耳熟能詳，來自各地產區的地方特色茶，在每個時代都有經典之作，我們享受每次的一期一會，而最為受到重視的肯定是這些可名列十大經典的知名茶款，過去在不同時期1950、1970、2000、2020年的幾個時期結點，都出現過各類不同的版本，說明台灣最著名的有哪十種特別茶，不只學者出書，也有商人行銷時被拿來說嘴，點出認為在當時市場上出最具代表性的台灣茶會標註出來介紹。引用請註明出處，請維護、尊重著作權，未經允許使用，女娼男盜，領不到薪水。如需引用本文章圖文，須經過作者同意並註明出處，我們不歡迎無知會的引用與內容擷取，祝你都喝到『農藥超標』的茶葉。', 1000, '', 0),
(3, '終身受用的茶學問-茶的香味之旅', '2024-08-10', '2024-08-22', '台北市', '一堂可以邊喝邊學的深度茶課程對於浩瀚的茶世界中某些主題特別有興趣，想要更深入了解嗎？只要找些志同道合的好友，把有興趣的主題告訴我們，就可以為你們規劃課程，讓你們盡情聆聽、發問和品茶。在這堂課程中，我們會負責：', 1000, 'https://shoplineimg.com/5e8fd3429e08ce003190913d/6', 1),
(4, '品茶道美學 漫遊竹田123', '2025-11-22', '2024-08-23', '台北市', '茶，幾乎是所有台灣人都會接觸到的飲料。在台灣的小小土地上，孕育了千百種滋味的茶飲，好的茶，從種茶、採茶、製茶到揉茶，無一不是經過茶人的細心呵護，而茶的歷史，也是台灣的歷史。我們邀請你，一同來到《慕耕活茶研所》用一個小時以舌尖探訪台灣茶知名產區，再享受半小時的儀式感，親手沏一壺台灣茶。讓專業茶師從茶的常識、茶葉的科普知識、製茶的方式到茶的沖泡、茶的品嚐、飲茶的禮儀，用淺顯易懂的方式帶您更深入認識台灣茶文化『感官識茶』係指觀察茶葉、聞香氣與品味茶湯，以國際評鑑杯方式品茶，體驗茶在不同狀態下的香氣（乾香、熱香、杯底香），也讓你可以在課程中除了品茶之外，透過茶師的講述與討論更深度地了解茶。', 1000, '', 1),
(5, '茶與生活科學班', '2025-03-22', '2024-08-24', '台南市', '很幸運的茶莊當天就在製作茶葉，在講茶學院惡勢力的幫助下我們進到一般人走不進去的製茶禁區。坪林常常下雨，為了維持一致的高品質在萎凋之前會將新鮮茶葉子用熱風機烘過，然後就是完全靠手藝的浪菁跟發酵了，這樣一路下來製作完成一共十幾個小時得要一氣呵成，想到這樣辛苦也更加珍惜杯子裡清澈的清心包種茶。台灣鄉村年輕人口外移流失已經不是新聞，但在坪林返鄉青年漸漸成為這老城鎮發展的主力，藉由午餐認識幸福小廚餐廳將茶入菜到極致，透過下午茶在坪感覺咖啡廳體驗餐茶搭配的巧妙。這些實實在在的在地故事在講茶學院精心的安排下一氣呵成，充滿活力的呈現在我們面前。如果下次還有戶外教學的課程我會去嗎？一定會，如果是講茶學院安排的話，因為跟他們我學到的不單單只是茶葉，而是一種經由茶而連結出來的文化情感。', 1000, 'https://teatalkacademy.com/images/class/chinatealv', 1),
(6, '坪林。包種茶學旅', '2025-08-23', '2024-08-25', '台中市', '台灣講茶學院TeaTalk Academy成立於2015年，是在台灣專業茶相關課程的教育機構，致力推廣高品質、國際化的茶類認證課程。講茶學院開課分布於台北、台中、南投，注重全面而廣泛的茶葉專業知識，運用系統化與互動式的教學方法，減少學員探索茶的時間與花費，而初級至高級不同程度的課程規劃，讓學員感受茶葉世界的深度與廣度。講茶學院另一教學重點，即協助各大企業進行內部專業人員培訓課程，提升員工的專業知識和技能，應用所學知識與觀念符合實務專業的需求，成為公司最強力的專業人員。除此之外，還會定期舉辦茶類研討講習和茶葉品評會，教學內容搭配台灣與世界各地特殊茶葉教材，幫助學員累積茶葉品評經驗。台灣講茶學院的師資和顧問均為業界經驗豐富的講師與專家，各涉專業領域並具業界公信力，集結成一支專業實力的教育團隊。我們期許在茶類教育的領域中建立專業一致的系統，成為全世界茶類教育的標竿。 ', 1000, 'https://teatalkacademy.com/images/%E7%B4%99%E9%86%', 1),
(7, '炭焙茶品評分享會', '2024-11-24', '2024-08-26', '新北市', '茶葉烘焙是烏龍茶精緻中的特殊工法，現代茶葉烘焙所用的熱風烘焙機、焙籠、遠紅外線烘焙機，都是源自古老的木炭烘焙，而木炭烘焙的技術已經慢慢的失傳，讓我們來掀開炭焙茶的神秘面紗。【講茶學院】與【行火者】(原貓頭鷹炭焙)一起設計出【炭焙茶品評分享會】，從炭的挑選、打炭方式、整火、到開始烘焙，一起火就是長達15天的持續烘焙，來了解兩位年輕炭焙茶師呂明賢與蔡杰廷超過十年的傳統炭焙學習脈絡，了解從事炭焙茶師背後的辛酸與使命。炭焙茶的系統與現代焙火的系統有所不同，這次品評會，直接品評到不同火侯的炭焙茶(輕火~重火)，也會在第二輪品評到不同茶類品種的炭焙茶，有系統的方式，揭開炭焙茶的神秘面紗。', 1000, 'https://teatalkacademy.com/images/class/charcoal-b', 1),
(8, 'TAGs台灣茶分類分級活動', '2025-10-12', '2024-08-27', '台中市', '結合特色茶風味輪及產官學三方評審，形成茶葉品質分級系統，啟用雲端評分系統的行動載具即時記錄評分結果，利於最終評鑑報告書的產出，並使茶葉分級更貼近普羅大眾，讓消費者能瞭解所選購 得獎茶的 風味特色，提升有機茶價值感，並辦理聯合行銷活動，促進有機茶 品質把關與銷售。', 1000, 'https://tea.liukung.org.tw/web/image/10223-a0011ff', 1),
(9, '茶葉感官品評初級班', '2024-08-26', '2024-08-28', '桃園市', '【認證課程】茶葉感官品評初級班 -2024年11月●透過本課程，你將學習如何準確辨別各式茶品特色，並提高業務溝通自信與專業度。同時，全臺唯一受訓場域比照官方考場硬體陳設，讓你更加熟悉應考情境，大幅提高受證機率。現在就加入我們，讓你站在產業最前線！●本館與行政院農業部茶與飲料作物改良場合作推出「茶葉感官品評班」，為你的競爭力量身打造，幫助你培養最具公信力的官方標準品鑑能力，為飲品產業人員的必修課程。「讓專業成為你的代名詞！」機會就是現在！', 1000, 'https://www.hakkatea.tw/rails/active_storage/blobs', 1),
(10, '製茶體驗', '2025-03-22', '2024-08-29', '南投市', '新北市農會文山農場歷史悠久，早在日治時代，就是台灣有名的「茶業傳習所」，為茶種育苗、繁殖，製茶技術交流與傳承的據點，至今仍在此舉辦「台北市、新北市文山包種茶製茶技術競賽」。而如今，文山農場獲得有機茶園認證，為發展茶產業，推廣茶文化，讓傳統茶藝傳承，同時積極推介各項採.製.泡體驗活動.茶製品DIY，並依據園區自然生態推出貓頭鷹吊飾.台灣藍鵲笛..等DIY體驗製作.豐富遊客文山農場之旅，歡迎遊客造訪，親自體驗。', 1000, 'http://www.wsfa.com.tw/ezfiles/599/1599/img/6047/B', 1),
(11, '熊空茶園', '2025-08-23', '2024-08-30', '台中市', '遠離了城市的繁雜，漸漸地，空氣裏飄著悠悠的茶香味，位於阿里山公路55.6公里的『生力農場』是隙頂的知名茶園，海拔高度1250公尺，生力曾獲得2013年阿里山春季高海拔優良茶比賽青心烏龍組頭等獎，生力種茶歷史已有35年，是阿里山第一批種茶的茶農，生力農場二代接班以後更將茶園擴展為咖啡館與民宿的形式，亦提供製茶體驗等導覽活動，讓遊客在此更能夠多元的滿足旅遊需求。', 1000, 'https://cdn.fontrip.com/fontour/file/show/Zkkdr/10', 1),
(12, '雙霖製茶體驗', '2024-11-24', '2024-08-31', '新北市', '「天芳茶行」是傳承五代的製茶世家也是三峽傳統產業的驕傲，堅持在自家茶園自產自銷，專門出產碧螺春、龍井、蜜香紅茶、東方美人、包種茶、烏龍茶、柚子茶餅......等等，由第四代掌門人黃正忠師傅監督生產，正忠師不但是比賽茶的常勝軍，現也將手藝傳承給第五代傳人黃耀寬，為三峽年輕一輩製茶產業的生力軍。由甘樂帶路一起造訪體驗採茶文化，從採茶到品茶用在地職人的角度，放慢步調一起看三峽。', 1000, 'https://www.scholarfarm.com.tw/userfiles/image/362', 1),
(13, '香料學', '2025-10-12', '2024-09-01', '台北市', '茶，儼然成為象徵身分地位的奢侈品，甚至部分北方人無能力購茶時，卻仍要學習以喝茶方式品飲白開水。以此種文化招待與享受顯示自身的禮節與水準，於是產生了將茶與上層社會社交活動聯繫在一起的象徵意義。茶的文化性，可說是大於其物質性的存在，特別是在創意產業的脈絡下，其文化性更加地被強調。', 1000, 'https://www.hanyitea.tw/wp-content/uploads/2022/07', 1),
(14, '鍋煮香料奶茶學', '2024-08-26', '2024-09-02', '台中市', '認識茶葉 (課程材料包內含，可鍋煮5次)\r\n\r\n1. 何謂基底茶\r\n2. 瞭解紅茶歷史與產地\r\n3. 探究紅茶製程與風味\r\n4. 行家選茶指南\r\n\r\n ', 1000, 'https://www.scholarfarm.com.tw/userfiles/image/S__', 1),
(15, '茶怎麼泡才好喝？', '2024-08-27', '2024-09-03', '台南市', '正規的溯源到茶藝界近十年的流行，把茶量加倍，加倍，再加倍，用多大量的茶，換取最高級的滋味體驗。\r\n用一包茶包，泡一壺茶，需要的時間比較長，容易浸泡太久，於是讓茶容易苦澀，沖泡後快快取出茶包，保證給你香氣飽滿霸道的一杯茶，雖然會損失茶的尾韻跟厚度，但也強化了香氣、甜度，還有什麼比一杯香甜不苦澀的茶，更能撫平工作時的煩心呢？', 1000, 'https://www.hanyitea.tw/wp-content/uploads/2019/12', 1),
(16, '初級茶藝師課程', '2024-08-27', '2024-09-04', '高雄市', '初級茶藝師課程一連六堂，每堂兩小時，學習成為一位茶藝師的基本技巧。初級茶藝師課程包含茶藝師禮儀、衣著要求、品茗技巧、不同茶器之沖泡及表演方式、提升茶湯風味的秘訣。\r\n\r\n初級茶藝師課程亦有教授茶的起源及簡史、六大茶類之分類及工藝製作方式、茶葉儲存要求、泡茶用水的基礎認知、茶文化與茶道理念等等。\r\n\r\n每一堂會分為三個部分，首部分會講解理論，第二部分會講解六大茶類及品茗，第三部分為實操練習，以多元化及多角度方式學習，打好茶藝基礎。', 1000, 'https://shoplineimg.com/624d2b599b4942004b4e1acc/6', 1),
(17, '親子茶道', '2024-08-28', '2024-09-05', '台北市', '在這個暑假，讓我們一起來探索台灣茶的世界，學習如何品茶和泡茶，讓您的夏日生活更加有趣和美好！我們的課程還有有獎徵答，充滿趣味性，適合國小三年級－國中三年級的朋友參加，將會用豐富的知識和經驗，來指導小朋友們DIY動手泡茶。讓各位小朋友在品茶和泡茶的過程中，體驗到台灣茶的博大精深及獨特魅力。', 1000, 'https://shoplineimg.com/5cee0a99c4efc60001a5fe6b/6', 1),
(18, '茶藝進階師課程', '2024-08-29', '2024-09-06', '彰化市', '台灣市面上關於茶葉證照種類繁多，大多為私人機構所頒發證照。農業部茶及飲料作物改良場於民國106年推出茶葉感官品評中級證照，此張證照是農業部茶及飲料作物改良場推出全臺灣唯一官方認證的評茶證照。開平學苑於民國111年初成為北台灣首位茶葉感官品評中級課程授課單位，取得此證照對於從事餐飲或茶葉相關行業之人員，具有公信力及競爭力。經統計取得此證照者，在相關行業求職時有優先錄取之優勢。', 1000, 'https://kaipingacademy.org/wp-content/uploads/2022', 1),
(19, '臺灣特色茶風味輪講座', '2024-08-30', '2024-09-07', '高雄市', '臺灣是世界馳名的茶葉產區，對一般消費者而言茶葉專業品評用語又生澀難懂。風味輪就像是一種索引工具，藉由圖形化和既定詞彙的協助，讓品飲者方便聯想，去描述出他所品嚐到的風味，而不是憑空去想像，建立茶葉愛好者與專業評鑑人員間的共通用語。', 1000, 'https://kaipingacademy.org/wp-content/uploads/2024', 1),
(20, '臺灣特色茶品質及風味評鑑研習：蜜香茶的秘密', '2024-08-31', '2024-09-08', '嘉義市', '想知道好茶如何定義嗎?本課程將深入淺出的說明特色茶的風味及評鑑重點，讓學員能更了解喜歡的茶類，並從中體會到各種特色茶的優劣，能真正落實到生活中的實務課程。另現場備有茶席，由侍茶師以專業技法，展現現場好茶最優秀的一面。', 1000, 'https://kaipingacademy.org/wp-content/uploads/2023', 1),
(21, '初級茶道', '2024-09-01', '2024-09-09', '新竹市', '每個茶人對茶都有自己的論述，那些論述各有迷人之處，本來就了解茶世界的人，很容易讀得懂，並且產生共鳴或嚮往之心。但對於單純自覺得喜歡喝茶、對於茶世界的認知完全空白、踏進茶行買茶會感到恐懼卻步的素人，還是像是無字天書那樣，無從追尋與體會。\r\n\r\n \r\n\r\n若你也是這樣猶如白紙的愛茶人，敬邀你來取一張進入初階茶世界的門票，本著愛茶的初心一起捧茶壺、注一杯浪漫、飲一口歷史，讓這一切感官的享受滋養你喝茶的自信。', 1000, 'https://img.shoplineapp.com/media/image_clips/6217', 1),
(22, '東方美人品評一級', '2024-09-01', '2024-09-10', '新竹市', '拍賣價一斤最高來到101萬的歷史天價 - 東方美人茶\r\n作為台灣最昂貴的茶種，無論是驚艷了英國女王或是風靡日本皇室的傳說、最精細的採摘標準、極繁雜的製作工藝，乃至於桌上那杯香檳色澤帶有蜜果香氣的琥珀茶湯，國外人士讚嘆東方美人與頂級大吉嶺莊園茶齊名為世界頂級茗品一點也不為過 。\r\n\r\n製程關鍵點 - 從蟲害搖身一變成了可遇不可求的寶藏\r\n正因為遭受小綠葉蟬的著蜒至殘缺，更展現了豐富五色斑斕美感、蜜甜香氣與熟果滋味。由不同的品種、地區製作，卻產生不同的風味的東方美人，受傷得越重，香氣卻更加迷人，價值更加水漲船高，好似台灣歷經史上多國殖民與戰亂，發展出堅毅辛勤而燦爛多元的文化底蘊。\r\n\r\n這殘缺的完美，是老天爺給台灣人最名貴的禮物', 1000, 'https://teatalkacademy.com/images/class/oriental%2', 1),
(23, '茶調酒風味一級 Tea Cocktail L1', '2024-09-02', '2024-09-11', '南投市', '這堂課程會讓學員認識酒吧常見的六大基酒，與不同風味走向的茶類，在萃取方式、風味差異的比較，讓茶調酒的專家Henry，帶領您進入最新流行的茶調酒風味世界中。課程中除了會介紹不同酒與茶之外，還會讓學員比較不同基酒萃取不同茶葉前後風味的差異比較，老師也會示範不同茶調酒的操作，也會讓學員自己實作，調製一杯自己的茶調酒，建立完整架構的茶調酒風味系統。\r\n\r\n講茶學院與茶調酒專家-Henry Chang共同合作設計專屬課程，Henry有13年的調酒資歷，同時也是茶調酒專門酒吧紙醉金迷Relax Taipei創辦人，擁有7張茶葉相關證照，也前往台灣各茶區，了解各茶區不同的地方特色茶的風土、製程、風味與故事，用調酒師的角度，把當地的茶與故事帶到都市的酒吧中，用長年累積的經驗技術，融合出極具特色的茶調酒。\r\n\r\n風味調酒在酒吧越來越流行，而在台灣茶調酒在這幾年裡，也越來越風行，茶成為酒吧中的第二主角，未來茶調酒有機會讓台灣調酒被世界看到。\r\n\r\n喝酒不開車。開車不喝酒', 1000, 'https://teatalkacademy.com/images/%E7%B4%99%E9%86%', 1),
(24, '茶葉品評一級 Tea Tasting L1', '2024-09-03', '2024-09-12', '彰化縣', '茶葉品評是一門專業的學問，但也並非遙不可及，尤其近年來因為茶飲料的普及與流行，茶葉發展趨勢更盛，相關人才的需求也更為迫切。因此，茶葉感官品評可透過制度化的訓練，取得其知識技術，並透過測驗獲取專業證照，提升產業人才的素質。', 1000, 'https://tea.liukung.org.tw/web/image/8822-1a541ecf', 1),
(25, '茶葉品評二級 Tea Tasting L2', '2024-09-04', '2024-09-13', '嘉義縣', '品茶能力再升級！更深入的探討茶歷史脈絡、茶葉製作過程、茶葉精製過程、品飲技巧、獨立香氣對應、品種認識、各類茶品評、茶湯濃度差異等…，十大單元共12小時完整課程，將品評70款經典茶品，更紮實的累積你對茶葉品飲的專業能力！茶產業發展相關，包括種植、售茶、投資、教育、餐飲人員絕對要擁有的一張證照！', 1000, 'https://teatalkacademy.com/images/class/teatasting', 1),
(26, '台灣特色茶品評一級', '2024-09-05', '2024-09-14', '台東縣', '說到台灣茶，你腦中霎那間浮現什麼畫面呢？\r\n\r\n「舊時大稻埕茶行林立的騎樓下，女工們成群揀著茶枝的繁榮光景 ?」\r\n「隨時代更迭，一間間歷史悠久與時尚新潮的茶館毗鄰而立的街道 ?」\r\n「19世紀即於國際佔有一席之地，高級餐廳菜單上必備的頂級茶款 ?」\r\n\r\n台灣茶是世界茶產業中重要的一環，也曾經是世界茶業的代工廠，台灣的紅茶行銷到全世界85個港口，台灣的綠茶也外銷到北非摩洛哥，而台灣更是世界烏龍茶的領導者，台灣從北到南，西到東因為氣候、土壤、文化與民情的不同，也孕育出不同風格的地方特色茶...', 1000, 'https://teatalkacademy.com/images/class/35077711_2', 1),
(27, '台灣紅茶品評一級', '2024-09-06', '2024-09-15', '花蓮縣', '台灣紅茶在世界上是非常特別的一個產區，同時擁有具鮮明特色香氣的大葉種，與生長環境非常優質的小葉種紅茶。台灣紅茶自日治時代開始就有計畫與規模的建立，當成日本對世界賺取外匯明星商品，光復後台灣紅茶更加蓬勃發展，開啟台灣茶產業的黃金年代，而九二一地震後，台灣紅茶重返光榮，再次以巨大的能量，把台灣紅茶的獨特性與豐富性帶給大家。 \r\n\r\n【講茶學院】為學員帶來歷史、產區、製程與品評技巧的專業教授，讓你全面了解台灣紅茶的廣度，課程中將會品評12款經典茶品(6款大葉種、6款小葉種)。', 1000, 'https://teatalkacademy.com/images/class/taiwan%20b', 1),
(28, '日本茶品評一級', '2024-09-07', '2024-09-16', '台北市', '你熱愛旅行日本嗎？想深度品味日本獨有文化與美學，那你一定得認識獨樹一格的日本茶文化！\r\n\r\n日本是世界綠茶的領導者，茶文化也是日本侘寂美學的媒介，細緻且厚實，日本的茶葉是個非常完整的系統，除了全球知名的抹茶之外，還有像玉露、煎茶、深蒸煎茶等更多豐富滋味的茶品...', 1000, 'https://teatalkacademy.com/images/class/japantealv', 1),
(29, '英式紅茶品評一級', '2024-09-08', '2024-09-17', '台中市', '、 紅茶的分類方式\r\n\r\n東西方紅茶品飲方式差異\r\n西方紅茶分類方式:單品、拼配茶、調味茶\r\n西方紅茶常見香料介紹\r\n二、 Cupping 6款茶品\r\n\r\n三、 英式下午茶茶具與禮儀\r\n\r\n英式紅茶茶具使用說明\r\n英式下午茶吃法與禮儀\r\n四、 英式下午茶體驗\r\n\r\n五、 享譽國際的紅茶\r\n\r\n知名紅茶品牌介紹\r\n知名茶品故事介紹\r\n六、 英國紅茶文化發展史\r\n\r\n四位英國女王對紅茶產業影響\r\n為何英國人愛茶不愛咖啡\r\n下午茶發明歷史\r\n一日喝茶時間說明', 1000, 'https://teatalkacademy.com/images/class/english%20', 1),
(30, '茶飲調製一級 Tea Bartender L1', '2024-09-09', '2024-09-18', '苗栗市', '台灣人的血液裡流淌著茶，正因為茶環繞在我們的周遭如此無所不在，更讓我對茶的每個樣貌都好奇不已。許多人都以為手搖茶只是現代人迅速解渴的懶人茶，難登大雅之堂，殊不知手搖茶的誕生恰恰是奠基在台灣茶的精緻工藝之上，只是換上現代人更容易接近的樣貌而已。\r\n\r\nChester老師在講茶開設的課程，不僅將西方調酒與台灣手搖茶的歷史脈絡清楚解析，更以自身在海外經營手搖茶的經驗，為想要親手調製手搖茶的每個人開了一扇方便的門，在理論與親手製作之中，台灣茶的過去、現在和未來都有了更清晰的方向，也有了跟世界溝通的橋樑。', 1000, 'https://teatalkacademy.com/images/class/tea%20bari', 1),
(31, '茶葉感官品評初級班', '2024-09-10', '2024-09-19', '基隆市', '隨著喝茶人口越來越多，相關專業人士也隨之需求量大增，開平學苑取得農業部茶及飲料作物改良場技術授權，從茶葉起源、歷史、發展至茶葉品評一次滿足。通過測驗則由農業部茶及飲料作物改良場頒發「茶葉感官品評專業人才能力鑑定合格證書-初級」，為全臺灣唯一官方認證的評茶證照。', 1000, 'https://teatalkacademy.com/images/class/chinatealv', 0),
(32, '製茶丙級術科練習課程', '2024-09-11', '2024-09-20', '台中市', '包含「術科練習教學、當天往返台北車站－製茶廠交通、課程當日午餐便當」，不包含考試費用。\r\n\r\n開平學苑特舉辦「製茶技術丙級」術科練習，協助考生更加了解術科考試各項流程及試場動線，期望能協助有意考取「製茶技術丙級」檢定的學員，熟悉術科內容以利考試。', 1000, 'https://img.shoplineapp.com/media/image_clips/6512', 1),
(33, '茶的體驗6666666666666666', '2024-06-05', '2024-06-29', 'taipei', 'ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', 1001, '20240604.jpg', 1),
(34, 'jack123', '2024-06-04', '2024-06-05', 'taipei', '123', 1000, '20240604.jpg', 1),
(35, '茶的體驗6', '2024-06-05', '2024-06-29', 'taipei', '123', 1000, '20240604.jpg', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `activity_category`
--

CREATE TABLE `activity_category` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `activity_category`
--

INSERT INTO `activity_category` (`id`, `name`) VALUES
(1, '茶文化與歷史課程 '),
(2, '茶葉鑑定與品茶課程'),
(3, '茶葉製作與加工課程'),
(4, '茶藝表演與茶道課程'),
(5, '茶葉證照與經營課程');

-- --------------------------------------------------------

--
-- 資料表結構 `activity_category_relation`
--

CREATE TABLE `activity_category_relation` (
  `activity_id` int(3) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `activity_category_relation`
--

INSERT INTO `activity_category_relation` (`activity_id`, `category_id`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 2),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 2),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `activity_images`
--

CREATE TABLE `activity_images` (
  `id` int(3) UNSIGNED NOT NULL,
  `activity_id` int(3) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `activity_images`
--

INSERT INTO `activity_images` (`id`, `activity_id`, `path`) VALUES
(1, 1, 'https://images.api.hahow.in/images/61cc17768481550006e15284'),
(2, 2, 'https://static.accupass.com/eventintro/2304241441551418071000.jpg'),
(3, 3, 'https://shoplineimg.com/5e8fd3429e08ce003190913d/6131ccf1fd8e4000298d2665/2160x.webp?source_format=jpg'),
(4, 4, 'https://rs.joo.com.tw/website/uploads/website_976/zh-tw/wpicon_img_53167.jpg?_82421'),
(5, 5, 'https://teatalkacademy.com/images/class/chinatealv1/TEA_4931.JPG'),
(6, 6, 'https://teatalkacademy.com/images/%E7%B4%99%E9%86%89%E9%87%91%E8%BF%B7_230905_16.jpg'),
(7, 7, 'https://teatalkacademy.com/images/class/charcoal-baking/20190624_001228.jpg'),
(8, 8, 'https://tea.liukung.org.tw/web/image/10223-a0011ff5/%E6%9C%AA%E5%91%BD%E5%90%8D-2.jpg'),
(9, 9, 'https://www.hakkatea.tw/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdE1CIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--65057cb0943bec72db20a4e360cb31f7dfe37525/image-20240126173001-6.png'),
(10, 10, 'http://www.wsfa.com.tw/ezfiles/599/1599/img/6047/B05a.jpg'),
(11, 11, 'https://cdn.fontrip.com/fontour/file/show/Zkkdr/1024x684.jpg'),
(12, 12, 'https://www.scholarfarm.com.tw/userfiles/image/362406681_222229310796205_4820332926139076838_n(1).jpg'),
(13, 13, 'https://www.hanyitea.tw/wp-content/uploads/2022/07/49DD9D10-25E2-42A8-A8F1-0AB931284225.jpg'),
(14, 14, 'https://www.scholarfarm.com.tw/userfiles/image/S__87859237_0.jpg'),
(15, 15, 'https://www.hanyitea.tw/wp-content/uploads/2019/12/74593103_1412614855571955_7532097354019635200_o.jpg'),
(16, 16, 'https://shoplineimg.com/624d2b599b4942004b4e1acc/62a6cf9d9b6d4e002a1c670c/800x.webp?source_format=JPG'),
(17, 17, 'https://shoplineimg.com/5cee0a99c4efc60001a5fe6b/64474c54851de6000e386fb7/720x.webp?source_format=png'),
(18, 18, 'https://kaipingacademy.org/wp-content/uploads/2022/01/%E9%96%8B%E5%B9%B3%E5%AD%B8%E8%8B%91%E8%8C%B6%E8%91%89%E6%84%9F%E5%AE%98%E5%93%81%E8%A9%95%E4%B8%AD%E7%B4%9A_%E9%AC%8D%E9%AC%9A%E8%8C%B6%E5%9C%920.jpg'),
(19, 19, 'https://kaipingacademy.org/wp-content/uploads/2024/02/IMG_4932-768x768.jpg'),
(20, 20, 'https://kaipingacademy.org/wp-content/uploads/2023/05/%E8%87%BA%E7%81%A3%E7%89%B9%E8%89%B2%E8%8C%B6%E5%93%81%E8%B3%AA%E5%8F%8A%E9%A2%A8%E5%91%B3%E8%A9%95%E9%91%91%E7%A0%94%E7%BF%92%EF%BD%9C%E9%96%8B%E5%B9%B3%E5%AD%B8%E8%8B%91-592x400.jpg'),
(21, 21, 'https://img.shoplineapp.com/media/image_clips/62172e3c90f8081678502ab8/original.jpg?1645686332'),
(22, 22, 'https://teatalkacademy.com/images/class/oriental%20beauty%20tea/obt26.jpeg'),
(23, 23, 'https://teatalkacademy.com/images/%E7%B4%99%E9%86%89%E9%87%91%E8%BF%B7_230905_16.jpg'),
(24, 24, 'https://tea.liukung.org.tw/web/image/8822-1a541ecf/00.jpg'),
(25, 25, 'https://teatalkacademy.com/images/class/teatastingL1/TEA_6426.JPG'),
(26, 26, 'https://teatalkacademy.com/images/class/35077711_2084651705147781_8268473469763584_n.jpg'),
(27, 27, 'https://teatalkacademy.com/images/class/taiwan%20black%20tea%20L1/001.jpg'),
(28, 28, 'https://teatalkacademy.com/images/class/japantealv1/japantealv1-5.jpg'),
(29, 29, 'https://teatalkacademy.com/images/class/english%20black%20tea/English%20Black%20Tea-1.jpg'),
(30, 30, 'https://teatalkacademy.com/images/class/tea%20barista%20L1/004.jpeg'),
(31, 31, 'https://teatalkacademy.com/images/class/chinatealv1/TEA_4931.JPG'),
(32, 32, 'https://img.shoplineapp.com/media/image_clips/65128d30d260e14d3fc68935/original.jpg?1695714607');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `activity_category`
--
ALTER TABLE `activity_category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `activity_category_relation`
--
ALTER TABLE `activity_category_relation`
  ADD PRIMARY KEY (`activity_id`);

--
-- 資料表索引 `activity_images`
--
ALTER TABLE `activity_images`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity_category`
--
ALTER TABLE `activity_category`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity_category_relation`
--
ALTER TABLE `activity_category_relation`
  MODIFY `activity_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity_images`
--
ALTER TABLE `activity_images`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
