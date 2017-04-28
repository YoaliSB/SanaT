<html>

    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    </head>
    <body>
       <div class="wrapper">
        <img id="logo" src="media/sanaTLogo.png">
        <div class="container">
            <form class="form" action="Login" method="post">
                <div class="row ">
                    <div align="center" class="large-4 medium-4 columns login username">
                        <input name="user" type="text" placeholder="Usuario" />
                    </div>
                </div>
                <div class="row">
                    <div align="center" class="large-4 medium-4 columns login">
                        <input id="password" placeholder="Password" name="password" type="password">
                    </div>
                </div>
                <div class="row">
                    <div align="center" class="large-4 medium-4 columns login last">
                        <input class="button hover-button" type="submit" name="submit" value="Iniciar sesión" />
                    </div>
                </div>
                <div class="row">
                	<div align="center" class="large-4 medium-4 columns alert">
			   <label style="color:red">${requestScope.logged}</label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>