Given /^that I am on (.*)$/ do |page|
	@homepage=HomePage.new(@browser)
	@homepage.visit
	@homepage.verifyHomePageHeader
	puts "Navigated to the homepage of Exercise"
end
	
Then /^ value of fields should be greater than 0 $/ do
		
	if @txt1.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for textbox1 is less than 0"
	else
		puts "Value for textbox1 is greater than 0"
	end
	  
	if @txt2.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for textbox2 is less than 0"
	else
		puts "Value for textbox2 is greater than 0"
	end
	  
	if @txt3.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for textbox3 is less than 0"
	else
		puts "Value for textbox3 is greater than 0"
	end

	if @txt4.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for textbox4 is less than 0"
	  else
		puts "Value for textbox4 is greater than 0"
	end
	  
	if @txt5.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for textbox5 is less than 0"
	else
		puts "Value for textbox5 is greater than 0"
	end	  

	if @txtbal.gsub(/[^\d\.]/, '').to_f < 0 then
		raise "Value for total balance is less than 0"
	else
		puts "Value for total balance is greater than 0"
	end
end


Then /^ validate if sum of all values equals total balance $/ do
	global_variable = @txt1.gsub(/[^\d\.]/, '').to_f + @txt2.gsub(/[^\d\.]/, '').to_f + @txt3.gsub(/[^\d\.]/, '').to_f + @txt4.gsub(/[^\d\.]/, '').to_f + @txt5.gsub(/[^\d\.]/, '').to_f
	if global_variable == @txtbal.gsub(/[^\d\.]/, '').to_f then
		puts "Total balance is equal to the sum of the values present on the exercise screen"
	else
		raise "Total balance is Not equal to the sum of the values present on the exercise screen"
	end
end

Then /^ I validate if values are formatted as currencies $/ do
	if @txt1.chars.first == "$" then
		puts "Text 1 is formatted as currency"
	else
		raise "Text 1 is Not formatted as currency"
	end

	if @txt2.chars.first == "$" then
		puts "Text 2 is formatted as currency"
	else
		raise "Text 2 is Not formatted as currency"
	end

	if @txt3.chars.first == "$" then
		puts "Text 3 is formatted as currency"
	else
		raise "Text 3 is Not formatted as currency"
	end

	if @txt4.chars.first == "$" then
		puts "Text 4 is formatted as currency"
	else
		raise "Text 4 is Not formatted as currency"
	end

	if @txt5.chars.first == "$" then
		puts "Text 5 is formatted as currency"
	else
		raise "Text 5 is Not formatted as currency"
	end

	if @txtbal.chars.first == "$" then
		puts "Total balance text is formatted as currency"
	else
		raise "Total balance text is Not formatted as currency"
	end
end

Then /^ number of values labels on screen should be (\d+) $/ do |n|
	labels = @browser.labels(class:.....)
	@tmpcount = 0
	labels.each do |label|
		@val = label.text
		if @val.include? "Value" then
			@tmpcount = @tmpcount + 1
		end
	end
	if @tmpcount == n then
		puts "correct number of values -" + n + " are present on the screen"
	else
		raise " Number of values on screen - " + tmpcount + "are different from the expected count of-" + n
	end
end