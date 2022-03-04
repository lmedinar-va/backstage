describe('App', () => {
  it('should render the catalog', () => {
    cy.visit('/');
    cy.contains('DTC Integration Platform Catalog');
  });
});
