*** Settings ***
Documentation                   A keyword file to use with access-tester-vacation.robot
Library                         SeleniumLibrary
Resource                        ../keyword/PO/po-access-page.robot

*** Variable ***
${URL}                          http://www.ciandt.com


*** Keyword ***
# Test Setup
Access the Ci&T page
  po-access-page.Acess

# 1 . Scenario: Access Tester vacancy
Click on "Carreiras" link menu
  po-access-page.ClickCarreiras

Scroll down to "O que você busca em sua carreira" section
  po-access-page.ClickVerOportunidades

And click in "Ver todas as oportunidades"
  po-access-page.CheckOportunidades
