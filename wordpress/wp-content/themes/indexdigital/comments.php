
<div id="comments" class="comments-area">

<?php if ( have_comments() ) : ?>

	<h4 class="comments-title">Comentários</h4>

	<ol class="comment-list">
		<?php
			wp_list_comments( array(
				'style'      => 'ol',
				'short_ping' => true,
				'avatar_size'=> 34,
			) );
		?>
	</ol>

	<?php if ( ! comments_open() ) : ?>
	<p class="no-comments">Os comentários estão fechados.</p>
	<?php endif; ?>


<?php else : ?>
	<p class="no-comments">Ainda não há comentarios nessa postagem.</p>
<?php endif ?>
<?php comment_form(); ?>

</div>