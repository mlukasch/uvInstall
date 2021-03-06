delete from "properties";
delete from "sch_email";
delete from "usr_user_role";
delete from "sch_email";
delete from "sch_usr_notification";
delete from "sch_usr_notification_email";
delete from "usr_user";
delete from "runtime_properties";
INSERT INTO "properties" VALUES ('UV.Core.version','002.002.000'),('UV.Plugin-DevEnv.version','002.002.000');
INSERT INTO "sch_email" VALUES (nextval('seq_sch_email'),'admin@example.com'),(nextval('seq_sch_email'),'user@example.com');
INSERT INTO "role" VALUES (nextval('seq_role'), 'Administrator'),(nextval('seq_role'),'User'); 

INSERT INTO "usr_user" VALUES (nextval('seq_usr_user'),'admin',1,'100000:3069f2086098a66ec0a859ec7872b09af7866bc7ecafe2bed3ec394454056db2:b5ab4961ae8ad7775b3b568145060fabb76d7bca41c7b535887201f79ee9788a','John Admin',20);
INSERT INTO "usr_extuser" VALUES (currval('seq_usr_user'), 'admin');
INSERT INTO "usr_user" VALUES (nextval('seq_usr_user'),'user',2,'100000:3069f2086098a66ec0a859ec7872b09af7866bc7ecafe2bed3ec394454056db2:b5ab4961ae8ad7775b3b568145060fabb76d7bca41c7b535887201f79ee9788a','John User',20);
INSERT INTO "usr_extuser" VALUES (currval('seq_usr_user'), 'user');
INSERT INTO "sch_usr_notification" VALUES (nextval('seq_sch_notification'),1,1,1,2),(nextval('seq_sch_notification'),2,1,1,2);
INSERT INTO "sch_usr_notification_email" VALUES (1,1),(2,2);
INSERT INTO "usr_user_role" VALUES (1,1),(1,2),(2,2);
INSERT INTO "runtime_properties" ("id", "name", "value") VALUES (nextval('seq_runtime_properties'), 'backend.scheduledPipelines.limit', '5');
INSERT INTO "runtime_properties" ("id", "name", "value") VALUES (nextval('seq_runtime_properties'), 'run.now.pipeline.priority', '1');
