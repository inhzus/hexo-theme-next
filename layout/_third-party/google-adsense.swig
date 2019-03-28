{% if theme.google_adsense.google_ad_client %}
{% set adsense_url = url_for(theme.vendors._internal + '/adsbygoogle.js') %}
{% if theme.vendors.google_adsense %}
  {% set adsense_url = theme.vendors.google_adsense %}
{% endif %}
<script async src="{{ adsense_url }}"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "{{ theme.google_adsense.google_ad_client }}",
    enable_page_level_ads: {{ theme.google_adsense.enable_page_level_ads }}
  });
</script>
{% endif %}
