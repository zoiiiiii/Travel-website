package com.xingying.travel;

import com.xingying.travel.util.MailUtil;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.annotation.Resource;
import javax.mail.MessagingException;

/** 测试发送邮箱文件 **/

@SpringBootTest
@RunWith(SpringRunner.class)
public class MailTest {

    @Resource
    MailUtil mailService;

    @Resource
    TemplateEngine templateEngine;

    @Test
    public void sendTest(){
        mailService.sendSimpleMail("zoiiiiii@qq.com","我在测试邮箱","测试测试测试测试测试");
    }

    @Test
    public void sendHtml(){
        String content = "<html>\n"+"<body>\n"+"<h1> hello word </h3>" + "</body>\n" + "</html>";
        mailService.sendHtmlMail("zoiiiiii@qq.com","我在Html文件",content);
    }

    @Test
    public void sendAttachments() throws MessagingException {
        //附件路径
        String filePath = "G:\\access.log";
        mailService.sendAttachmentsMail("zoiiiiii@qq.com","这个邮件带了附件","我有附件",filePath);
    }

    @Test
    public void sendImg() throws MessagingException {

        String imgPath = "C:\\Users\\Shinelon\\Pictures\\Camera Roll\\1.png";
        String imgId="007";
        String content = "<html>\n"+"<body>\n"+"<h1> 看图片 </h3>" + "<img src=\'cid:"+imgId+"\'></img></body>\n" + "</html>";

        mailService.sendImgMail("zoiiiiii@qq.com","我在Html文件",content,imgPath,imgId);
    }

    @Test
    public void testTemolateMailTest() throws MessagingException {

        //产生4位随机数
        String checkcode = RandomStringUtils.randomNumeric(4);
        Context context = new Context();
        context.setVariable("id",checkcode);

        String emailContent = templateEngine.process("emailTemplate",context);

        mailService.sendHtmlMail("zoiiiiii@qq.com","模板邮件",emailContent);
    }
}
