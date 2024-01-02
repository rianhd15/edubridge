<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'db-edubridge.c90swo60sgca.ap-southeast-1.rds.amazonaws.com';
$CFG->dbname    = 'edubridge';
$CFG->dbuser    = 'edubridge';
$CFG->dbpass    = 'Infinite01';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => '',
  'dbsocket' => '',
  'dbcollation' => 'utf8mb4_0900_ai_ci',
);

$CFG->wwwroot   = 'https://elearning.edubridgeinfinite.my.id';
$CFG->dataroot  = '/var/www/html/moodledata';
//$CFG->sslproxy  = true;
//$CFG->dataroot  = '/var/www/data-moodle-s3';
$CFG->admin     = 'admin';
//$CFG->theme = 'boost';
$CFG->directorypermissions = 0777;
//$CFG->forced_plugin_settings['tool_httpsreplace'] = ["renames" => json_encode(["www.example.com" => "secure.example.com"])];

require_once(__DIR__ . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
