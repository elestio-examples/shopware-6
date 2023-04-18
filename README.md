# Shopware 6 CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/shopware-6"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Shopware 6 server with CI/CD on Elestio

<img src="shopware-6.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open Shopware 6 UI here:

    URL: https://[CI_CD_DOMAIN]
    Login: root
    password: [ADMIN_PASSWORD]

# Configuring email

Once logged in, a window will open, click on next until you reach the Mailer configuration.

Choose Configure own SMTP server

<img src="./steps/step-01.png" style='width: 200px; max-width:100%;'/>

Fill in the following credentials:

    Host: [EMAIL_HOST]
    Port: [EMAIL_PORT]
    Username and Password must be empty
    Encryption: No encryption
    Authentication method: No authentication
    Sender address: [MAIL_FROM_ADDRESS]

<img src="./steps/step-02.png" style='width: 800px; max-width:100%;'/>

Then Next, complete other configurations if desired.
