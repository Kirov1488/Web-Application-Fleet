<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <div class="text-center">
            <img src="img/Compass.png" style="max-width: 300px">
        </div>
        <div class="container">
            <form action="registration.php" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="repeat_password" placeholder="Repeat password">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Register" name="Register">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>