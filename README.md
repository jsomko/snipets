// snipets
// php

<?php foreach ($items as $itm):?>
//
<?php endforeach;?>

<?php
// select
$q = DB::select('id','maktx_ru','ean11','url')
	->from('furshet_tovars')
	->where('id', 'IN', count($ids) ? $ids : array(-1) )
	->execute()
	->as_array('id',null)
	;

// update
$arr = array(
	'ping' =>time(),
	'ip'   =>$ip,
	);

$q = DB::update('lamp_units')
	->set($arr)
	->where('furshet_orders.id', '=', $order->id )
	->execute(LCDD);
	

$insert = DB::insert('lamp_units',array(
		#------------
		'id',
		'key_hash',
		'created',
		'one-time-pass-expr',

	))->values(array(
		#------------
		$lamp_id,
		$key1,
		time(),
		time(),
	))->execute();
?>			
$periods = arr::extract(Kohana::$config->load('constants.times'), array(1,2));
			
		join c перекрывающимися idate

		$rq = DB::select(array('t.id', 'order_id'),'t.modified', 't.fact_cost','t.fact_time_1h','t.fact_time_1m','t.fact_time_2h','t.fact_time_2m', array('u.phone', 'user_phone'), array('u.phone', 'user_phone'), array('u.phone', 'user_phone'))
			->from(array('furshet_orders', 't'))
			->join(array(DBDF.'.users', 'u'))->on('t.user_id', '=', 'u.id')
			->where('fact_sms_sended', '=', 0 )
			->where('status', '=', 6 )
			->where('modified', '>', strtotime('-7 days') )
			->execute(LCDD)->as_array();			
			

			
			дропнуть все таблицы

SET FOREIGN_KEY_CHECKS = 0;
SET GROUP_CONCAT_MAX_LEN=32768;
SET @tables = NULL;
SELECT GROUP_CONCAT('`', table_name, '`') INTO @tables
  FROM information_schema.tables
  WHERE table_schema = (SELECT DATABASE());
SELECT IFNULL(@tables,'dummy') INTO @tables;

SET @tables = CONCAT('DROP TABLE IF EXISTS ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET FOREIGN_KEY_CHECKS = 1;



http://habrahabr.ru/post/208570/
кохана-соль, интересное подключение в хаблон скриптов
#! подлючение lightbox
$tpl->add_JS(theme::js().'jquery.easing.1.3.js');
$tpl->add_JS(theme::js().'jquery.fancybox.pack.js');
$tpl->add_CSS(theme::css().'jquery.fancybox.css');

md5(time().Request::$client_ip) - хеш генерилка

// не уходят файлы в форме - проверь муьтипарт

// хелпер коханы по урлам
url::redirect ('error/erro403');


подгрузка полей сприг - связаные таблицы
//if (!$comment->user->loaded()){ $comment->user->load() };
$comments = $comment->load($db->offset($pagination->offset), $pagination->items_per_page, array('user'));
- последний масив джойнится


залить большую базу
mysql -u root db_name < c:\file-name.sql
mysql -u root furshet_kiev < f:\eff.sql
mysql -u root furshet_odessa < f:\efe.sql
mysql -u root furshet < f:\eff.sql


mysql --user=siteadmin --password=SvoeRadio2014 svoeradio < /home/radioadmin/n.sql

Пути к файлу
//$f = $game->verbose('game_file');
//$f = $game->field('game_file')->file($game->game_file);


печатает все
//print_r($o);
//die  (	print_r($value)	);
die(var_dump('<pre>', $fdata, '</pre>'));
error_log(print_r($value, true).PHP_EOL, 3, '/tmp/belky.log');


//=============== печатает в низ
			register_shutdown_function(function() use ($uri, $params){
				var_dump($uri, $params);
			});

для jquery
	//console.log(data.img);		

субмит из явы
	//Document.Forms["search"].Submit;

запрос в базу масивом
//$db->where('tovars.category_id', 'IN', count($ids) ? $ids : array(-1));

// запрос FIND_IN_SET  (найден в денвере)
$sql_query .=
                " WHERE FIND_IN_SET('" . $result['identifier'] . "',tracking) > 0" .
                " AND `db_name` = '" . PMA_sqlAddSlashes($dbname) . "' " .
                " AND `table_name` = '" . PMA_sqlAddSlashes($result['tablename']) . "' " .
                " AND `version` = '" . PMA_sqlAddSlashes($version) . "' ";
 

//так можно посчитать к-во
$count = $sales->count(clone $db);		



// даты, время
mktime(0, 0, 0, date("m")-1, date("d"),   date("Y")); --генерит дату месяц-1

		
// так записать в файл
	file_put_contents('text.txt',  $message ."\n", FILE_APPEND);	
		
		
		
			switch ($_POST['children'])
			{	
				case 0: 
					break; 
				case 1: 
					$m = $m.'Дети'						.'</br>'.'Один'.'</br>';
					break; 
				case 2: 
					$m = $m.'Дети'						.'</br>'.'Два'.'</br>';
					break; 
				case 3: 
					$m = $m.'Дети'						.'</br>'.'Больше...'.'</br>';
					break; 

				}
				
				
				
				$this->response->body('hello, world!');
				
				
 
//в первом файле
...
$zdorov =($k*$wel)/100;
echo '<a href="file2.php?result=' . $zdorov .'">посмотреть результат на другой странице</a>';
//мы к ссыле прекрепили переменную с именем result  и значением $zdorov
 

 
//file 2
if (isset($_GET['result']))
 echo 'результат равен ' . $_GET['result'];
else
 echo 'результат неизвестен';
// проверяем была ли прикреплена переменная , если да то выводим ее
 


	<?php if ($look->id !== NULL): ?>
		<?php $field = $look->field('modified'); ?>
		<div class="line <?=text::alternate('odd', 'even')?>">
			<div class="name"><?=$field->label($field->column)?></div>
			<div class="value">
				<?php if ($look->modified): ?>
					<?=date('Y-m-d H:i:s', $look->modified);?>
				<?php else: ?>
					N\A
				<?php endif; ?>
			</div>
		</div>

		<?php $field = $look->field('user'); ?>
		<div class="line <?=text::alternate('odd', 'even')?>">
			<div class="name"><?=$field->label($field->column)?></div>
			<div class="value">
				<?php if ($look->user->id !== NULL): ?>
					<?=$look->user->load()->name()?>
				<?php else: ?>
					N\A
				<?php endif; ?>
			</div>
		</div>
	<?php endif; ?>




Можно и без кучи if-ов и без goto ;)

