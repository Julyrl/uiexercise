*** Settings ***
Library        SeleniumLibrary
Library        Screenshot
Library        OperatingSystem



*** Variables ***

${btn_consent}                              //button[@class='fc-button fc-cta-consent fc-primary-button'][contains(.,'Consent')]
${menu_products}                            //a[contains(.,' Products')]           
${cart_menu}                                //*[@id="header"]/div/div/div/div[2]/div/ul/li[3]/a             
${txt_search_product}                       //input[@type='text'][contains(@id,'product')]   
${btn_search}                               //button[@type='button'][contains(@id,'search')]
${btn_add_cart}                             (//a[@data-product-id='2'][contains(.,'Add to cart')])[2]
${product}                                  (//div[contains(@class,'productinfo text-center')])[1]
${btn_view_cart}                            //u[contains(.,'View Cart')]
${product_ordered}                          //a[contains(.,'Men Tshirt')]
${btn_proceed_checkout}                     //*[@id="do_action"]/div[1]/div/div/a
${btn_place_order}                          //a[contains(@class,'btn btn-default check_out')]
${link_login}                               //u[contains(.,'Register / Login')]
${btn_continue_shopping}                    //button[@class='btn btn-success close-modal btn-block'][contains(.,'Continue Shopping')]

${URL_store}                                 https://automationexercise.com/
${txt_login}                                 //input[contains(@data-qa,'login-email')]   
${txt_pwd}                                   //input[contains(@type,'password')]
${btn_login}                                 //button[@type='submit'][contains(.,'Login')]
${user_loged}                                //b[contains(.,'autexercise')]


${txt_card_name}                            //input[@class='form-control']
${txt_card_number}                          //*[@id="payment-form"]/div[2]/div/input
${txt_card_cvc}                             //*[@id="payment-form"]/div[3]/div[1]/input
${txt_card_expiration}                      //*[@id="payment-form"]/div[3]/div[2]/input
${txt_card_year}                            //*[@id="payment-form"]/div[3]/div[3]/input
${btn_confirm_order}                        //*[@id="submit"]
${text_order_placed}                        //b[contains(.,'Order Placed!')]
