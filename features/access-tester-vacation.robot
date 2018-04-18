*** Settings ***
Documentation             A simple test to check if we have tester vacancy
...                       on Ci&T company
Resource                  ../keyword/keyword-access-tester-vacancy.robot
Test Setup                Access the Ci&T page
Test Teardown              Close Browser

*** Test Case ***
1 . Scenario: Access Tester vacancy
  [Tags]  clickCarreiras
  Click on "Carreiras" link menu
  Scroll down to "O que você busca em sua carreira" section
  And click in "Ver todas as oportunidades"
