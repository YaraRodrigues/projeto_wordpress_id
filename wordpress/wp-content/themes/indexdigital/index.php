<?php get_header(); ?>

<?php 
if ( have_posts() ) : 
	while ( have_posts() ) : 
		the_post(); ?>
		<div>
			<h2><?php the_title(); ?></h2>
			<p><?php the_content(); ?></p>
		</div>			
	<?php endwhile?>
<?php else: ?>
	<h2>Nada Encontrado</h2>
	<p>Erro 404</p>
	<p>Lamentamos mas não foram encontrados artigos.</p>		
<?php endif; ?>
			
<?php get_footer(); ?>