int foo()
{
  FILE f = NULL;
  int result = ;
  f = fopen("somefile.txt", "r");
 
  do {
    if ( ! f ) {
      perror("fopen");
      break;
    }
 
    if ( rand() > 5 ) {
      result = 1;
      break;
    }
 
    if ( rand() > 10 ) {
      result = 2;
      break;
    }
 
    result = 3
 
  } while (false);
 
  if (f)
    fclose(f);
 
  return result;
}

		$db = DB::select()
			->where	('games.visible', '=', TRUE)
			->where	('games.id', '!=', $game->id)	
			->join	('games_categories')->on('games_categories.game_id', '=', 'games.id' )
			->where	('games_categories.category_id', '=', $cat_id->id )	
			;


//jqury this->
$(function(){
            $('#menu a').click(function() {
                $.mobile.changePage($(this).attr('href'), {
                    pageContainer: $("#content-primary")
                } );
            });
        });


js - хитрый вызов для подвложеных генерируемых элеметров по классу
//
//  ONLY 4 DEV
//
    // DEV #! вызов функции - ВЫБОР СТАНЦИИ
    // вызов не прост, потому что имеено такой комбинацией селекторов можно взять динамически генерируемый контент
    // чуствительно к версии jquery
    // 
    $('#radio-button-warper').on('click', '.playbutton', function() {
        // забираем данные текущей станции в глобал.вар
        cur_stream_url   = $(this).attr("data-id");
        cur_stream_title = $(this).attr("data-title");
        cur_stream_id    = $(this).attr("id");

        // сохранение опций в ЛС
        saveLastOpinion();

        //#! клик по селектору меняет текущую станцию
        html5audio.stop();

        myaudio = new Audio(cur_stream_url);
        html5audio.play();

        // подгружаем медиа-инфо по текущей станции сразу
        getTrackInf(cur_stream_id);

        // Обновляем морду интерфейсу
        updInterface();

    });


sql подсчет вхождений и сумма
		$count = DB::select(array(DB::expr('COUNT("id")'), 'count'))
			->from('votes')
			->where('fitkit_id', '=', $this->id)
			->as_object()
			->execute()
			->current()
			->count;
			;

		$result = DB::select(array('SUM("mark")', 'rate'))
				->from('votes')
				->where('fitkit_id', '=', $this->id)
				->execute()
				->current();
			;
пути для поключения js для админки

	<script src="<?=theme::pub_js()?>highcharts.js" type="text/javascript"></script>
	<script src="<?=theme::pub_js()?>modules/exporting.js" type="text/javascript"></script>
	
	
$user = Sprig::factory('User')->load(DB::select()->where('id', '=', $user_id), 1);
$adr->user = $user;


die();

$width = 1200;
$height = 1200;
$angle = 0;
$r = 100; $g = 100; $b = 100;
$alpha = 50;
$text = 'eFurhet.com';
$text = "   ".$text."   ";

$font='PT_Sans.ttf';

$img = imagecreatetruecolor ($height, $width);

$c = imagecolorallocatealpha($img, $r, $g, $b, $alpha);

$size = (($width+$height)/2)*2/strlen($text);
$box  = imagettfbbox ( $size, $angle, $font, $text );
$x = $width/2 - abs($box[4] - $box[0])/2;
$y = $height/2 + abs($box[5] - $box[1])/2;
$rrr = imagettftext($img, $size, $angle, $x, $y, $c, $font, $text);
var_dump($rrr);

imagejpeg ( $img,'123z.jpg',100 );
