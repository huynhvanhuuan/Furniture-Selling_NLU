package vn.edu.hcmuaf.fit.helper;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MailSender {
    private static String username = "cuongla253@gmail.com";
    private static String password = "fqwmadurjvyhbder";

    public static boolean sendMail(String to, String subject, String content){
        Session session = connect();
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username,"Furniture Selling"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(content);
            Transport.send(message);
            return true;
        } catch (MessagingException | UnsupportedEncodingException e){
            e.printStackTrace();
            return false;
        }
    }
    private static Session connect(){
        Properties props = new Properties();
        props.put("mail.smtp.auto","true");
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSlSocketFactory");
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.port","587");
        return Session.getInstance(props, new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username,password);
            }
        });
    }
    public static  void main (String[] args){
        System.out.println(sendMail("cuongla253@gmail.com","Test Mail","\"Dear mail crawler\\n\\n No span to my email,please!\"")?"Send mail success":"Send mail fail");
    }
}


