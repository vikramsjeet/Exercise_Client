$global_variable = 0

class HomePage
  @@tmpcount = 0
  attr_accessor :txt1,:txt2,:txt3,:txt4,:txt5, :txtbal, :lbl1, :lbl2, :lbl3, :lbl4, :lbl5, :lblbal
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

  def valuevalidate(tempobj)
  	if tempobj.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Textbox value #tempobj is less than 0"
	else
		puts "Textbox value #tempobj is greater than 0"
	end
  end

  def currencyformat(cur)
	if cur.chars.first == "$" then
		puts "Value #cur is formatted as currency"
	else
		raise "Value #cur is Not formatted as currency"
	end
  end

  def labelcheck(m)
	labels = @browser.labels(class:.....)	
	labels.each do |label|
		@val = label.text
		if @val.include? "Value" then
			@@tmpcount += 1
		end
	end
	if @@tmpcount == m then
		puts "correct number of values - #m are present on the screen"
	else
		raise "Number of values on screen #@@tmpcount are different from the expected count of - #m"
	end
  end

  def gblsum
	var1 = 	@txtbal.gsub(/[^\d\.]/, '').to_f
	$global_variable = @txt1.gsub(/[^\d\.]/, '').to_f + @txt2.gsub(/[^\d\.]/, '').to_f + @txt3.gsub(/[^\d\.]/, '').to_f + @txt4.gsub(/[^\d\.]/, '').to_f + @txt5.gsub(/[^\d\.]/, '').to_f
	if var1 == $global_variable then
		puts "Total balance #var1 is equal to the sum of the values present on the exercise screen"
	else
		raise "Total balance #var1 is Not equal to the sum of the values #$global_variable present on the exercise screen"
	end	
  end

  def verifyHomePageHeader
    	@browser.find_element(:text => "ExercisePage").wait_until_present
  end
 
end
