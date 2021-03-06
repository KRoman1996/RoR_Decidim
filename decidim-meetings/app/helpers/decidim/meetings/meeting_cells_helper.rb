# frozen_string_literal: true

module Decidim
  module Meetings
    # Custom helpers used in meetings views
    module MeetingCellsHelper
      include TranslatableAttributes
      include LayoutHelper
      include Decidim::Meetings::MeetingsHelper
      include Decidim::SanitizeHelper
      include Decidim::Meetings::Engine.routes.url_helpers

      delegate :title, :state, :withdrawn?, to: :model

      def description
        decidim_sanitize_editor meeting_description(model)
      end
    end
  end
end
