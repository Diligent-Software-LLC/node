require_relative 'test_helper'

# NodeTest.
# @class_description
#   Tests the NodeLibrary class.
class NodeTest < Minitest::Test

  CLASS = NodeLibrary

  # test_conf_doc_f_ex().
  # @description
  #  The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, .yardopts, and
  #  README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

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

  # teardown().
  # @description
  #  Cleanup.
  def teardown()
  end

end
