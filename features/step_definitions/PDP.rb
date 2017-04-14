When(/^user types tires's id15333$/) do
  @tiresID = '15333'
  @browser.element(:xpath, "//div[@id='mainMenuWrapper']/div[2]/ul[2]/li/div/form/fieldset/input").send_keys (@tiresID)
end

Then(/^Verify that pdp Shop Tires is displayed$/) do
  @browser.element(:css, "h1.page-title").text == "Shop Tires".upcase
end

And(/^verify that searched ID is displayed for tires$/) do
  @browser.element(:css, 'div.manufacturer-number').text == "#"+ (@tiresID)
  @tires_name = @browser.element(:class, "product-name").text
end

Then(/^change qnt to 2$/) do
  sleep (2)
 @qnt = @browser.select_list.select("2")
end

Then(/^press on All sizes link$/) do
  @browser.element(:link_text, "All sizes").click
end

And(/^verify that master product is displayed Sizes and Specs$/) do
  @browser.element(:css, "#productSizes > div.small-12.columns > p").text == "Select a size to view specifications"
end

And(/^press on Minicart$/) do
    @qnt_in_cart = @browser.element(:xpath, "html/body/div[2]/div[3]/div/div/div[2]/div[2]/ul[2]/li[2]/div/div/a/span/span").text
    @click = @browser.element(xpath,"html/body/div[1]/div[3]/div/div/div[2]/div[2]/ul[2]/li[2]/div/a/span/span").click
    if @click == false
      @browser.element(:link_text, (@qnt_in_cart)).click
    end
end
And(/^Verify that Cart page is displayed$/) do
  @browser.element(:css, ".small-12.columns.page-title>h1").text == "your cart".upcase
end

Then(/^verify that added product is displayed on cart$/) do
  @browser.element(:class, "product-name").text == @tires_name
end

When(/^user types wheel's idS577670148H5BHX$/) do
  @wheelsID = 'S577670148H5BHX'
  @browser.element(:xpath, "//div[@id='mainMenuWrapper']/div[2]/ul[2]/li/div/form/fieldset/input").send_keys (@wheelsID)
end

Then(/^Verify that pdp Shop Wheels is displayed$/) do
  @browser.element(:css, "h1.page-title").text == "Shop wheels".upcase
end

And(/^verify that searched ID is displayed for wheels$/) do
  @browser.element(:css, 'div.manufacturer-number').text == "#"+ (@wheelsID)
  @wheels_name = @browser.element(:class, "product-name").text
end