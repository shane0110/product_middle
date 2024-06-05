<?php
require_once("../test/tea_activity.php");

$search = isset($_GET["search"]) ? $_GET["search"] : "";
$whereClause = "WHERE 1=1";

// $sqlCategory="SELECT * FROM category ORDER BY id ASC";
// $resultCate=$conn->query($sqlCategory);
// $cateRows=$resultCate->fetch_all(MYSQLI_ASSOC);




$sqlAll = "SELECT activity.*, ac.name AS category_name, 
ac.id AS category_id FROM activity_category_relation acr 
JOIN activity_category ac ON acr.category_id = ac.id
JOIN activity ON acr.activity_id = activity.id
WHERE activity.valid=1";

if (isset($_GET["search"])) {
    $whereClause = " AND  activity.name LIKE '%$search%'";
    $sql = "$sqlAll $whereClause";
} else if (isset($_GET["page"]) && isset($_GET["order"])) {
    $page = $_GET["page"];
    $perPage = 6;
    $firstItem = ($page - 1) * $perPage;

    $resultAll = $conn->query($sqlAll);
    $allCount = $resultAll->num_rows;

    $pageCount = ceil($allCount / $perPage);
    $order = $_GET["order"];

    switch ($order) {
        case 1:
            $sql = "$sqlAll ORDER BY id ASC LIMIT $firstItem, $perPage";
            break;
        case 2:
            $sql = "$sqlAll ORDER BY id DESC LIMIT $firstItem, $perPage";
            break;
    }
} else {
    header("location: activity.php?page=1&order=1");
}



$result = $conn->query($sql);
$rows = $result->fetch_all(MYSQLI_BOTH);

?>


<!doctype html>
<html lang="en">

<head>
    <title>activity</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>

<body>
    <style>
        :root {
            --aside-witch: 200px;
            --header-height: 50px;
        }

        .logo {
            width: var(--aside-witch);
        }

        .aside-left {
            padding-top: var(--header-height);
            width: var(--aside-witch);
            top: 20px;
            overflow: auto;
        }

        .main-content {
            margin: var(--header-height) 0 0 var(--aside-witch);
        }

        .test {
            height: 10vh;
        }
    </style>
    </head>

    <body>
        <header class="main-header bg-dark d-flex fixed-top shadow justify-content-between align-items-center">
            <a href="" class="p-3 bg-black text-white text-decoration-none">
                tea
            </a>
            <div class="text-white me-3">
                Hi,adain
                <a href="" class="btn btn-dark">登入</a>
                <a href="" class="btn btn-dark">登出</a>
            </div>
        </header>
        <aside class="aside-left position-fixed bg-white border-end vh-100 ">
            <ul class="list-unstyled">
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-house-fill me-2"></i>首頁
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-cart4 me-2"></i></i>商品
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-cash me-2"></i>優惠券
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-flag me-2"></i>課程
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-clipboard2-data me-2"></i> 訂單
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-book me-2"></i> 文章管理
                    </a>
                </li>
                <li>
                    <a class="d-block p-2 px-3 text-decoration-none" href="">
                        <i class="bi bi-paypal me-2"></i> 付款方式
                    </a>
                </li>

            </ul>
        </aside>
        <main class="main-content p-3">
            <!---------------------------------------------這裡是內容 ------------------------------------->
            <!-- 活動列表 -->
            <div class="container mb-5" style="max-width:72vw; ">
                <div class="d-flex bd-highlight align-items-center ">
                    <h1 class="me-auto p-2 bd-highlight">活動管理</h1>
                    <form action="" method="GET" class="">
                        <div class="input-group">
                            <?php if(isset($_GET["search"])):?>
                                <div class="me-3">
                                <a class=" btn btn-primary " href="activity.php"><i class="fa-solid fa-arrow-left"></i> 回活動列表</a></div>
                            <?php endif;?>
                            <input type="text" class="form-control" placeholder="搜尋..." name="search" value="<?= $search ?>">
                            <button class="btn" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                            <?php if (isset($_GET["page"])) : ?>
                                <div>
                                    <div class="btn-group">
                                        <a href="?page=<?= $page ?>&order=1" class="btn btn=primary">
                                            <i class="fa-solid fa-arrow-up-short-wide"></i>
                                        </a>
                                        <a href="?page=<?= $page ?>&order=2" class="btn btn=primary">
                                            <i class="fa-solid fa-arrow-up-wide-short"></i>
                                        </a>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </form>
                </div>
                <div class="mb-3 d-flex justify-content-end">
                    <form action="" method="GET" mx-3>
                        <select class="form-select" aria-label="Default select example" id="categorySelect">
                            <option selected>課程類別</option>
                            <?php foreach ($rows as $category) : ?>
                                <option value=""><?= $category['category_name'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </form>
                    <div class="align-items-center justify-content-center">
                        <button class="btn" type="submit">送出</button>
                        <a class="btn btn-primary  bd-highlight mx-3" href="create-actity.php">新增活動</a>
                        <a class="btn btn-danger  bd-highlight" href="create-actity.php">已下架</a>
                    </div>
                </div>
                <?php foreach ($rows as $activity) : ?>
                    <div class="card mb-3 border border-dark " style="max-height:auto;">
                        <div class="row pe-5">
                            <div class="col-md-4">
                                <img src="../test/activity_images/<?= $activity["img"] ?>" class="img-fluid" alt="<?= $activity["img"] ?>">
                            </div>
                            <div class="col-md-8 mt-1">
                                <div class="card-body">
                                    <h3 class="card-title"><?= $activity["name"] ?></h3>
                                    <div class="d-flex">
                                        <h5 class="card-title me-5">開始日期:<?= $activity["time_s"] ?></h5>
                                        <h5 class="card-title">結束日期:<?= $activity["time_e"] ?></h5>
                                    </div>
                                    <div class="d-flex justify-content-start ">
                                        <p class="card-title me-5">活動分類:<?= $activity["category_name"] ?></p>
                                        <p class="card-title me-5">地點:<?= $activity["point"] ?></p>
                                        <p class="card-title me-5">費用:<?= $activity["price"] ?></p>
                                        <p class="card-title me-5">活動編號:<?= $activity["id"] ?></p>
                                    </div>
                                    <!-- 內容 -->
                                    <div class="mt-1">
                                        <p class="card-text overflow-hidden test">
                                            <?= $activity["content"] ?>
                                        </p>
                                    </div>    
                                       <div class="mt-5"> 
                                        <a class="btn btn-primary btn-sm" href="activity-edit.php?id=<?= $activity["id"] ?>">編輯</a>
                                        <a href="activity-delete.php?id=<?= $activity["id"] ?>" class="btn btn-danger btn-sm">確認下架</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <?php if (isset($_GET["page"])) : ?>
                    <div class="mt-5">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <?php for ($i = 1; $i <= $pageCount; $i++) : ?>
                                    <li class="page-item
                                <?php if ($i == $page) echo "active" ?>">
                                        <a class="page-link" href="?page=<?= $i ?>&order=<?= $order ?>"><?= $i ?></a>
                                    </li>
                                <?php endfor; ?>
                            </ul>
                        </nav>
                    </div>
                <?php endif; ?>
            </div>
        </main>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQ+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script>
        
    </script>
</body>

</html>