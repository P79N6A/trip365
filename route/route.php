<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');

Route::get('login', 'admin/Login/index');
Route::post('login', 'admin/Login/login');
Route::get('admin/index','admin/index/index');

Route::get('admin/dashboard','admin/index/dashboard');

//管理员相关
Route::get('admin/admins','admin/AdminUsers/index');
Route::get('admin/form','admin/AdminUsers/form');
Route::post('admin/add','admin/AdminUsers/add');
Route::post('admin/delete','admin/AdminUsers/del');
Route::get('admin/profile','admin/AdminUsers/profile');

Route::get('admin/getAdmins','admin/AdminUsers/getAdmins');
