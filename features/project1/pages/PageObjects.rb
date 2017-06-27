$global_variable = 0

class HomePage
  
  attr_accessor :txt1,:txt2,:txt3,:txt4,:txt5, :txtbal, :lbl1, :lbl2, :lbl3, :lbl4. :lbl5, :lblbal
  URLS = { :QA => "https://www.exercise1.com/values" }
 
  def initialize(browser)
    	@browser = browser
    	@txt1	= @browser.text_field(:id => "txt_val_1").value
    	@txt2	= @browser.text_field(:id => "txt_val_2").value
    	@txt3   = @browser.text_field(:id => "txt_val_3").value
    	@txt4   = @browser.text_field(:id => "txt_val_4").value
    	@txt5   = @browser.text_field(:id => "txt_val_5").value
    	@txtbal = @browser.text_field(:id => "txt_ttl_val").value
	@lbl1	= @browser.label(:id => "lbl_val_1").value
	@lbl2	= @browser.label(:id => "lbl_val_2").value
	@lbl3	= @browser.label(:id => "lbl_val_3").value
	@lbl4	= @browser.label(:id => "lbl_val_4").value
	@lbl5	= @browser.label(:id => "lbl_val_5").value
	@lblbal	= @browser.label(:id => "lbl_ttl_val").value	
  end
 
  def visit
    @browser.goto URLS[:QA]
  end
 
  def page_title
    @browser.title
  end

  def verifyHomePageHeader()
    @browser.element(:text =&gt; "ExercisePage").wait_until_present
  end
 
end
