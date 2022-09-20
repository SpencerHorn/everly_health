Feature: Volume based discounts

    Update the current checkout process to automatically apply volume based discounts. We need admins to be able maintain the configurations of these discounts without
    involving Engineering.

    # UAC:
    # Given my cart contains at least five (five) tests/kits when I go to the checkout page, then I should see an automatic discount that is applied and is equal to the 
    # price of one test.

    # Additionally, if I add a promotion code manually, then the higher savings to the consumer should be applied, whether that be the volume discount or the one-off 
    # promotion code.

Background:
  Given I am on the everlywell homepage

@volume_based_1
Scenario: As a buyer, I want to get a discount when I purchase five items of the same product so that I'm incentivized to buy more.
  Given I add five Food Sensitivity Comprehensive Tests to my cart
  And I dismiss any popups that appear
  When I click Proceed to Checkout
  Then I should see a volume based discount
  And my total should be equal to that of one Food Sensitivity Comprehensive Test

Scenario: As a buyer, if I purchase four items of the same product, and one different product I should not received volume based discounts
  Given I add four Food Sensitivity Comprehensive Tests to my cart
  And I dismiss any popups that appear
  When I click Proceed to Checkout
  Then I should not see a volume based discount
  And my total should be equal to that of four Food Sensitivity Comprehensive Tests

Scenario: As a buyer, if I add five of the same products to the cart I should see the volume based discount, but if I remove one I should no longer see the volume based discount
  Given I add five Food Sensitivity Comprehensive Tests to my cart
  And I dismiss any popups that appear
  When I click Proceed to Checkout
  And I should see a volume based discount
  And my total should be equal to that of one Food Sensitivity Comprehensive Test
  Then I change the cart quantity to four 
  And I should not see a volume based discount
  And my total should be equal to that of four Food Sensitivity Comprehensive Tests

Scenario: As a buyer, if I have a twenty percent off total order discount code, when I add five of the same kits to the cart, then my total should the price of one kit minus twenty percent
Given I add five Food Sensitivity Comprehensive Tests to my cart
  And I dismiss any popups that appear
  When I click Proceed to Checkout
  And I enter the twenty percent off discount code
  Then I should see a volume based discount
  And I should see my twenty percent off coupon applied successfully
  And my total should be equal to that of one Food Sensitivity Comprehensive Test minus twenty%