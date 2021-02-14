
<?php get_header(); ?>

<main class="conteudo padding-esquerda-direita">
	<div class="clearfix">
		<div class="colunas largura-total">
			<?php get_template_part('loop', 'single'); ?>			
		</div>
	</div>
</main>
<?php get_footer(); ?>