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
			<a class="navbar-brand" href="<?php echo base_url(); ?>">WORKSHOP</a>
			<button class="navbar-toggler" 
				type="button" 
				data-toggle="collapse" 
				data-target="#navbarResponsive" 
				aria-controls="navbarResponsive" 
				aria-expanded="false" 
				aria-label="Toggle navigation">
		  		<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="<?php echo base_url()."index.php/blog/create"?>">New Post</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<?php echo base_url()."index.php/category/create"?>">New Categorey</a>
					</li>
					<?php if($this->session->userdata('logged_in') != 1) { ?>
					<li class="nav-item active">
						<a class="nav-link" href="<?php echo base_url()."index.php/login/index"?>">Login</a>
					</li>
					<?php } else { ?>
					<li class="nav-item">
						<a class="nav-link" href="<?php echo base_url(); ?>index.php/login/logout">[<?php echo $this->session->userdata('username'); ?>] Logout</a>
					</li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-8">
				<h3 class="my-4">New Blog</h3>
				<!-- Blog From -->
				<div class="card mb-4">
					<div class="card-body">
					<?php echo form_open_multipart('blog/edit/' . $post->id); ?>
						<div class="form-group">
							<label for="exampleInputEmail1">Title</label>
							<input type="text" name="title" class="form-control" value="<?php echo $post->title; ?>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">File Image</label>
							<input type="file" name="userfile" class="form-control">
							<br>
							<img src="<?php echo base_url(); ?>uploads/<?php echo $post->image; ?>" width="100%">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Short Description</label>
							<textarea name="summary" class="form-control" rows="4"><?php echo $post->summary; ?></textarea>
						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Detail</label>
							<textarea name="description" class="form-control" rows="6"><?php echo $post->description; ?></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
					
				</div>			
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
									<li><a href="#">Web Design</a></li>
									<li><a href="#">HTML</a></li>
									<li><a href="#">Freebies</a></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">JavaScript</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">Tutorials</a></li>
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
	</div>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
	  	</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<?php echo base_url('template/vendor/jquery/jquery.min.js'); ?>"></script>
	<script src="<?php echo base_url('template/vendor/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
</body>
</html>
