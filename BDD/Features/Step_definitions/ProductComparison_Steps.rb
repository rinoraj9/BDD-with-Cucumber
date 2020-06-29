Given(/^Launch the demo\.open\.cart application$/) do
  $driver.get('https://demo.opencart.com/')
end

Then(/^Click on Login$/) do
  $driver.link(:xpath=>"//li[@class='dropdown']//a[@href='https://demo.opencart.com/index.php?route=account/account']").click();
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=account/login']").click();
end

And(/^Enter the Name and Password and Click on login button$/) do
  $driver.text_field(:xpath=>"//input[@name='email']").set('rambo.david@gmail.com');
  $driver.text_field(:xpath=>"//input[@name='password']").set("12345");
end

And(/^Enter the key in the search text box\. Hit Enter button$/) do
  $driver.text_field(:xpath=>"//input[@name='search']").set('apple');
  $driver.input(:id,'search').send_keys :enter

end

Then(/^Select Monitors under components from the dropdown$/) do
  $driver.select(:xpath=>"//select[@name='category_id']//option[@value='28']").click();
  $driver.button(:xpath=>"//input[@id='button-search']").click();
end

And(/^Click on Phones and PDAs tab$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=product/category&path=24']").click();
end

And(/^Sort from the price\(High>low\)$/) do
  $driver.select(:xpath=>"//select[@id='input-sort']//option[@value='https://demo.opencart.com/index.php?route=product/category&path=24&sort=p.price&order=DESC']").click();
end

Then(/^Click on add to compare and click on close button$/) do

  3.times do
    $driver.button(:xpath=>"//button[@data-original-title='Compare this Product']").click();
    $driver.button(:xpath=>"//button[@class='close']").click();
    sleep 1
  end

end

Then(/^Click on Product compare$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=product/compare']").click();
end

And(/^Click on first phone link$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=product/product&product_id=29']").click();
end

Then(/^Check the fifth feature in the description section and write it into a flat file$/) do
  features=$driver.data(:xpath=>"//div[@class='tab-pane active']//li")+4;
  File.open("C:\\Users\\rhino\\Desktop\\PC.txt",'w') {|f| f.write(features)}
end

Then(/^Click on add to cart$/) do
  $driver.button(:xpath=>"//button[@id='button-cart']").click();
end

Then(/^click on shopping cart on the ribbon message$/) do
  $driver.link(:xpath=>"//div[@class='alert alert-success alert-dismissible']//a[@href='https://demo.opencart.com/index.php?route=checkout/cart']").click();
end

And(/^click on checkout button$/) do
  $driver.link(:xpath=>"//div[@class='pull-right']//a[@href='https://demo.opencart.com/index.php?route=checkout/checkout']").click();
end

And(/^click on continue buttons$/) do
  pending
end

Then(/^Check the Terms and conditions box and click continue$/) do
  pending
end

Then(/^Click confirm order$/) do
  pending
end

And(/^Click browser back button$/) do
  pending
end

Then(/^click on order history$/) do
  pending
end

Then(/^click on subscribe to news letters$/) do
  pending
end

And(/^click on extras\-> special in the footer$/) do
  pending
end

And(/^click on list or grid$/) do
  pending
end

Then(/^Click on Logout link$/) do
  pending
end