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
* @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
*
* @package WordPress
*/

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wordpress');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'wordpress');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '1234');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

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
define('AUTH_KEY',         ';i%xtiy$CyfC|kyIc4zTa@Trt^y^0`p:[A0Sfzo=hlY,H|WOg9}](B(luGBcAz$^');
define('SECURE_AUTH_KEY',  '>k2|OCCA|0+cj}?_WQuZKH^|/*!t^~c3[p)tnohup~y&mM8~sAWtl, gJM`%d~n2');
define('LOGGED_IN_KEY',    'j}|HUB_v4nR %Q9D@&q<#$M-!|UFDb-H5bM:N}rgI3_y>t3rmQPI^Xwzk|!BMke4');
define('NONCE_KEY',        '+(S%$UZHH)5xwHXpP$ZHwIl-LMFf?aL:B%?!:OaVn|:VAfl-+oUyXU!AQ1oUp]M=');
define('AUTH_SALT',        '+{,3v~5^rax:/hz4/dk(T0XG%q;p=8!3bwjpm|PnAKkHk~VLEp3#EhJHld^I{9>B');
define('SECURE_AUTH_SALT', 'Ne(}]H:[D@|T;5*X`?z2yma?kGXm{`Fn(#JlG,0]^ImtS)@^ZKG@^1myX-cnGM}a');
define('LOGGED_IN_SALT',   '/lNUN):k|W?6q{:%N8Xn(*{)P-2)Yb2ka(RbR7ySf|W|iy-&0`hmjEo#m(Nd2%6@');
define('NONCE_SALT',       '9V;ysipG]8g:e~7b6QV?OB@75Sh-&/XKb?(bUbIYJ7BJ9U&g%vt|5(0etHw~W;Tn');

/**#@-*/

/**
* Prefixo da tabela do banco de dados do WordPress.
*
* Você pode ter várias instalações em um único banco de dados se você der
* um prefixo único para cada um. Somente números, letras e sublinhados!
*/
$table_prefix  = 'wp_';

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
* @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
*/
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
   define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
