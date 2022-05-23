CREATE TABLE role (
                      id bigint NOT NULL PRIMARY KEY auto_increment,
                      name VARCHAR(255) NOT NULL,
                      code VARCHAR(255) NOT NULL,
                      createddate TIMESTAMP NULL,
                      modifieddate TIMESTAMP NULL,
                      createdby VARCHAR(255) NULL,
                      modifiedby VARCHAR(255) NULL
);

CREATE TABLE user (
                      id bigint NOT NULL PRIMARY KEY auto_increment,
                      username VARCHAR(150) NOT NULL,
                      password VARCHAR(150) NOT NULL,
                      fullname VARCHAR(150) NOT NULL,
                      status int NOT NULL,
                      roleid bigint NOT NULL,
                      createddate TIMESTAMP NULL,
                      modifieddate TIMESTAMP NULL,
                      createdby VARCHAR(255) NULL,
                      modifiedby VARCHAR(255) NULL
);

ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(id);

CREATE TABLE blog (
                      id bigint NOT NULL PRIMARY KEY auto_increment,
                      title VARCHAR(255) NULL,
                      thumbnail VARCHAR(255) NULL,
                      shortdescription TEXT NULL,
                      content TEXT NULL,
                      categoryid bigint NOT NULL,
                      createddate TIMESTAMP NULL,
                      modifieddate TIMESTAMP NULL,
                      createdby VARCHAR(255) NULL,
                      modifiedby VARCHAR(255) NULL
);

CREATE TABLE category (
                          id bigint NOT NULL PRIMARY KEY auto_increment,
                          name VARCHAR(255) NOT NULL,
                          code VARCHAR(255) NOT NULL,
                          createddate TIMESTAMP NULL,
                          modifieddate TIMESTAMP NULL,
                          createdby VARCHAR(255) NULL,
                          modifiedby VARCHAR(255) NULLcategory
);

ALTER TABLE blog ADD CONSTRAINT fk_blog_category FOREIGN KEY (categoryid) REFERENCES category(id);

CREATE TABLE comment (
                         id bigint NOT NULL PRIMARY KEY auto_increment,
                         content TEXT NOT NULL,category
                             userid bigint NOT NULL,
                         blogid bigint NOT NULL,category
                             createddate TIMESTAMP NULL,
                         modifieddate TIMESTAMP NULL,
                         createdby VARCHAR(255) NULL,
                         modifiedby VARCHAR(255) NULL
);

ALTER TABLE comment ADD CONSTRAINT fk_comment_user FOREIGN KEY (userid) REFERENCES user(id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_blog FOREIGN KEY (blogid) REFERENCES blog(id);