*** Settings ***
Documentation                       Page Object of Ci&T Carreiras page
Library                             SeleniumLibrary
Library                             DebugLibrary

*** Variables ***
${URL}                              http://www.ciandt.com
${SITE-CARREIRAS}                   https://carreiras.ciandt.com/?language=pt
${SITE-OPPORTUNITY}                 https://carreiras.ciandt.com/opportunity?language=pt
${BROWSER}                          chrome
${HOME-URL}                         home
${LINK-CARREIRAS}                   xpath=(//a[contains(@href,'carreiras')])[1]
${INSTITUTIONAL-HEADER}             Carreiras
${LINK-VER-OPORTUNIDADES}           xpath=(//a[contains(@href,'opportunity')])[1]
${CHECKBOX-CAMPINAS}                //*[@id="select-options-76bd897d-a1fd-e73c-43bb-886c27dc3dca"]/li[3]/span
${NEW-LOCATOR}                      NEW


*** Keywords ***
po-access-page.Acess
  Open Browser                      ${URL}  ${BROWSER}
  Maximize Browser Window
  Location Should Be                ${URL}/${HOME-URL}

po-access-page.ClickCarreiras
  Click Link                        ${LINK-CARREIRAS}
  Select Window                     ${NEW-LOCATOR}
  Location Should Be                ${SITE-CARREIRAS}
  Page Should Contain               ${INSTITUTIONAL-HEADER}

po-access-page.ClickVerOportunidades
  Click Link                        ${LINK-VER-OPORTUNIDADES}
  Location Should Be                ${SITE-OPPORTUNITY}

po-access-page.CheckOportunidades
  Location Should Be                ${SITE-OPPORTUNITY}
  Checkbox Should Be Selected       ${CHECKBOX-CAMPINAS}
