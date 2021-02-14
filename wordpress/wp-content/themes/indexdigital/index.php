<?php get_header(); ?>

<div id="conteudo">
	<?php 
	if ( have_posts() ) : 
		while ( have_posts() ) : 
			the_post(); ?>
			<div class="post">
				<h1><?php the_title(); ?></h1>
				<p><?php the_content(); ?></p>
				<h3><a href="<?php the_permalink() ?>">Ver Mais</a></h3>
			</div>			
		<?php endwhile?>
	<?php else: ?>
		
		<h1>Nada Encontrado</h1>
		<p>Lista de posts vazia.</p>
			
	<?php endif; ?>
	
</div>
<?php get_footer(); ?>