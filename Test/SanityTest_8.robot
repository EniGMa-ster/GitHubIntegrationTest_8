*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../../Create_Update_Fetch_Delete_keywords.robot
Library    ../../salesforce_common_functions.py
Suite Setup       Initialize browser and log in to salesforce
Suite Teardown    Log out from the salesforce and close browser


*** Variables ***

${GLOBAL_DRIVER}
${YAML FILE}        ${CURDIR}/properties.yml
# Please update the respective json file in the Resources folder
${account_creation_data}        ${CURDIR}/account_creation_data.json
${accounts_records_id_data}        ${CURDIR}/account_records_id.json


*** Test Cases ***

TestCaseName1
    Create Accounts    ${account_creation_data}
    Update Accounts    ${account_creation_data}     ${accounts_records_id_data}

TestCaseName2
    Create Accounts    ${account_creation_data}
    Update Accounts    ${account_creation_data}     ${accounts_records_id_data}

TestCaseName3
    Create Accounts    ${account_creation_data}
    Update Accounts    ${account_creation_data}     ${accounts_records_id_data}

