Feature: Automate Demo Open cart

  Scenario Outline: Registration and Add to cart
    Given Launch the demo open cart application
    Then Click on Register
    And Enter the details Name, Email, Telephone and Password
    Then Click the privacy check box
    And Click on continue
    Then Click on contact Link
    And Type the Enquiry
    And Click on continue and Click on continue again
    Then Click on the Samsung Galaxy Tab image in the home page
    And Click on Review button
    Then Fill the Details Name, Review and Rating
    And Click on Add to Wishlist
    Then Close the success ribbon message on the page
    And Click on Wishlist
    Then Click on Pound Sterling
    And Retrive the value for pound
    Then Click on Euro
    And Retrive the Value for euro
    Then Click on US Dollar
    And Retrive the Value for US dollar
    Then Click on Add to Cart
    And Close the success message
    When Click Remove icon on the product in My Wishlist page
    Then Click Continue
    And Click on Logout
    Examples:


