function f = email_send(address_out, password_out, address_in, subject, body, attachment)
setpref('Internet','E_mail',address_out);
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',address_out);
setpref('Internet','SMTP_Password',password_out);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', ...
    'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
sendmail(address_in,subject,body, attachment);
