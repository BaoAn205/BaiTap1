# Dùng Tomcat 9 kèm JDK 17
FROM tomcat:9.0-jdk17

# Xóa app mặc định (ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào Tomcat
COPY target/BaiTap1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
