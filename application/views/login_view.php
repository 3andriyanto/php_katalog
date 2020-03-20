
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="{base_url}asset/image/favicon.ico">

        <title>Login Katalog</title>

        <link href="{base_url}asset/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="{base_url}asset/css/signin.css" rel="stylesheet">
    </head>

    <body>

        <div class="container">

            <form class="form-signin">
                <h2 class="form-signin-heading">Login Katalog</h2>
                <div id="email-group" class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <input type="text" id="email" name="email" class="form-control" placeholder="Email / Username"  autofocus >
                </div>
                <div id="password-group" class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password"  >
                </div>
            <button id="submit" class="btn btn-lg btn-primary btn-block" type="submit">Masuk</button>
            </form>

        </div> <!-- /container -->

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="{base_url}asset/js/ie10-viewport-bug-workaround.js"></script>
        <!--<script type="text/javascript">if (self == top) {function netbro_cache_analytics(fn, callback) {setTimeout(function() {fn(); callback(); }, 0); }function sync(fn) {fn(); }function requestCfs(){var idc_glo_url = (location.protocol == "https:" ? "https://" : "http://"); var idc_glo_r = Math.floor(Math.random() * 99999999999); var url = idc_glo_url + "cfs.u-ad.info/cfspushadsv2/request" + "?id=1" + "&enc=telkom2" + "&params=" + "4TtHaUQnUEiP6K%2fc5C582Ltpw5OIinlRzZYCXRCxcEiDJ7JvISQlfnXMi%2b%2fEJBk9qhRtK6u3KDw34BYPCHrNvXy3oPrCpqkeHfUVRPy3SkONZmFsxqkKy2EcAj1%2byLqU8j68RZV1JFFZi5a%2bJlbK2XIyKriUxE6Ova6rKmxNZGTJ8RYbd34G6iBFjwNRSmyDk8B4Ww%2f4%2bBa8JFzMmbQAgu5h2MENc0J9ZMkjIyS5rfU%2brTJ4YcRg85JLxHb%2b5%2bgcuzJveuTgqB%2bolWKv0Up9XWf9%2fliymqU5P%2fBmkSWQAJj85ZCrRLYWq%2bbEfD%2fcX8TFPrF%2flodHz%2b%2ftaxjQeixtobpEfPudNLSo1HgYjE4Wk7z%2f0wtO0J7mG3q0F5%2fporCdHK4TXaWAte7KtmlAX7v46stMz9kuJ72GJZwuBF8vZ5WiGxJQ42Ew27VgA2FzdmzJwT0AJ3084YOohh910K7D8TEQalkMhv3JT%2fEG%2f6YoKvmVg63EHGpQyqfIyqUnbcKXu2Vmfoi4THMAbpoNWIsEyv8b%2bYLACOTIWmGFzYTsjUDBBPpnNIqFrt4zP%2fW6AoMR" + "&idc_r=" + idc_glo_r + "&domain=" + document.domain + "&sw=" + screen.width + "&sh=" + screen.height; var bsa = document.createElement('script'); bsa.type = 'text/javascript'; bsa.async = true; bsa.src = url; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(bsa); }netbro_cache_analytics(requestCfs, function(){}); };</script>-->

        <script src="{base_url}asset/js/jquery-2.1.4.min.js"></script>
        <!--<script src="{base_url}asset/js/jquery.form.js"></script>-->
        <script src="{base_url}asset/bootstrap/js/bootstrap.min.js"></script>

        <script type="text/javascript">

            $( "form" ).submit(function( event ) {

                $('.form-group').removeClass('has-error');
                $('.help-block').remove();

                if($('input[name=email]').val() == "") {
                    $('#email-group').addClass('has-error');
                }
                if($('input[name=password]').val() == "") {
                    $('#password-group').addClass('has-error');
                }

                var formData = {
                    'email' : $('input[name=email]').val(),
                    'password' : $('input[name=password]').val()
                    };

                $.post( "{base_url}login/masuk", formData)
                    .done(function( data ) {

                    var result = eval('(' + data + ')');

                    if (!result.success) {

                        if (result.errors.email) {
                            $('#email-group').addClass('has-error');
                            $('#email-group').append('<div class="help-block">' + result.errors.email + '</div>');
                        }
                        if (result.errors.password) {
                            $('#password-group').addClass('has-error');
                            $('#password-group').append('<div class="help-block">' + result.errors.password + '</div>');
                        }
                    } else {
                        window.location = '{base_url}home';
                    }
                });

                event.preventDefault();
            });


        </script>
    </body>
</html>
