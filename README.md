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

Choose to Configure your own SMTP server

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


# Custom domain instructions (IMPORTANT)

By default, we set up a CNAME on elestio.app domain, but probably you will want to have your domain.

**_Step1:_** Add your domain in the Elestio dashboard as explained here:

    https://docs.elest.io/books/security/page/custom-domain-and-automated-encryption-ssltls

**_Step2:_** Update the env vars to indicate your custom domain.
Open Elestio dashboard > Service overview > click on `UPDATE CONFIG` button > Env tab there update `DOMAIN` with your real domain

**_Step3:_** Now add the key `SHOPWARE_SKIP_WEBINSTALLER: 1` in your `Docker Compose` shopware container environment after the key `INSTALL_ADMIN_PASSWORD`

You will start over with an instance configured with the correct custom domain name.
