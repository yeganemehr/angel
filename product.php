<?php
include "init.php";
if (!isset($_GET['id'])) {
	include "404.php";
	exit();
}
// SELECT * from products where `id`=$_GET['id']
$db->where("id", $_GET['id']);
$product = $db->getOne("products");
if (empty($product)) {
	include "404.php";
	exit();
}
// UPDATE products SET `views` = `views` + 1 WHERE `id` = $product['id']

$db->where("id", $product['id']);
$db->update("products", array(
	'views' => $product['views'] + 1
));
include "header.php";
?>
<section class="container" id="product-details">
	<div class="product-right">
		<img class="product-image" src="<?php echo $product['image']; ?>">
		<a href="order.php?product=1" class="btn btn-success btn-block btn-shop"><i class="fa fa-shopping-cart"></i> خرید</a>

		<div class="stars text-center">
			<a href="like.php?product=1&stars=5" data-toggle="tooltip" data-placement="top" title="پنج امتیاز"><i class="fa fa-star-o"></i></a>
			<a href="like.php?product=1&stars=4" data-toggle="tooltip" data-placement="top" title="چهار امتیاز"><i class="fa fa-star-half-o"></i></a>
			<a href="like.php?product=1&stars=3" data-toggle="tooltip" data-placement="top" title="سه امتیاز"><i class="fa fa-star"></i></a>
			<a href="like.php?product=1&stars=2" data-toggle="tooltip" data-placement="top" title="دو امتیاز" ><i class="fa fa-star"></i></a>
			<a href="like.php?product=1&stars=1" data-toggle="tooltip" data-placement="top" title="یک امتیاز"><i class="fa fa-star"></i></a>
		</div>
	</div>
	<div class="details">
		<h1><?php echo $product['title']; ?></h1>
		<p><?php echo $product['text']; ?></p>
	</div>
	<div class="comments">
		<div class="row">
			<div class="col-lg-7 comments-list">
				<h2>نظرات مشتریان</h2>
				<?php
				// SQL: SELECT * FROM product_comments WHERE `product_id` = $product['id']
				$db->where("product_id", $product['id']);
				$comments = $db->get("products_comments");
				for ($x = 0; $x < count($comments); $x++) {
				?>
				<div class="row comment">
					<div class="col-xs-5">
						<div class="name"><?php echo $comments[$x]['name']; ?></div>
						<div class="date">در تاریخ <?php echo jdate("d F Y", $comments[$x]['sent_at']); ?></div>
						<?php
						if ($comments[$x]['approval'] == 1) {
						?>
						<div class="alert alert-info"><i class="fa fa-thumbs-o-up"></i> خرید این محصول را توصیه می‌کنم</div>
						<?php } else { ?>
						<div class="alert alert-danger"><i class="fa fa-thumbs-o-down"></i> خرید این محصول را توصیه نمیکنم</div>
						<?php } ?>
					</div>
					<div class="col-xs-7">
						<?php echo $comments[$x]['text']; ?>
					</div>
				</div>
				<?php } ?>
			</div>
			<div class="col-lg-5">
				<form action="product-comment.php" class="comment-form" method="post">
					<input type="hidden" name="product" value="1">
					<div class="form-group">
						<label>نام:</label>
						<input type="text" name="name" class="form-control">
					</div>
					<div class="form-group">
						<label>پیشنهاد به سایرین:</label>
						<select name="approval" class="form-control">
							<option value="1">خرید این محصول را پیشنهاد میکنم.</option>
							<option value="-1">خرید این محصول را پیشنهاد نمیکنم.</option>
						</select>
					</div>
					<div class="form-group">
						<label>متن نظر:</label>
						<textarea name="text" class="form-control"></textarea>
					</div>
					<p class="text-center">
						<button type="submit" class="btn btn-lg btn-custom"><i class="fa fa-paper-plane-o"></i> ارسال</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</section>

<footer id="footer">
	<div class="container">
		<p class="copyright">تمامی حقوق این وب سایت به مالک گالری آنجل متعلق می باشد؛ <br> حق پیگیری قضائی بابت هر گونه کپی برداری از طرح ها و محصولات را برای ایشان محفوظ است.</p>
		<ul>
			<li><a href="/insta"><i class="fa fa-instagram"></i></a></li>
			<li><a href="/telegram"><i class="fa fa-paper-plane"></i></a></li>
		</ul>
	</div>
</footer>

	<script>
		$(function () {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
</body>
</html>