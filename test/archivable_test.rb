require "test_helper"

class ArchivableTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Archivable::VERSION
  end

  def test_it_does_something_useful
    model = Class.new ::ActiveRecord::Base
    model.send :include, Archivable
    assert model.respond_to? :restore_all!
  end
end
