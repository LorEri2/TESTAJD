<!doctype html>
<?php
/* include ('./lib/php/p_liste_include.php');
  $db = Connexion::getInstance($dsn, $user, $pass);
 */
session_start();
?>

<html>
    <head>
        <title>Berlioz Délices</title>
        <link rel="stylesheet" type="text/css" href="./admin/lib/css/bootstrap-3.3.7/dist/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="./admin/lib/css/styles/gt_style.css" />
        <link rel="stylesheet" type="text/css" href="./admin/lib/css/gt_style.css"/> 
        <script src="admin/lib/js/jquery-3.1.1.js"></script>
        <script src="admin/lib/css/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
        <script src="admin/lib/js/functionsBtJquery.js"></script>
        <meta charset='UTF-8'/>
    </head>

    <body>
        <header>
            <div class="container">
                <img src="admin/images/gt_banniere.jpg" alt="Berlioz Délices" title="Berlioz Délices"/>
            </div>
        </header>

        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <nav>
                        <?php
                        if (file_exists('./lib/php/p_gt_menu.php')) {
                            include ('./lib/php/p_gt_menu.php');
                        }
                        ?>   
                    </nav>
                </div>
                <div class="col-sm-10">
                    <section id="main">
                        <?php
                        if (!isset($_SESSION['page'])) {
                            $_SESSION['page'] = "accueil";
                        }
                        if (isset($_GET['page'])) {
                            $_SESSION['page'] = $_GET['page'];
                        }
                        $chemin = './pages/' . $_SESSION['page'] . '.php';
                        if (file_exists($chemin)) {
                            include ($chemin);
                        }
                        if (file_exists('chemin.php')) {
                            include ('chemin.php');
                        }

                        ?>  
                    </section>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="push" ></div>
            <footer class="footer">
                <?php
                if (file_exists('./admin/lib/php/footer.php')) {
                    include ('./admin/lib/php/footer.php');
                } else
                    print "rien";
                ?>  
            </footer>
        </div>
    </body>
</html>
