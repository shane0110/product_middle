<?php


require_once("tea_activity.php");
$sql="SELECT * FROM activity_category";
$result = $conn->query($sql);
$rows = $result->fetch_all(MYSQLI_ASSOC);

?>


<!doctype html>
<html lang="en">

<head>
    <title>create-actity</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
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
        height: 60px;
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
        <div class="container mt-3" style="max-width:72vw;">
            <a class="btn btn-primary " href="activity.php"><i class="fa-solid fa-arrow-left"></i> 回活動列表</a>
            <h1 class="mb-4 mt-4">新增活動</h1>
            <!-- 新增活動表單 ------------------------------------>
            <!-- 新增活動 --------------------->
            <div class="card mb-4">
                <div class="card-body">
                    <form action="create.php" method="post">
                        <div class="mb-3">
                            <label for="eventName" class="form-label">活動名稱</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="eventName" class="form-label">類別</label>
                            <select class="form-select" aria-label="Default select example" name="category">
                                <?php foreach($rows as $row): ?>
                                <option value="<?=$row["id"] ?>"><?= $row["name"]?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="eventDate" class="form-label">開始日期</label>
                            <input type="date" class="form-control" id="time_s" name="time_s">
                        </div>
                        <div class="mb-3">
                            <label for="eventDate" class="form-label">結束日期</label>
                            <input type="date" class="form-control" id="time_e" name="time_e">
                        </div>
                        <div class="mb-3">
                            <label for="eventLocation" class="form-label">地點</label>
                            <input type="text" class="form-control" id="point" name="point">
                        </div>
                        <div class="mb-3">
                            <label for="eventContent" class="form-label">內容</label>
                            <textarea class="form-control" id="content" name="content"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="eventLocation" class="form-label">價格</label>
                            <input type="text" class="form-control" id="price" name="price">
                        </div>
                        <div class="mb-3">
                            <label for="eventPhoto" class="form-label">照片</label>
                            <input type="file" class="form-control" id="img" name="img">
                        </div>
                        <button type="submit" class="btn btn-success">新增</button>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>