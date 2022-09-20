describe('Discounts', () => {
  beforeEach(() => {
    // Launch and confirm on landing page
    cy.visit('https://www.everlywell.com')
    cy.title().should('eq', 'Everlywell - Innovative at-home Health Testing')
  })

  context("Volume based discounts", () => {

    it('As a buyer, I want to get a discount when I purchase five items of the same product so that I am incentivized to buy more.', () => {
      // Click on Food Sensitivity Comprehensive Test
      cy.getByDataId("productCard").eq(0).click()
      // Select and confirm quantitiy of 5 from quantity drop down
      cy.getByDataId("productQuantity").eq(0).select(4).should('have.value', 5)
      // Click add to cart
      cy.getByDataId("addToCartButton").click()
      // Confirm cart Subtotal equals that of one test
      cy.getByDataId("cart-subtotal").contains('$299.00')
    })

    it('As a buyer, if I purchase 4 items of the same product, and one different product I should not received volume based discounts', () => {
      // Click on Food Sensitivity Comprehensive Test
      cy.getByDataId("productCard").eq(0).click()
      // Select and confirm quantitiy of 4 from quantity drop down
      cy.getByDataId("productQuantity").eq(0).select(3).should('have.value', 4)
      // Click add to cart
      cy.getByDataId("addToCartButton").click()
      // Confirm cart Subtotal equals that of four test
      cy.getByDataId("cart-subtotal").contains('$1196.00')
    })

    it('As a buyer, if I add five of the same products to the cart I should see the volume based discount, but if I remove one I should no longer see the volume based discount', () => {
      // Click on Food Sensitivity Comprehensive Test
      cy.getByDataId("productCard").eq(0).click()
      // Select and confirm quantitiy of 5 from quantity drop down
      cy.getByDataId("productQuantity").eq(0).select(4).should('have.value', 5)
      // Click add to cart
      cy.getByDataId("addToCartButton").click()
      // Confirm cart Subtotal equals that of one test
      cy.getByDataId("cart-subtotal").contains('$299.00')
      // Update quantity to 4
      cy.getByDataId("productQuantity").eq(0).select(3).should('have.value', 4)
      // Confirm cart Subtotal equals that of four test
      cy.getByDataId("cart-subtotal").contains('$1196.00')
    })

  })

  context("Discount Codes", () => {

    it('As a buyer, if I have a twenty percent off total order discount code, when I add five of the same kits to the cart, then my total should the price of one kit minus twenty percent', () => {
      // Click on Food Sensitivity Comprehensive Test
      cy.getByDataId("productCard").eq(0).click()
      // Select and confirm quantitiy of 5 from quantity drop down
      cy.getByDataId("productQuantity").eq(0).select(4).should('have.value', 5)
      // Click add to cart
      cy.getByDataId("addToCartButton").click()
      // Click on 'Have a promp code?'
      cy.getByDataId("cart-promo-link").click()
      // Enter promo code 'TAKEACTION'
      cy.getByDataId("cart-promo-input").type("TAKEACTION")
      // Click 'Apply' to apply promo code
      cy.get('.styles__Button-sc-1qcs29x-2').click()
      // Confirm the subtotal equals that of one test minus 20% $239.20
      cy.getByDataId("cart-subtotal").contains('$239.20')
    })

  })

})