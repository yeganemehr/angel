<?php
error_reporting(E_ALL);
ini_set("display_errors", true);
include "header.php";
include "library/MysqliDb.php";
$db = new MysqliDb ('localhost', 'root', 'yeganemehr', 'angel');
?>
<section class="container" id="products">
	<header>
		<h2>محصولات</h2>
		<p>محبوب ترین و خلاقانه ترین محصولات ما را اینجا مشاهده کنید، اما بیاد داشته باشید که این تنها گوشه ای از طیف گسترده محصولات آنجل است که با استفاده از منوی بالا قادر به مشاهده همه آن ها هستید.</p>
	</header>
	<?php
	for ($y = 0; $y < 2; $y++) {
	?>
	<div class="row">
	<?php
		$products = $db->get("products", array($y * 3, 3));
		for ($x = 0; $x < 3; $x++) {
		?>
		<div class="col-lg-4">
			<div class="product">
				<img src="<?php echo $products[$x]['image']; ?>">
				<div class="cover">
					<p class="cover-header"><?php echo $products[$x]['title']; ?></p>
					<p><?php echo $products[$x]['description']; ?></p>
					<a class="btn btn-custom" href="/product-<?php echo $products[$x]['id']; ?>"><i class="fa fa-shopping-cart"></i> خرید</a>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
	<p class="text-center">
		<a class="btn btn-more" href="/products">بقیه محصولات</a>
	</p>
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

</body>
</html>