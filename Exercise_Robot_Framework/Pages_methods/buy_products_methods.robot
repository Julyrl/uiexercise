*** Settings ***
Library        SeleniumLibrary
Library        Screenshot
Library        OperatingSystem

Resource        ../Web_elements/web_elements.robot




*** Keywords ***


I accessed the store
    Go To                            ${URL_store}
    Click Button                     ${btn_consent}
I navigate to the Products page
    Click Element                    ${menu_products}  

 I search the "shirts"
    
    Input Text                        ${txt_search_product}    shirts
    Click Button                      ${btn_search}
The products are visible
    Execute JavaScript                    window.scrollTo(0,600)
  #  Wait Until Element Is Visible        ${name_product}
  #  Element Should Be Visible            ${name_product}  
    Take Screenshot  

I selected the "shirts"
    I accessed the store
    I navigate to the Products page
    I search the "shirts"
    The products are visible
    
I click on cart button 
    Wait Until Element Is Visible             ${product}   15  
    Mouse Over                                ${product}
    Take Screenshot
    Wait Until Element Is Visible             ${btn_add_cart}
    Click Element                             ${btn_add_cart}
    Wait Until Element Is Visible            ${btn_continue_shopping}        
    Click Element                             ${btn_continue_shopping}   
    Mouse Over                                ${product}
    Take Screenshot
    Wait Until Element Is Visible             ${btn_add_cart}
    Click Element                             ${btn_add_cart}
    Wait Until Element Is Visible             ${btn_view_cart}
    Click Element                             ${btn_view_cart}
The products are visible in the cart
    Element Should Be Visible                 ${product_ordered}

 I added the products to cart
     I selected the "shirts"
     I click on cart button
     The products are visible in the cart
 I click on Procceed to Checkout button
     Wait Until Element Is Visible                ${btn_proceed_checkout}
     Click Element                                ${btn_proceed_checkout}
I fill out the authentication data
     Click Element                              ${link_login}
     Input Text                                 ${txt_login}    ${user_login}
     Input Text                                 ${txt_pwd}        ${user_pwd}
     Click Button                               ${btn_login}
The user is logged successfuly 
    Take Screenshot
    Element Should Be Visible                ${user_loged}


I logged into the online store
    I added the products to cart
    I click on Procceed to Checkout button
    I fill out the authentication data
    The user is logged successfuly 

 I clicked on Place Order button
     Click Link                                    ${cart_menu}
     Click Link                                    ${btn_proceed_checkout}
     Execute JavaScript                    window.scrollTo(0,600)
     Wait Until Element Is Visible                 ${btn_place_order}
     Click Element                                 ${btn_place_order}

 I fill the card information
    Input Text    ${txt_card_name}            test
    Input Text    ${txt_card_number}          1234
    Input Text    ${txt_card_cvc}             311
    Input Text    ${txt_card_expiration}      10
    Input Text    ${txt_card_year}            2025
     
I click on Confirm button
    Click Button    ${btn_confirm_order}

The order is completed successfuly 
    Element Should Be Visible   ${text_order_placed}
    Take Screenshot




