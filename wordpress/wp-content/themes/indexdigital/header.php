<!DOCTYPE html>
<html>
	
<head>
	<title>Tema Index Digital</title>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
	<link rel="stylesheet" href="<?php echo bloginfo('stylesheet_directory') . '/css/main_style.css'; ?>">	
	<?php wp_head(); ?>
</head>
<body>
<div id="pagina" class="pagina">
	<header class="conteudo cabecalho padding-total">
		<div class="clearfix">
			<div class="colunas principal">
				<div class="conteudo-coluna margem-total">
					<h1> 
						<?php bloginfo('name'); ?> 
						<?php //bloginfo('description'); ?> 
					</h1>
				</div>
			</div>
			
			<div class="colunas lateral">
				<div class="conteudo-coluna margem-total">
					<?php get_search_form(); ?>
				</div>
			</div>
		</div>
	</header>