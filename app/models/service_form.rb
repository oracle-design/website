class ServiceForm < ActiveRecord::Base
  as_enum :project_type, [:website_development, :website_design, :identity_design, :marketing_strategies]
  as_enum :budget_range, [:two_hundred_thousand, :'three_hundred_thousand', :'six_hundred_thousand', :'one_million']
end
