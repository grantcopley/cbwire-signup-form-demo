<cfoutput>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>CBWIRE Form Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="/includes/css/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="/includes/css/custom.css">
        <link rel="icon" href="favicon.ico">

		#wireStyles()#
    </head>
    <body>
        <div class="">
            <section class="py-5 bg-light">
                <div class="container">
					<div class="text-center">
						<a class="d-inline-block mb-5" href="##">
							<img class="img-fluid" src="/includes/metis-assets/logos/metis/metis.svg" alt="" width="106">
						</a>
					</div>

					#wire( "SignupForm" )#

					<p class="text-muted text-center">
                        <a class="text-muted" href="##">Privacy Policy</a>
                        and
                        <a class="text-muted" href="##">Terms of Use</a>
                    </p>
                </div>
            </section>
        </div>
        <script src="/includes/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="/includes/js/main.js"></script>

		#wireScripts()#
    </body>
</html>
</cfoutput>