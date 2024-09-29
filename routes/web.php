<?php

use App\Http\Controllers\backend\BannerController;
use App\Http\Controllers\backend\CategoryController;
use App\Http\Controllers\backend\DashboardController;
use App\Http\Controllers\backend\DepartmentCOntroller;
use App\Http\Controllers\backend\GroupController;
use App\Http\Controllers\backend\LeaderController;
use App\Http\Controllers\backend\MediaController;
use App\Http\Controllers\backend\MemberController;
use App\Http\Controllers\backend\NoticeController;
use App\Http\Controllers\backend\OfferController;
use App\Http\Controllers\backend\PackageController;
use App\Http\Controllers\backend\ProfileController;
use App\Http\Controllers\backend\PromoCodeController;
use App\Http\Controllers\backend\ReceiptController;
use App\Http\Controllers\backend\SectionController;
use App\Http\Controllers\backend\StudentClassController;
use App\Http\Controllers\backend\StudentCOntroller;
use App\Http\Controllers\backend\SubLeaderController;
use App\Http\Controllers\backend\TestController;
use App\Http\Controllers\backend\WebSettingsController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\DoctorController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\frontend\AuthController;
use App\Http\Controllers\frontend\HomepageController;
use App\Http\Controllers\frontend\ProductController as FrontendProductController;
use App\Http\Controllers\frontend\PostController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Zone\DistrictController;
use App\Http\Controllers\Zone\DivisionController;
use App\Http\Controllers\Zone\ThanaController;
use App\Http\Controllers\Zone\ZoneController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


//Frontend Start
Route::get('/', [HomepageController::class, 'home'])->name('home');
Route::get('/fetch-posts', [HomepageController::class, 'fetchPosts']);
Route::get('/post/{slug}', [HomepageController::class, 'post_details'])->name('post_details');
Route::post('/post/like/{id}', [PostController::class, 'toggleLike'])->name('toggle-like');
Route::post('/comments', [PostController::class, 'store'])->name('comments.store');
Route::get('/comments/load', [PostController::class, 'load'])->name('comments.load');

Route::get('top_groups_by_posts', [PostController::class, 'top_groups_by_posts'])->name('top_groups_by_posts');
Route::get('top_groups_by_members', [PostController::class, 'top_groups_by_members'])->name('top_groups_by_members');
Route::get('top_leaders_by_posts', [PostController::class, 'top_leaders_by_posts'])->name('top_leaders_by_posts');
Route::get('special_group', [PostController::class, 'special_group'])->name('special_group');


// Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
// Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');
Route::post('/user/send_otp', [AuthController::class, 'sendOtp'])->name('send.otp');
Route::get('forgot-password', [AuthController::class, 'showForgotPasswordForm'])->name('forgot.password.form');
Route::post('forgot-password', [AuthController::class, 'sendOtp2'])->name('forgot.password.sendOtp');
Route::get('reset-password', [AuthController::class, 'resetPasswordForm'])->name('forgot.password.resetform');
Route::post('reset-password', [AuthController::class, 'resetPassword'])->name('forgot.password.reset');


Route::get('/user/settings_and_privacy', [AuthController::class, 'settings'])->name('user.settings');
Route::get('/leader_list', [HomepageController::class, 'leader_list'])->name('user.leader_list');


Route::get('/login', [HomepageController::class, 'index']);
Route::get('page/{slug}', [HomepageController::class, 'page_details'])->name('page.details');
//Frontend End


Auth::routes();

//Zone Ajax
Route::get('/district-list', [ZoneController::class, "districts"]);
Route::get('/thana-list', [ZoneController::class, "thanas"]);
Route::get('/download', [ReceiptController::class, "download"]);

Route::get('/registration_form/{id}', [HomepageController::class, 'registration_form'])->name('registration_form');

Route::group(['middleware' => ['auth']], function () {
    Route::post('/registration_form/{form}/submit', [FormController::class, 'submit'])->name('user.forms.submit');
});


//New Routes for Backend
Route::group(['middleware' => ['auth'], 'prefix' => 'admin'], function () {
    Route::get('/dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
    Route::get('/home', [DashboardController::class, 'dashboard']);

    Route::resource('web_property', WebSettingsController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);

    //Zone
    Route::resource('divisions', DivisionController::class);
    Route::resource('districts', DistrictController::class);
    Route::resource('thanas', ThanaController::class);

    //Category
    Route::resource('categories', CategoryController::class);

    //post
    Route::resource('posts', ProductController::class);
    Route::get('product_list', [ProductController::class, 'list'])->name('products.list');

    //Banner
    Route::resource('banners', BannerController::class);
    Route::get('banner_list', [BannerController::class, 'list'])->name('banners.list');
    
 


    Route::resource('notices', NoticeController::class);
    Route::resource('classes', StudentClassController::class);
    Route::resource('sections', SectionController::class);
    Route::resource('departments', DepartmentCOntroller::class);
    Route::resource('students', StudentCOntroller::class);

    

    //Pages
    Route::resource('pages', PageController::class);
    Route::get('page_list', [PageController::class, 'list'])->name('pages.list');
    //Group
    Route::resource('groups', GroupController::class);
    Route::get('group_list', [GroupController::class, 'list'])->name('groups.list');


    Route::get('member_list/{id}', [MemberController::class, 'index'])->name('members.index');
    Route::get('member_list_ajax/{id}', [MemberController::class, 'list'])->name('members.list');

    
    Route::get('/forms/add_member/{id}', [MemberController::class, 'add_member'])->name('forms.add_member');
    Route::post('members/remove/{group_id}/{id}', [MemberController::class, 'remove'])->name('members.remove');


    //Form Controlling
    Route::get('/forms/index', [FormController::class, 'index'])->name('forms.index');
    Route::get('/forms/list', [FormController::class, 'list'])->name('forms.list');

    Route::get('/forms/create', [FormController::class, 'create'])->name('forms.create');
    Route::get('/forms/{form}/edit', [FormController::class, 'edit'])->name('forms.edit');
    Route::get('/forms/delete', [FormController::class, 'delete'])->name('forms.destroy');
    Route::put('/forms/{form}', [FormController::class, 'update'])->name('forms.update');
    Route::post('/forms', [FormController::class, 'store'])->name('forms.store');
    Route::get('/forms/show', [FormController::class, 'show'])->name('forms.show');
    Route::post('/forms/{form}/submit', [FormController::class, 'submit'])->name('forms.submit');
    Route::get('/forms/{form}/submissions', [FormController::class, 'submissions'])->name('forms.submissions');

    

    Route::get('/forms/generate_id_card/{id}', [FormController::class, 'showDetails'])->name('forms.generate_id_card');

    Route::get('/profile', [ProfileController::class, 'index'])->name('profile.index');
    Route::post('/profile/update_image', [ProfileController::class, 'update_image'])->name('profile.update_image');
    Route::post('/profile/update_password', [ProfileController::class, 'update_password'])->name('profile.update_password');


    //Media
    Route::get('media/all', [MediaController::class, 'index'])->name('media_index');
    Route::post('media/store', [MediaController::class, 'store'])->name('media_store');
    Route::post('media/store/noajax', [MediaController::class, 'storeMedia'])->name('media_store_noajax');
    Route::get('media/get', [MediaController::class, 'getMedia'])->name('media_get');
    Route::get('media/delete/{id}', [MediaController::class, 'destroy'])->name('media_delete');
    Route::delete('media/delete_ajax', [MediaController::class, 'destroy_ajax'])->name('media_delete_ajax');
});



Route::get('{slug}', [FrontendProductController::class, 'showBySlug'])
    ->where('slug', '.*')->name('group');
