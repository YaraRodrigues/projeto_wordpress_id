<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'wordpress_indexdigital' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '[n~)*zKC<+Ly^Olv,Do1AQw)+vd0C O#<}ZRl&m9J<^^Ad8{1fs-Tyiftg]Oc9Cc' );
define( 'SECURE_AUTH_KEY',  'n0Ozk&U;kiBiLdz*,-*;n>HyZhr1;X<6%~(CE&CAnOVV,mWfl#gH,R|h~>Y&2D|T' );
define( 'LOGGED_IN_KEY',    '#WRo-VBA_]ojn3.H~;gjj,9@b<`M}vJ5q&9$A o{5E?.pHqhxdFT4?hFVu1~i91N' );
define( 'NONCE_KEY',        '#}SXHXrd0|lkNt43jD(pl{&o??fv}{KouTprAj5;X-pUp>Odpy?[{vD.@X=_{I6s' );
define( 'AUTH_SALT',        'D89J(g0+>vJD!i,fLv(&z:-1e}lbZ%*WmwZhP6_)ew,{Z>>OCk$(!w2%WxSYgMop' );
define( 'SECURE_AUTH_SALT', ')PEv!BP2,#giA~;9*XNi.J$<)aJ5<NSOuWnUSVt{I<?Bc<EwJ7sF|/]7!X:fbwyc' );
define( 'LOGGED_IN_SALT',   'u#02`r,A_sr0b)elx+?xcQKizKHjP5K)H{Pu@R;g#v9d#}rY$8[W<IS.Fa5El9/0' );
define( 'NONCE_SALT',       'wjC9E<S)ov{edk-R?2v<s@6! I.CO3LR4IcD?t8PSwxJ[) /t]P=xI<9L=8y%SYU' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'index_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
