require 'active_support'

require "archivable/version"
require "archivable/model"

module Archivable
  extend ActiveSupport::Concern

  included do |base|
    if ancestors.include? ActiveRecord::Base
      include Model
    else
      raise 'Must be included into ActiveRecord-model'
    end
  end
end
