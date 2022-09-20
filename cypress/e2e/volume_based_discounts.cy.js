describe('Discounts', () => {
  beforeEach(() => {
    cy.visit('https://www.everlywell.com')
  })

  context("Volume based discounts", () => {

    it('As a buyer, I want to get a discount when I purchase five items of the same product so that I am incentivized to buy more.', () => {
      // Launch and confirm on landing page
      cy.title().should('eq', 'Everlywell - Innovative at-home Health Testing')
      // Click on Food Sensitivity Comprehensive Test
      cy.getByDataId("productCard").eq(0).click()
      // Select and confirm quantitiy of 5 from quantity drop down
      cy.getByDataId("productQuantity").eq(0).select(4).should('have.value', 5)
      // Click add to cart
      cy.get('[data-testid="addToCartButton"]').click()
      // Confirm cart Subtotal equals that of one test
      cy.get('[data-testid="cart-subtotal"]').contains('$299.00')
    })

  })
})