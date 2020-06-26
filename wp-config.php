<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'flowers' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&kASCB;X$`?ap;)DK8=L6KY_:mo@d8FZi45wG{;2]j)%qg}!32nf_}!A)amAG5ck' );
define( 'SECURE_AUTH_KEY',  'I$rk9p?iLn9%Fu6zzY!?^@Zw>mwoU+rW+@/8I3p<Ag)Yfyw}y++AIdhgPU+U%ZBE' );
define( 'LOGGED_IN_KEY',    'N2YcL4I&Gev>FV:ES-xG[$IwTGs.7UhWAO)d0)2kM|i{_[-]P~`;K9e[NCVVyf=D' );
define( 'NONCE_KEY',        ':(bgcfh0)c:-v@@rj%W(hNP<X,$nSwYKosXh_Dnn<}J*Tf*f`5Nd9.->1Z3N&^he' );
define( 'AUTH_SALT',        'SIWhZLb7g^5S)QS1uxY&H{PWcL%si{[!9a%)hBegDu*~f7ENJyzLfphlw&.lVCtV' );
define( 'SECURE_AUTH_SALT', 'W+<o`C&i)+U}4y&OxR|U+}Ov$a.X[ZP;{eA|!LXp/vX.9^8W{2}6{_`yZgQkT$!y' );
define( 'LOGGED_IN_SALT',   'F,=8z~Co`OULCBY0W8ymtN$;EJY1$,f2m(Zc{S^c|C/!g$UA3x!ms.6CV(FC*;W{' );
define( 'NONCE_SALT',       '>r`8fe_sZUQ+O$? cNLTEu-Y)FCJa2ZMjri^C Vt)|65pA:t4os[|$;og(<xwAmB' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
