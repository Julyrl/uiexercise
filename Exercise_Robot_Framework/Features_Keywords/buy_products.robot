*** Settings ***
Documentation    This set of tests aims to test the navigation of an online store and purchase a product 
Library          SeleniumLibrary
Test Setup       Open the browser
Test Teardown    Close the browser 

Resource        ../Pages_methods/browser_methods.robot
Resource        ../Pages_methods/buy_products_methods.robot
Resource        ../Web_elements/web_elements.robot

*** Test Cases ***

Feature 1 - Search and select shirts
    [Documentation]    As a normal user 
    ...                I want to access the online store 
    ...                In order to select two shirts
    [Tags]             search_products

    Given I accessed the store
    And I navigate to the Products page
    When I search the "shirts"
    Then The products are visible

    
 Feature 2 - Add products to cart
    [Documentation]    As a normal user 
    ...                I want to access the online store 
    ...                In order to add products in the cart
    [Tags]             add_cart 
    Given I selected the "shirts"
    When I click on cart button 
    Then The products are visible in the cart 

 Feature 3 - Login 
    [Documentation]    As a normal user 
    ...                I want to access the online store 
    ...                In order to login in the online store to complete the order
    [Tags]             login
    Given I added the products to cart
    When I click on Procceed to Checkout button
    And I fill out the authentication data
    Then The user is logged successfuly 


 Feature 4 - Pay and confirm purchase
    [Documentation]    As a normal user 
    ...                I want to access the online store 
    ...                In order complete the purchase
    [Tags]             complete_purchase
    Given I logged into the online store
    And I clicked on Place Order button
    When I fill the card information
    And I click on Confirm button
    Then The order is completed successfuly 