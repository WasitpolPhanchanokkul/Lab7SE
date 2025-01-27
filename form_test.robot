*** Settings ***
Resource          resource.robot

*** Test Cases ***

Open Form
    Open Browser To Form Page
    

Record Success
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    081-111-1234
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Open Form
    Open Browser To Form Page
    

Empty Destination
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    ${EMPTY}
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    081-111-1234
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Open Form
    Open Browser To Form Page
    

Empty Email
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    ${EMPTY}
    Input Phone    081-111-1234
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Open Form
    Open Browser To Form Page
    

Empty Email
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@
    Input Phone    081-111-1234
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Open Form
    Open Browser To Form Page
  

Empty Phone Number
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    ${EMPTY}
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Open Form
    Open Browser To Form Page
    
    
Invalid Phone Number
    Go To Form Page
    Input FirstName       Somsong
    Input LastName    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    191
    Click SubmitButton
    Welcome Page Should Be Open Complete
    [Teardown]    Close Browser