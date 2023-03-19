<?php

return [
  'db' => [
    'host' => 'db-backend',
    'user' => 'admin',
    'pass' => 'admin',
    'name' => 'tutorial_crud',
    'options' => [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]
  ]
];