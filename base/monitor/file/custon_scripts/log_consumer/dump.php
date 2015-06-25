#!/data1/env/php-fpm/bin/php
<?php
error_reporting(0);
ini_set('display_errors', 'on');
ini_set('limit_memory', '512M');
ini_set('opcache.enable', false);
date_default_timezone_set('Asia/Shanghai');

define('PATH_ROOT', realpath(__DIR__) . DIRECTORY_SEPARATOR);
require_once(PATH_ROOT . 'consumer.php');
require_once(PATH_ROOT . 'config.php');

$config = Config::get('amqp');
$consumer = new Consumer($config);
$levels = ['debug', 'warning', 'error', 'critical'];

for(;;) {
    $json = $consumer->get();
    if (empty($json)) {
        continue;
    }
    $res = [];
    $array = json_decode($json, true);
    $topic = $array['sTopic'];
    $domain = $array['sDomain'];
    $url = $array['sRequestUrl'];
    foreach ($array['aEntries'] as $entry) {
        $level = $entry['sLevel'];
        if (!in_array($level, $levels)) continue;
        $res = compact('domain', 'topic', 'level');
        echo $domain . ":" . $topic . ":" . $level . "\n" ;
        //echo json_encode($res) . PHP_EOL;
    }
}
