<% if File.exist?(File.join %w[spec rails_helper.rb]) -%>
require 'rails_helper'
<% else -%>
require 'spec_helper'
<% end -%>

<% module_namespacing do -%>
describe <%= class_name %>, type: :model do

<% if options[:fixture_replacement] == :factory_bot -%>
  subject(:<%= singular_name %>) { create :<%= singular_name %> }
<% else -%>
  before :each do
    @valid_attrs = {
    }
  end

  subject { <%= class_name %>.create @valid_attrs }
<% end -%>

  describe 'validations' do
    it { should be_valid }
  end   # validations

<% if attribute = attributes.detect{|a| a.name == 'position'} || attributes.detect{|a| a.name == 'name'} || attributes.detect{|a| a.name == 'title'} || attributes.first -%>
  describe 'class methods' do
    describe 'scopes' do
      describe '.ordered' do
        it 'orders the records of <%= class_name %> by :<%=attribute.name %>' do
<% if options[:fixture_replacement] == :factory_bot -%>
          create :<%= singular_name %>
          create :<%= singular_name %>
<% else -%>
          <%= class_name %>.create @valid_attrs
          <%= class_name %>.create @valid_attrs
<% end -%>
          expect(<%= class_name %>.ordered).to eq <%= class_name %>.order(:<%=attribute.name %>)
        end
      end   # .ordered
    end   # scopes
  end   # class methods

<% end -%>
end
<% end -%>
