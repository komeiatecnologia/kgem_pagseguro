require 'test/unit'
require 'pagseguro'

class ItemsTest < Test::Unit::TestCase
	def test_return_items_class
		items = PagSeguro::Items.new
		assert_instance_of PagSeguro::Items, items, 'Should return items object'
	end

	def test_increases_quantity_when_adding_duplicated_item
		item = PagSeguro::Item.new(:id => 1234)
    items = PagSeguro::Items.new
    items << item
    items << item
    assert_equal 1, items.size, 'Should return 1 object item'
    assert_equal 2, item.quantity, 'Should return 2 quantity item'
  end

	def test_return_2_object_item
		items = PagSeguro::Items.new
		2.times do |i|
			item = PagSeguro::Item.new(:id => i+1)
			items << item
		end
		assert_equal 2, items.size, 'Should return 2 objects item'
	end
end