require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe String, "datify" do
  it "should have the to_time method" do
    "A string".methods.index('to_time'.to_sym).should_not be_nil
  end

  it "should have the is_time? method" do
    "A string".methods.index('is_time?'.to_sym).should_not be_nil
  end

  it "should return a valid Time object for valid dates" do
    "23-giu-1973".is_time?.should be_true
    "23-giu-1973".to_time.should be_a(Time)
  end
  it "should tell an invalid date is invalid" do
    "This is not a date".is_time?.should be_false
  end

  it "should return a nil object when trying to convert an invalid date" do
    "This is not a date".to_time.should be_nil
  end

  it "should handle the '/' separator" do
    "23/giu/1976".is_time?.should be_true
    "23/giu/1976".to_time.should be_a(Time)
  end

  it "should handle custome separators" do
    "23$giu$1976".to_time('$').should be_a(Time)
  end

end
