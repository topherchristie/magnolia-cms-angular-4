<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Client</title>
  <base href="/">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/x-icon" href="favicon.ico">
  [@cms.page /]
</head>
<body>

<div id="appContent">
    [@cms.area name="main"/]
</div>

  <script>

  	setTimeout(function(){
	    var mainTemplate = document.getElementById('appContent');
	    window.mainTemplate = mainTemplate.innerHTML;

		var script5 = document.createElement('script');
		script5.type = "text/javascript";
    	script5.src = "${ctx.contextPath}/.resources/hello-world/webresources/angular4/dist/main.bundle.js";
		document.getElementsByTagName('head')[0].appendChild(script5);

		console.log('mainTemplate.innerText', mainTemplate.innerHTML)
    }, 1000);
  </script>

  <app-root>
      Loading ...
  </app-root>


<script type="text/javascript" src="${ctx.contextPath}/.resources/hello-world/webresources/angular4/dist/inline.bundle.js"></script>
<script type="text/javascript" src="${ctx.contextPath}/.resources/hello-world/webresources/angular4/dist/polyfills.bundle.js"></script>
<script type="text/javascript" src="${ctx.contextPath}/.resources/hello-world/webresources/angular4/dist/styles.bundle.js"></script>
<script type="text/javascript" src="${ctx.contextPath}/.resources/hello-world/webresources/angular4/dist/vendor.bundle.js"></script>


  </body>

</body>
</html>
