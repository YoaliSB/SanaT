<html>

    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h1 style="text-align:center">SanaT</h1>
        <div class="primary callout ">
            <form action="Login" method="post">
                <div class="row ">
                    <div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                    <div align="center" class="large-4 medium-4 columns">
                        <label>Usuario</label>
                        <input name="user" type="text" placeholder="Username" />
                    </div>
                    <div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                </div>
                <div class="row">
                    <div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                    <div align="center" class="large-4 medium-4 columns">
                        <label>Contraseña</label>
                        <input id="password" placeholder="Password" name="password" type="password">
                    </div>
                    <div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                </div>
                <div class="row">
                    <div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                    <div align="center" class="large-4 medium-4 columns">
                        <input class="button" type="submit" name="submit" value="Iniciar sesion" />
                    </div>
                    <div  class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                </div>
                <div class="row">
                	<div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                	<div align="center" class="large-4 medium-4 columns">
						<label style="color:red">${requestScope.logged}</label>
                    </div>
                	<div class="large-4 medium-4 columns"><label style="font-size:1px">A</label></div>
                </div>
            </form>
        </div>
</body>
</html>