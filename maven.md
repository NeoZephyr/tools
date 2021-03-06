## Maven
### 安装
```sh
# 下载 Maven
sudo wget <Maven-url>
sudo tar -zxvf apache-maven-3.0.5-bin.tar.gz
```

### 环境变量
```sh
sudo vim /etc/profile
export MAVEN_HOME=/usr/apache-maven-3.0.5
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

# 使配置生效
source /etc/profile
```

### 基本命令
```sh
mvn archetype:generate

# 清除命令
mvn clean
# 编译命令
mvn compile
# 打包命令
mvn package
# 跳过单元测试

mvn clean package -Dmaven.test.skip=true
# 环境隔离
mvn clean package -Dmaven.test.skip=true -Pprod

mvn install
```
```sh
# 强制更新
maven clean compile -U
```

### 插件
```xml
<!-- tomcat 插件 -->
<plugin>
    <!-- 配置插件 -->
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <configuration>
        <port>8080</port>
        <path>/</path>
    </configuration>
</plugin>
```
