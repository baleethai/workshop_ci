<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Blog Home - Start Bootstrap Template</title>

		<!-- Bootstrap core CSS -->
		<link href="<?php echo base_url(); ?>template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="<?php echo base_url(); ?>template/css/blog-home.css" rel="stylesheet">

  </head>

  <body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<?php echo base_url(); ?>">Workshop Blog</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		  	<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
		  	<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
			  		<a class="nav-link" href="<?php echo base_url()."index.php/post/create"?>">New Post</a>
				</li>
		  	</ul>
		</div>
	  </div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
		  		<h1 class="my-4">Blog</h1>
				<?php foreach($posts as $post) { ?>
				<div class="card mb-4">
					<img class="card-img-top" src="<?php echo base_url() . 'uploads/' . $post->image; ?>" height="350">
					<div class="card-body">
					<h2 class="card-title"><?php echo $post->title; ?></h2>
					<p class="card-text"><?php echo $post->summary; ?></p>
					<a href="<?php echo base_url()."index.php/post/detail/" . $post->id; ?>" class="btn btn-primary">Read More &rarr;</a>
					</div>
					<div class="card-footer text-muted">
					Posted on <?php echo date("F d, Y",strtotime($post->created)); ?> by <a href="#">Workshop Blog</a>

                    <span class="float-righ">
                    <a href="<?php echo base_url();?>index.php/post/edit/<?php echo $post->id;?>" class="float-right">Edit</a>
                     
                    <a href="<?php echo base_url();?>index.php/post/edit/<?php echo $post->id;?>" class="float-right">Delete</a>
                    </span>
                    </div>
				</div>
				<?php } ?>
		</div>

		<!-- Sidebar Widgets Column -->
		<div class="col-md-4">

		  

		  <!-- Categories Widget -->
		  <div class="card my-4">
			<h5 class="card-header">Categories</h5>
			<div class="card-body">
			  <div class="row">
				<div class="col-lg-6">
				  <ul class="list-unstyled mb-0">
					<li>
					  <a href="#">Web Design</a>
					</li>
					<li>
					  <a href="#">HTML</a>
					</li>
					<li>
					  <a href="#">Freebies</a>
					</li>
				  </ul>
				</div>
				<div class="col-lg-6">
				  <ul class="list-unstyled mb-0">
					<li>
					  <a href="#">JavaScript</a>
					</li>
					<li>
					  <a href="#">CSS</a>
					</li>
					<li>
					  <a href="#">Tutorials</a>
					</li>
				  </ul>
				</div>
			  </div>
			</div>
		  </div>

		  <!-- Side Widget -->
		  <div class="card my-4">
			<h5 class="card-header">ราคา น้ำมัน</h5>
			<div class="card-body">
			  You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
			</div>
		  </div>

		</div>

	  </div>
	  <!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
	  <div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
	  </div>
	  <!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<?php echo base_url('template/vendor/jquery/jquery.min.js'); ?>"></script>
	<script src="<?php echo base_url('template/vendor/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>

  </body>

</html>
