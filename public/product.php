<?php if (!isset($_GET['act'])) { ?>
    <section class="space--sm">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Semua Produk</h2>
                    <div class="masonry">
                        <div class="masonry-filter-container row justify-content-center align-items-center">
                            <span>Category:</span>
                            <div class="masonry-filter-holder">
                                <div class="masonry__filters" data-filter-all-text="All Categories"></div>
                            </div>
                        </div>

                        <div class="masonry__container row">
                            <div class="masonry__item col-md-6 col-lg-3"></div>
                            <?php
                            $getProduk = mysqli_query($conn, "SELECT * FROM product ORDER BY update_at DESC");
                            while ($r = mysqli_fetch_array($getProduk)) {
                            ?>
                                <div class="masonry__item col-md-6 col-lg-3" data-masonry-filter="<?= productCategory($r['product_category']) ?>">
                                    <div class="product">
                                        <a href="#">
                                            <img alt="Image" src="../app/img/product/<?= $r['product_img'] ?>" />
                                        </a>
                                        <a class="block" href="#">
                                            <div>
                                                <h5 style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                                    <?= $r['product_name'] ?></h5>
                                                <p style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
                                                    <?= $r['product_desc'] ?>
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!--end item-->
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Produk Terpopuler</h2>
                    <div class="slider" data-arrows="false" data-paging="true">
                        <ul class="slides">
                            <?php
                            $getPopProd = mysqli_query($conn, "SELECT * FROM product ORDER BY product_seen DESC LIMIT 6");
                            while ($row = mysqli_fetch_array($getPopProd)) {
                            ?>

                                <li class="col-md-4 col-12">
                                    <div class="feature feature-3 boxed boxed--lg boxed--border text-center">
                                        <a href="#">
                                            <img alt="Image" src="../app/img/product/<?= $row['product_img'] ?>" />
                                        </a>
                                        <h4><?= $row['product_name'] ?></h4>
                                        <p>
                                            <?= $row['product_desc'] ?>
                                        </p>

                                    </div>
                                    <!--end feature-->
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <!--end of row-->
                </div>
            </div>
            <!--end of row-->
        </div>
        <!--end of container-->
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Baru Ditambahkan</h2>
                    <div class="slider" data-arrows="false" data-paging="true">
                        <ul class="slides">
                            <?php
                            $getNewProd = mysqli_query($conn, "SELECT * FROM product ORDER BY update_at DESC LIMIT 6");
                            while ($row = mysqli_fetch_array($getNewProd)) {
                            ?>

                                <li class="col-md-4 col-12">
                                    <div class="feature feature-3 boxed boxed--lg boxed--border text-center">
                                        <a href="#">
                                            <img alt="Image" src="../app/img/product/<?= $row['product_img'] ?>" />
                                        </a>
                                        <h4><?= $row['product_name'] ?></h4>
                                        <p>
                                            <?= $row['product_desc'] ?>
                                        </p>

                                    </div>
                                    <!--end feature-->
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <!--end of row-->
                </div>
            </div>
            <!--end of row-->
        </div>
        <!--end of container-->
    </section>
<?php
} elseif ($_GET['act'] == 'detail') {
?>

    <a href="https://wa.me/6282274839576">wa.me</a>

<?php
} ?>