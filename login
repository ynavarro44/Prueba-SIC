<?php include 'template/header.php' ?>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Valide su usuario:
                    </div>
                    <form class="p-4" method="POST" action="login.php">

                        <div class="mb-3">
                            <label class="form-label">Email: </label>
                            <input type="text" class="form-control" name="userName" required ?>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password: </label>
                            <input type="password" class="form-control" name="password" required ?>
                        </div>
                        <div class="d-grid">
                            <input type="hidden" name="codigo" value="<?php echo $persona->codigo; ?>
                            <input type=" submit" class="btn btn-primary" value="Login">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<?php include 'template/footer.php' ?>