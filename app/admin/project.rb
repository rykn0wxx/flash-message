ActiveAdmin.register Project do

	config.sort_order = 'updated_at_desc'

	permit_params :name, :is_active

	preserve_default_filters!

	remove_filter :created_at, :updated_at

	menu parent: 'Config'

	active_admin_import validate: true,
		back: proc { config.namespace.resource_for(Project).route_collection_path }


end
