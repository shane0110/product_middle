<?php

require_once("../test/tea_activity.php");



$id = $_GET["id"];
//var_dump($id);
$sql = "SELECT activity.*, ac.name AS category_name, acr.category_id FROM activity_category_relation acr 
JOIN activity_category ac ON acr.category_id = ac.id
JOIN activity ON acr.activity_id = activity.id
WHERE activity.valid=1 AND activity.id = $id ";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

//這邊設定valid=1 可以方便去後台設定為0變成一種軟刪除。不用直接刪除
//echo $sql;
//用於測試的狀態
// 這是類別
$sqlAc = "SELECT * FROM activity_category";
$resultAc = $conn->query($sqlAc);
$rowAc = $resultAc->fetch_all(MYSQLI_ASSOC);


//var_dump($row);

if ($result->num_rows > 0) {
    $userExit = true;
    //這邊用於確定有沒有id 有的話就會跑true 沒有的話就會跑false
} else {
    $userExit = false;
    $title = "使用者不存在";
}



?>


<!doctype html>
<html lang="en">

<head>
    <title>activity-edit</title>
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
        <!---------------------------------------------這裡是內容 ------------------------------------->
        <!-- 修改活動 -------------------------------------->
        <div class="container mt-3" style="max-width:72vw;">
            <a class="btn btn-primary " href="activity.php"><i class="fa-solid fa-arrow-left"></i> 回活動列表</a>
            <h1 class="mb-4 mt-4">修改活動</h1>
            <div class="card">
                <div class="card-body">
                    <?php if ($userExit) : ?>
                        <form action="doUpdateActivity.php" method="post" id="editEventForm">
                            <input type="hidden" name="id" value="<?= $row["id"] ?>">
                            <div class="mb-3">
                                <label for="editEventName" class="form-label">活動名稱</label>
                                <input type="text" class="form-control" id="name" name="name" value="<?= $row["name"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="eventName" class="form-label">類別</label>
                                <select class="form-select" aria-label="Default select example" name="category">
                                    <?php foreach ($rowAc as $rows) : ?>
                                        <option value="<?= $rows["id"] ?>" <?php if($rows["id"]==$row["category_id"]) echo "selected"?>><?= $rows["name"] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="editEventDate" class="form-label">開始日期</label>
                                <input type="date" class="form-control" id="time_s" name="time_s" value="<?= $row["time_s"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="editEventDate" class="form-label">結束日期</label>
                                <input type="date" class="form-control" id="time_e" name="time_e" value="<?= $row["time_e"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="editEventLocation" class="form-label">地點</label>
                                <input type="text" class="form-control" id="point" name="point" value="<?= $row["point"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="editEventContent" class="form-label">內容</label>
                                <textarea class="form-control" id="content" name="content"><?= $row["content"] ?></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="editEventLocation" class="form-label">價格</label>
                                <input type="text" class="form-control" id="price" name="price" value="<?= $row["price"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="editEventPhoto" class="form-label">照片</label>
                                <input type="file" class="form-control" id="img" name="img" value="<?= $row["img"] ?>">
                                <img id="editEventPhotoPreview" src="" alt="活動照片" class="mt-3" width="100">
                            </div>
                            <button type="submit" class="btn btn-primary">保存修改</button>
                            <a href="index.html" class="btn btn-secondary">返回</a>
                        </form>
                    <?php else : ?>
                        <h1>使用者不存在</h1>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </main>
</body>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>