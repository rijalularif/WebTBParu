<ul
    class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
    id="accordionSidebar">

    <a
        class="sidebar-brand d-flex align-items-center justify-content-center"
        href="/dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-star"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Web TB Paru</div>
    </a>

    <hr class="sidebar-divider my-0">

    <li class="nav-item {{ Request::is('dashboard') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/giss*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/giss">
            <i class="fas fa-fw fa-map"></i>
            <span>Gis</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/posts*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/posts">
            <i class="fas fa-fw fa-newspaper"></i>
            <span>My Posts</span>
        </a>
    </li>

    @can('admin')

    <hr class="sidebar-divider">

    <div class="sidebar-heading">
        ADMINISTRATOR
    </div>

    <li class="nav-item {{ Request::is('dashboard/pasiens*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/pasiens">
            <i class="fas fa-fw fa-user"></i>
            <span>Data Pasien</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/dokters*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/dokters">
            <i class="fas fa-fw fa-city"></i>
            <span>Data Dokter</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/decisiontrees*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/decisiontrees">
            <i class="fas fa-fw fa-user"></i>
            <span>Decision Tree</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/korespondensis*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/korespondensis">
            <i class="fas fa-fw fa-user"></i>
            <span>Analisis Korespondensi</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/kecamatans*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/kecamatans">
            <i class="fas fa-fw fa-city"></i>
            <span>Data Kecamatan</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/categories*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/categories">
            <i class="fas fa-fw fa-ellipsis-v"></i>
            <span>Categories Post</span>
        </a>
    </li>

    <li class="nav-item {{ Request::is('dashboard/rlbs*') ? 'active' : '' }}">
        <a class="nav-link" href="/dashboard/rlbs">
            <i class="fas fa-fw fa-ellipsis-v"></i>
            <span>RLB</span>
        </a>
    </li>

    @endcan

    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>