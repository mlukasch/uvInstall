# Write access:
chmod -R +rwx /volume
chmod -R +x /config

# Tomcat:
# Copy setenv.sh:
cp /config/setenv.sh $CATALINA_HOME/bin/setenv.sh

# Copy War-files to Tomcat webapps:
cp /volume/repo/Core/frontend/target/unifiedviews.war $CATALINA_HOME/webapps/
cp /volume/repo/Core/master/target/master.war $CATALINA_HOME/webapps/

# Copy Config-Files to frontend:
cp /config/logging.properties $CATALINA_HOME/conf/.

# Start Tomcat server:
sh $CATALINA_HOME/bin/startup.sh