require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Datify" do
  it 'should translate the 16-giu-1976 string' do
    d = Datify.new('16-giu-1976')
    d.should_not      be_nil
    d.valid?.should   be_true
    d.date.should     be_a(Time) 
  end

  it 'should not translate the 32-neat string' do
    d = Datify.new('32-neat')
    d.should_not      be_nil
    d.valid?.should   be_false
  end

  it 'should not translate a malformed string' do
    d = Datify.new('giu-16-1976')
    d.should_not      be_nil
    d.valid?.should   be_false
  end

  it 'should handle a custom separator' do
    pending 'In the future you may want to specify a custom separator'
  end

  it 'should handle the :en locale' do
    pending 'In the future you must be able to set the locale you want to use'
  end

  it 'should handle the 2 weeks ago string' do
    pending 'In the future will must be able to support relative data expression such as "2 weeks ago"'
  end
end
