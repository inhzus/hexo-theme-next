{% if theme.busuanzi_count.enable %}
<div class="busuanzi-count">
  {% set busuanzi_url = url_for(theme.vendors._internal + '/busuanzi.pure.mini.js') %}
  {% if theme.vendors.busuanzi %}
    {% set busuanzi_url = theme.vendors.busuanzi %}
  {% endif %}
  <script async src= {{ busuanzi_url }}></script>

  {% if theme.busuanzi_count.total_visitors %}
    <span class="post-meta-item-icon">
      <i class="fa fa-{{ theme.busuanzi_count.total_visitors_icon }}"></i>
    </span>
    <span class="site-uv" title="{{ __('footer.total_visitors') }}">
      <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
    </span>
  {% endif %}

  {% if theme.busuanzi_count.total_visitors and theme.busuanzi_count.total_views %}
    <span class="post-meta-divider">|</span>
  {% endif %}

  {% if theme.busuanzi_count.total_views %}
    <span class="post-meta-item-icon">
      <i class="fa fa-{{ theme.busuanzi_count.total_views_icon }}"></i>
    </span>
    <span class="site-pv" title="{{ __('footer.total_views') }}">
      <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
    </span>
  {% endif %}
</div>
{% endif %}
