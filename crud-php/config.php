<?php
#update archivos 
return [
  'db' => [
    'host' => 'db-backend',
    'user' => 'root',
    'pass' => 'admin',
    'name' => 'tutorial_crud',
    'options' => [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]
  ]
];