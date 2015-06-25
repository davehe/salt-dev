<?php

/**
 * Class Config
 */
class Config
{
    /**
     * @var array
     */
    private static $data = array();

    /**
     * @param $file
     * @return array
     * @throws \Exception
     */
    public static function parseFile($file)
    {
        $array = parse_ini_file($file, true);
        if (!is_array($array) || empty($array)) {
            throw new Exception('Invalid configuration format');
        }

        self::$data = $array;
    }

    /**
     * @param $uri
     * @param null $default
     * @return array|null
     * @throws Exception
     */
    public static function get($uri, $default = null)
    {
        if (array_key_exists($uri, self::$data)) {
            return self::$data[$uri];
        }

        $file = PATH_ROOT . 'config.ini';
        if (!file_exists($file)) {
            throw new Exception("invalid master config file");
        }

        self::parseFile($file);

        $node = self::$data;
        $paths = explode('.', $uri);
        while (!empty($paths)) {
            $path = array_shift($paths);
            if (!isset($node[$path])) {
                return $default;
            }

            $node = $node[$path];
        }

        return self::$data[$uri] = $node;
    }
}
