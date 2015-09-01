class SocialService < ActiveRecord::Base
  belongs_to :member

  as_enum :service, [:email, :facebook, :github, :twitter, :dribbble, :behance, :'google+', :instagram, :lastfm, :linkedin, :medium, :pinterest, :tumblr, :wordpress, :youtube]
end
