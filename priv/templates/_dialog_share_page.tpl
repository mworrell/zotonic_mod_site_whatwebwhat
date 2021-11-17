<div class="social-icons">

    {% with "#55acee" as brand_color %}
        <a href="https://twitter.com/share?text={{ id.title|urlencode }}%20%40WoWabortionpill&amp;lang={{ z_language }}&amp;url={{ id.page_url_abs|urlencode }}" onclick="return !window.open(this.href, 'Twitter', 'width=600,height=300,location=0,toolbar=0,scrollbars=0,status=0')" title="Twitter" class="btn btn-social-icon" style="background-color: {{ brand_color }}; color: #fff;">
            <span class="fa fa-twitter" ></span>
        </a>
    {% endwith %}

    {% with "#3b5998" as brand_color %}
        <a href="https://www.facebook.com/sharer.php?u={{ id.page_url_abs|urlencode }}&amp;t={{ id.title|urlencode }}" onclick="return !window.open(this.href, 'Facebook', 'width=700,height=400,toolbar=0,location=0,scrollbars=0,status=0')" title="Facebook" class="btn btn-social-icon" style="background-color: {{ brand_color }}; color: #fff;">
            <span class="fa fa-facebook" ></span>
        </a>
    {% endwith %}

    {% all include "_share_page_option.tpl" id=id %}

</div>
<div class="modal-footer">
    {% button class="btn btn-default" text=_"Close" action={dialog_close} %}
</div>
