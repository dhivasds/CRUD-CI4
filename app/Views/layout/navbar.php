<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">DDS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="/">Home</a>
                <a class="nav-link" href="/pages/about">About</a>
                <a class="nav-link" href="/pages/contact">Contact</a>
                <a class="nav-link" href="/komik">Comic</a>
                <a class="nav-link" href="/orang">People List</a>
            </div>
            <?php if (logged_in()) : ?>
                <a class="btn btn-danger" href="/logout">Logout</a>
            <?php else : ?>
                <a class="btn btn-primary" href="/login">Login</a>
            <?php endif; ?>
        </div>
    </div>
</nav>