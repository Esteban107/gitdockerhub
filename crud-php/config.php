<?php

return [
  'db' => [
    'host' => 'db-backend',
    'user' => 'root',
    'pass' => 'root',
    'name' => 'tutorial_crud',
    'options' => [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]
  ]
];