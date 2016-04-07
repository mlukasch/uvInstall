# Write access:
chmod -R +rwx /volume
chmod -R +x /config

# Tomcat:
# Copy setenv.sh:
cp /config/setenv.sh $CATALINA_HOME/bin/setenv.sh
#cp /config/tomcat7.conf $CATALINA_HOME/conf/tomcat7.conf


# Copy War-files to Tomcat webapps:
cp /volume/repo/Core/frontend/target/unifiedviews.war $CATALINA_HOME/webapps/
cp /volume/repo/Core/master/target/master.war $CATALINA_HOME/webapps/


# Copy Config-Files to frontend:
#mkdir -p $CATALINA_HOME/webapps/unifiedviews/WEB-INF/
#cp /config/configFrontend.properties $CATALINA_HOME/webapps/unifiedviews/WEB-INF/config.properties
cp /config/logging.properties $CATALINA_HOME/conf/.
cp /config/server.xml $CATALINA_HOME/conf/.
cp /config/web.xml $CATALINA_HOME/conf/.
cp -r /config/conf/* $CATALINA_HOME/conf/.



# Start Tomcat server:
sh $CATALINA_HOME/bin/startup.sh

#chmod -R +rwx /volume/data/backend/working
#chmod -R +rwx /volume/repo/Core/target




#chmod go+rwx /volume/repo/Core/target/dpu

#touch /logs/frontend_err.log
#touch /logs/frontend.log
#chmod -R go+rwx /logs

#chmod -R 0755 /volume/repo/Core/target/lib