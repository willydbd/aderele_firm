<li class="nav-item">
    <a href="{{ route('blogs.index') }}"
       class="nav-link {{ Request::is('blogs*') ? 'active' : '' }}">
        <p>Blogs</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('categories.index') }}"
       class="nav-link {{ Request::is('categories*') ? 'active' : '' }}">
        <p>Categories</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('clients.index') }}"
       class="nav-link {{ Request::is('clients*') ? 'active' : '' }}">
        <p>Clients</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('tags.index') }}"
       class="nav-link {{ Request::is('tags*') ? 'active' : '' }}">
        <p>Tags</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('practices.index') }}"
       class="nav-link {{ Request::is('practices*') ? 'active' : '' }}">
        <p>Practices</p>
    </a>
</li>


