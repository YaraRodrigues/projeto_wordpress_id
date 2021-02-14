
<?php if ( have_posts() ) : 
	while ( have_posts() ) : the_post(); ?>
			<div style='float:left' class='largura-total'>
				<h1>
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
				</h1>				
				<p><?php the_category(); ?></p>
				<p><?php the_content(); ?></p>
				<h3><a href="<?php the_permalink() ?>">Ver Mais</a></h3>
			</div>	


		<?php comments_template(); ?>
		
	
<?php endwhile; ?>
<?php endif; // Loop ?>
