module LandingPageHelper
  def render_feature(feature_name, ini_i18n_scope='')
    i18n_scope = "#{ini_i18n_scope}.features.#{feature_name}"
    render partial: 'feature', locals: {
      icon_name: t('icon_name', scope: i18n_scope),
      name: t('name', scope: i18n_scope),
      description: t('description', scope: i18n_scope)
    }
  end
end
