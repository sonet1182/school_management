<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="{{ route('dashboard') }}" class="brand-link">
        <img src="/asset/backend/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">Demo Name</span>
    </a>

    <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ Auth::user()->image ? asset(Auth::user()->image) : asset('images/demo_user.png') }}"
                    class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::user()->name }}</a>
            </div>
        </div>



        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">

                <li class="nav-item">
                    <a href="{{ route('dashboard') }}"
                        class="nav-link {{ Request::url() == url('/dashboard') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>


                <li class="nav-header">MANAGEMENT</li>

                @can('category-list')
                    <li class="nav-item {{ request()->is('admin/categories*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/categories*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-table"></i>
                            <p>
                                Caregory
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('category-list')
                                <li class="nav-item">
                                    <a href="{{ route('categories.index') }}"
                                        class="nav-link {{ request()->is('admin/categories') ? 'active' : '' }}">
                                        <i class="fa fa-list nav-icon"></i>
                                        <p>Category List</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('post-list')
                    <li class="nav-item {{ request()->is('admin/posts*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/posts*') ? 'active' : '' }}">
                            <i class="nav-icon fa fa-list"></i>
                            <p>
                                Posts
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('post-list')
                                <li class="nav-item">
                                    <a href="{{ route('posts.index') }}"
                                        class="nav-link {{ request()->is('admin/posts') ? 'active' : '' }}">
                                        <i class="fas fa-list nav-icon"></i>
                                        <p>Post List</p>
                                    </a>
                                </li>
                            @endcan
                            @can('post-create')
                                <li class="nav-item">
                                    <a href="{{ route('posts.create') }}"
                                        class="nav-link {{ request()->is('admin/posts/create') ? 'active' : '' }}">
                                        <i class="fas fa-plus nav-icon"></i>
                                        <p>Create New</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('banner-list')
                    <li class="nav-item">
                        <a href="{{ route('banners.index') }}"
                            class="nav-link {{ request()->is('admin/banners*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Banner</p>
                        </a>
                    </li>
                @endcan

                @can('notice-list')
                    <li class="nav-item">
                        <a href="{{ route('notices.index') }}"
                            class="nav-link {{ request()->is('admin/notices*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Notice</p>
                        </a>
                    </li>
                @endcan





                @php
                    $hasZoneSettingsPermission =
                        auth()->user()->can('department-list') ||
                        auth()->user()->can('class-list') ||
                        auth()->user()->can('section-list');
                @endphp


                <li class="nav-header {{ $hasZoneSettingsPermission ? '' : 'd-none' }}">CLASS SETTINGS</li>


                @can('department-list')
                    <li class="nav-item">
                        <a href="{{ route('departments.index') }}"
                            class="nav-link {{ request()->is('admin/departments*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Departments</p>
                        </a>
                    </li>
                @endcan

                @can('class-list')
                    <li class="nav-item">
                        <a href="{{ route('classes.index') }}"
                            class="nav-link {{ request()->is('admin/classes*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Class</p>
                        </a>
                    </li>
                @endcan

                @can('section-list')
                    <li class="nav-item">
                        <a href="{{ route('sections.index') }}"
                            class="nav-link {{ request()->is('admin/sections*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Sections</p>
                        </a>
                    </li>
                @endcan




                @can('department-list')
                    <li class="nav-item">
                        <a href="{{ route('departments.index') }}"
                            class="nav-link {{ request()->is('admin/departments*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-image"></i>
                            <p>Departments</p>
                        </a>
                    </li>
                @endcan

                <li class="nav-header">STUDENT SECTION</li>

                <li class="nav-item">
                    <a href="{{ route('students.index') }}"
                        class="nav-link {{ request()->is('admin/students*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-image"></i>
                        <p>Students</p>
                    </a>
                </li>



                <li class="nav-header">WEB SETTINGS</li>

                <li class="nav-item">
                    <a href="{{ route('media_index') }}"
                        class="nav-link {{ request()->is('media*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-image"></i>
                        <p>Media</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('web_property.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>Properties</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('pages.index') }}"
                        class="nav-link {{ request()->is('admin/pages*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-image"></i>
                        <p>Web Pages</p>
                    </a>
                </li>





                @can('role-list')


                    <li class="nav-item {{ request()->is('admin/roles*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/roles*') ? 'active' : '' }}">
                            <i class="nav-icon fa fa-user-circle"></i>
                            <p>
                                Role
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('role-list')
                                <li class="nav-item">
                                    <a href="{{ route('roles.index') }}"
                                        class="nav-link {{ request()->is('admin/roles') ? 'active' : '' }}">
                                        <i class="fa fa-list nav-icon"></i>
                                        <p>Role List</p>
                                    </a>
                                </li>
                            @endcan
                            {{-- @can('role-create')
                                <li class="nav-item">
                                    <a href="{{ route('roles.create') }}"
                                        class="nav-link {{ request()->is('admin/roles/create') ? 'active' : '' }}">
                                        <i class="fa fa-plus nav-icon"></i>
                                        <p>Create New</p>
                                    </a>
                                </li>
                            @endcan --}}
                        </ul>
                    </li>
                @endcan

                @can('user-list')
                    <li class="nav-item {{ request()->is('admin/users*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/users*') ? 'active' : '' }}">
                            <i class="nav-icon fa fa-user-plus"></i>
                            <p>
                                user
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('user-list')
                                <li class="nav-item">
                                    <a href="{{ route('users.index') }}"
                                        class="nav-link {{ request()->is('admin/users') ? 'active' : '' }}">
                                        <i class="fa fa-list nav-icon"></i>
                                        <p>user List</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @php
                    $hasZoneSettingsPermission =
                        auth()->user()->can('division-list') ||
                        auth()->user()->can('district-list') ||
                        auth()->user()->can('thana-list');
                @endphp

                <li class="nav-header {{ $hasZoneSettingsPermission ? '' : 'd-none' }}">ZONE SETTINGS</li>


                @can('division-list')
                    <li class="nav-item {{ request()->is('admin/divisions*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/divisions*') ? 'active' : '' }}">
                            <i class="nav-icon fa fa-location-arrow"></i>
                            <p>
                                Division
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('division-list')
                                <li class="nav-item">
                                    <a href="{{ route('divisions.index') }}"
                                        class="nav-link {{ request()->is('admin/divisions') ? 'active' : '' }}">
                                        <i class="fa fa-list nav-icon"></i>
                                        <p>Division List</p>
                                    </a>
                                </li>
                            @endcan
                            @can('division-create')
                                <li class="nav-item">
                                    <a href="{{ route('divisions.create') }}"
                                        class="nav-link {{ request()->is('admin/divisions/create') ? 'active' : '' }}">
                                        <i class="fa fa-plus nav-icon"></i>
                                        <p>Create New</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('district-list')
                    <li class="nav-item {{ request()->is('admin/districts*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/districts*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-map"></i>
                            <p>
                                District
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('district-list')
                                <li class="nav-item">
                                    <a href="{{ route('districts.index') }}"
                                        class="nav-link {{ request()->is('admin/districts') ? 'active' : '' }}">
                                        <i class="fas fa-list nav-icon"></i>
                                        <p>District List</p>
                                    </a>
                                </li>
                            @endcan
                            @can('district-create')
                                <li class="nav-item">
                                    <a href="{{ route('districts.create') }}"
                                        class="nav-link {{ request()->is('admin/districts/create') ? 'active' : '' }}">
                                        <i class="fas fa-plus nav-icon"></i>
                                        <p>Create New</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('thana-list')
                    <li class="nav-item {{ request()->is('admin/thanas*') ? 'menu-open active' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/thanas*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-map-marker"></i>
                            <p>
                                Thana
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('thana-list')
                                <li class="nav-item">
                                    <a href="{{ route('thanas.index') }}"
                                        class="nav-link {{ request()->is('admin/thanas') ? 'active' : '' }}">
                                        <i class="fas fa-list nav-icon"></i>
                                        <p>Thana List</p>
                                    </a>
                                </li>
                            @endcan
                            @can('thana-create')
                                <li class="nav-item">
                                    <a href="{{ route('thanas.create') }}"
                                        class="nav-link {{ request()->is('admin/thanas/create') ? 'active' : '' }}">
                                        <i class="fas fa-plus nav-icon"></i>
                                        <p>Create New</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan



                <li class="nav-header">PROFILE SETTINGS</li>

                <li class="nav-item">
                    <a href="{{ route('profile.index') }}"
                        class="nav-link {{ request()->is('admin/profile*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-image"></i>
                        <p>Update Profile</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                        class="nav-link">
                        <i class="nav-icon fas fa-sign-out-alt"></i>
                        <p>Log Out</p>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>

            </ul>
        </nav>

    </div>

</aside>
