
{% lib
    "js/apps/jquery-latest.min.js"
    "js/modules/jquery.ui.touch-punch.min.js"
    minify
%}

{% lib
    "js/modules/jstz.min.js"
    "cotonic/cotonic.js"
	"js/apps/zotonic-wired.js"
	"js/apps/z.widgetmanager.js"
	"js/modules/z.notice.js"
	"js/modules/z.imageviewer.js"
	"js/modules/z.dialog.js"
	"js/modules/z.clickable.js"
	"js/modules/z.popupwindow.js"
	"js/modules/livevalidation-1.3.js"
	"js/modules/jquery.loadmask.js"
    "bootstrap/js/bootstrap.min.js"
    minify
%}

{% worker name="auth" src="js/zotonic.auth.worker.js" args=%{  auth: m.authentication.status  } %}

{% block _js_include_extra %}{% endblock %}

<script type="text/javascript">
	$(function()
	{
	    $.widgetManager();
	});
</script>
