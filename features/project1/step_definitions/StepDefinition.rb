Given /^that I am on (.*)$/ do |page|
	@homepage=HomePage.new(@browser)
	@homepage.visit
	@homepage.verifyHomePageHeader
	puts "Navigated to the homepage of Exercise"
end
	
Then /^value of fields should be greater than 0$/ do		
	HomePage.new.valuevalidate @txt1
	HomePage.new.valuevalidate @txt2
	HomePage.new.valuevalidate @txt3
	HomePage.new.valuevalidate @txt4
	HomePage.new.valuevalidate @txt5
	HomePage.new.valuevalidate @txtbal
end


Then /^validate if sum of all values equals total balance$/ do	
	HomePage.new.gblsum	
end

Then /^I validate if values are formatted as currencies$/ do
	HomePage.new.currencyformat @txt1
	HomePage.new.currencyformat @txt2
	HomePage.new.currencyformat @txt3
	HomePage.new.currencyformat @txt4
	HomePage.new.currencyformat @txt5
	HomePage.new.currencyformat @txtbal
end

Then /^number of Values labels on screen should be (\d+)$/ do |n|
	HomePage.new.labelcheck(n)
end