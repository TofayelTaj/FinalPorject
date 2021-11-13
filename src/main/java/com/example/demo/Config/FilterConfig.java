package com.example.demo.Config;

import com.example.demo.Filters.LoginFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FilterConfig {

    @Bean
      public FilterRegistrationBean<LoginFilter> getLoginFilter(){
        FilterRegistrationBean<LoginFilter> loginFilter = new FilterRegistrationBean<>();
        loginFilter.setFilter(new LoginFilter());
        loginFilter.addUrlPatterns("/user/*");
        return  loginFilter;

    }


}
