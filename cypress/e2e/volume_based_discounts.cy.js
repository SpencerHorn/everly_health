describe('As a buyer, I want to get a discount when I purchase five items of the same product so that Im incentivized to buy more.', () => {
  it('navigates to the everly homepage', () => {
    cy.visit('https://www.everlywell.com')
    cy.title().should('eq', 'Everlywell - Innovative at-home Health Testing')
  })
  it('clicks on Food Sensitivity Comprehensive Test', () => {
    cy.get('.a').contains('Shop our products').click
  })
})