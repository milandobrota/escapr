require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'Escapr' do

  before :all do
    @helper = ActionView::Base.new
  end

  it 'should escape text if hash is not passed' do
    @helper.escapr('<p>Text</p>').should == '&lt;p&gt;Text&lt;/p&gt;'
  end

  it 'should not escape paragraph is hash contains p' do
    @helper.escapr('<p>Text</p>', :safe => 'p').should == '<p>Text</p>'
  end

  it 'should escape paragraph is hash does not contain p' do
    @helper.escapr('<p>Text</p>', :safe => 'a').should == '&lt;p&gt;Text&lt;/p&gt;'
  end

end
