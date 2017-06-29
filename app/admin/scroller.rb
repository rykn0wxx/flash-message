ActiveAdmin.register Scroller do

	config.sort_order = 'updated_at_desc'

	permit_params :project_id, :forecast_group_id, :current_sla, :mtd_sla, :callouts

	preserve_default_filters!

	remove_filter :created_at, :updated_at

	active_admin_import validate: true,
		headers_rewrites: {
			:'project' => :project_id,
			:'forecast_group' => :forecast_group_id
		},
		before_batch_import: -> (importer) {
			puts '***********************************'
			p_vals = importer.values_at(:project_id)
			p_arr = Project.find_or_create_by(name: p_vals).pluck(:name, :id)
			p_fld = Hash[*p_arr.flatten]
			importer.batch_replace(:project_id, p_fld)
		},
		back: proc { config.namespace.resource_for(Scroller).route_collection_path }

end
