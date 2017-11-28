package sjsu.jentab.EaseYourLease.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.servlet.Filter;

@Configuration
public class SecurityConfiguration {

    @Bean
    public FilterRegistrationBean basicFilterRegistration() {

        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new BasicFilter());
        registration.addUrlPatterns("/*");
        registration.addInitParameter("client_id", "7b8a40e9-8a32-470b-bdac-848032cf99b0");
        registration.addInitParameter("secret_key", "E6Jekk7E0611umZs4RkD8sZ5FYVZ4IFBPdIPeVB00dY=");
        registration.setName("basicFilter");
        registration.setOrder(1);
        return registration;
    }

}
