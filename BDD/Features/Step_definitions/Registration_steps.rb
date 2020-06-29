Given(/^Launch the demo open cart application$/) do
  $driver.get('https://demo.opencart.com/')
end

Then(/^Click on Register$/) do
  $driver.link(:xpath=>"//li[@class='dropdown']//a[@href='https://demo.opencart.com/index.php?route=account/account']").click();
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=account/register']").click();
end

And(/^Enter the details Name, Email, Telephone and Password$/) do
  $driver.text_field(:xpath=>"//input[@name='firstname']").set('rambo');
  $driver.text_field(:xpath=>"//input[@name='lastname']").set('david');
  $driver.text_field(:xpath=>"//input[@name='email']").set('rambo.david@gmail.com');
  $driver.text_field(:xpath=>"//input[@name='telephone']").set('2134567890');
  $driver.text_field(:xpath=>"//input[@name='password']").set('12345')
  $driver.text_field(:xpath=>"//input[@name='confirm']").set('12345')
end

Then(/^Click the privacy check box$/) do
  $driver.checkbox(:xpath=>"//input[@name='agree']").click();
end

And(/^Click on continue$/) do
  $driver.button(:xpath=>"//input[@type='submit']").click();
end

Then(/^Click on contact Link$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=information/contact']").click();
end

And(/^Type the Enquiry$/) do
  $driver.text_field(:xpath=>"//textarea[@id='input-enquiry']")
end

And(/^Click on continue and Click on continue again$/) do
  $driver.button(:xpath=>"//input[@type='submit']").click();
  $driver.button(:xpath=>"//div[@class='pull-right']//a[@href='https://demo.opencart.com/index.php?route=common/home']").click();
end

Then(/^Click on the Samsung Galaxy Tab image in the home page$/) do
  $driver.link(:xpath=>"//div[@class='swiper-slide text-center swiper-slide-active']//img[@src='https://demo.opencart.com/image/cache/catalog/demo/banners/iPhone6-1140x380.jpg']").click();
end

And(/^Click on Review button$/) do
  $driver.link(:xpath=>"//a[@href='#tab-review']").click();
end

Then(/^Fill the Details Name, Review and Rating$/) do
  $driver.text_field(:xpath=>"//textarea[@name='text']").set('iPhone 6 is a very good phone');
  $driver.radio(:xpath=>"//input[@type='radio' and @value='5']").click();
  $driver.button(:xpath=>"//button[@id='button-review']").click();
end

And(/^Click on Add to Wishlist$/) do
  $driver.button(:xpath=>"//button[@data-original-title='Add to Wish List']").click();
end

Then(/^Close the success ribbon message on the page$/) do
  $driver.button(:xpath=>"//button[@class='close']").click();
end

And(/^Click on Wishlist$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=account/wishlist']").click();
end

Then(/^Click on Pound Sterling$/) do
  $driver.button(:xpath=>"//button[@name='GBP']").click();
end

And(/^Retrive the value for pound$/) do
  pound=$driver.data(:xpath=>"//div[@class='price']").gettext();
  puts (pound)
end

Then(/^Click on Euro$/) do
  $driver.button(:xpath=>"//button[@name='EUR']").click();
end

And(/^Retrive the Value for euro$/) do
  euro=$driver.data(:xpath=>"//div[@class='price']").gettext();
  puts (euro)
end

Then(/^Click on US Dollar$/) do
  $driver.button(:xpath=>"//button[@name='USD']").click();
end

And(/^Retrive the Value for US dollar$/) do
  usd=$driver.data(:xpath=>"//div[@class='price']").gettext();
  puts (usd)
end

Then(/^Click on Add to Cart$/) do
  $driver.button(:xpath=>"//button[@data-original-title='Add to Cart']").click();
end

And(/^Close the success message$/) do
  $driver.button(:xpath=>"//button[@class='close']").click();
end

When(/^Click Remove icon on the product in My Wishlist page$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=account/wishlist&remove=49']").click();
end

Then(/^Click Continue$/) do
  $driver.link(:xpath=>"//div[@class='pull-right']//a[@href='https://demo.opencart.com/index.php?route=account/account']").click();
end

And(/^Click on Logout$/) do
  $driver.link(:xpath=>"//a[@href='https://demo.opencart.com/index.php?route=account/logout']").click();
end


