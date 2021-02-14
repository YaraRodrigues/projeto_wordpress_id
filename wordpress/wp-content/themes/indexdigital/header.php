<!DOCTYPE html>
<html>
<head>
	<title>Teste Index Digital</title>
  	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
</head>
<body>
<div id="corpo_site">
	<div id="header">
	<br/><br/>
		<h1><?php bloginfo('name'); ?></h1>
		<h2><?php bloginfo('description'); ?></h2>
		
		<ul id="nav">
			<?php wp_list_cats('sort_column=name'); ?>
		</ul>
	</div>