require_relative 'test_helper'

# NodeTest.
# @class_description
#   Tests the Node library.
class NodeTest < Minitest::Test

  # Constants.
  CLASS = NodeLibrary

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts, .gitignore, Changelog.md, CODE_OF_CONDUCT.md,
  #   node.gemspec, Gemfile.lock, and Rakefile files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')
    assert_path_exists('.gitignore')
    assert_path_exists('Changelog.md')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('node.gemspec')
    assert_path_exists('Gemfile.lock')
    assert_path_exists('Rakefile')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
  end

  # invalid_data_raises().
  # @description
  #   Arguing invalid data during initialization raises a NodeError.
  def test_invalid_data_raises()

    invalid = {}
    assert_raises(DataError) {
      Node.new(nil, invalid, nil)
    }

  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
