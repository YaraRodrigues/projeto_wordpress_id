
<?php if ( have_posts() ) : 
	while ( have_posts() ) : the_post(); ?>
		<div style='float:left; margin-bottom:100px' class='largura-total'>
			<h1><?php the_title(); ?></h1>				
			<h3><?php the_content(); ?></h3>
		</div>	
	
	<div class='comments'>
		<?php comments_template(); ?>
	</div>	
	<?php endwhile; ?>
<?php endif; // Loop ?>
