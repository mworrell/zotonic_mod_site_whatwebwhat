{% include "_js_include_jquery.tpl" %}
{% lib
	"js/apps/zotonic-1.0.js"
	"js/apps/z.widgetmanager.js"
	"js/modules/ubf.js"
	"js/modules/z.notice.js"
	"js/modules/livevalidation-1.3.js"
	"js/modules/jquery.loadmask.js"
	"js/modules/z.clickable.js"
	"js/z.dialog.js"
	"js/bootstrap.js"
	"js/site.js"
%}

{% block _js_include_extra %}{% endblock %}

<script type="text/javascript">
	$(function()
	{
	    $.widgetManager();
	});
</script>
