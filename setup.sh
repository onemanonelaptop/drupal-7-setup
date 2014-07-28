# Disable some modules
drush dis -y toolbar help

# Enable some modules
drush en addressfield, admin_menu, admin_menu_toolbar, auto_nodetitle, backup_migrate, coder,  ctools, entityconnect, field_collection, field_collection_fieldset, field_group, \
  page_manager, context, context_ui, date, date_api, date_popup, date_views, devel, devel_generate, entityform_anonymous \
 entityform, entityform_notifications, contact_form, features,  feature_wysiwyg_editor, email, entityreference, field_group, link, telephone, imce, better_formats, \
 blockify, entity,  entity_rules, entity2text,  entity_token, entity_view_mode,  libraries,  library_pack, menu_block, node_save_redirect, admin_tweaks, pathauto, session_api, strongarm, smart_trim,  \
 token, panelizer, panels, rules \
 services, rest_server, views, views_ui

# Set the timezone
drush vset site_default_country 'GB' -y
drush vset date_first_day 1 -y
drush vset date_api_use_iso8601 0 -y
drush vset date_default_timezone 'Europe/London' -y
drush vset configurable_timezones 0 -y
drush vset user_default_timezone 0 -y

# disable user pictures
drush vset -y user_pictures 0;
# allow only admins to register users
drush vset -y user_register 0;