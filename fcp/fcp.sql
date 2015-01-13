DROP DATABASE IF EXISTS fcp_system;
CREATE DATABASE fcp_system DEFAULT CHARSET=utf8 ;
USE fcp_system;

DROP TABLE IF EXISTS fcp_card_detail;
CREATE TABLE fcp_card_detail (
    cabinet_id VARCHAR(64) NOT NULL comment '机架号',
	cabinet_location VARCHAR(64) NOT NULL comment '机架位置',
	cabinet_status VARCHAR(64) NOT NULL comment '机架状态',
	
	case_id VARCHAR(64) NOT NULL comment '机箱号',
	case_position VARCHAR(64) NOT NULL comment '机箱机位',
	case_ip VARCHAR(64) NOT NULL comment '机箱ip',
	case_status VARCHAR(64) NOT NULL comment '机箱状态',
	case_timer VARCHAR(64) NOT NULL comment '机箱计时器',
	
	card_id VARCHAR(64) NOT NULL comment '板卡出厂号',
	card_slot VARCHAR(64) NOT NULL comment '板卡通道',
	card_type VARCHAR(64) NOT NULL comment '板卡类型',
	card_staus VARCHAR(64) NOT NULL comment '板卡状态',
	card_timer VARCHAR(64) NOT NULL comment '板卡计时器',
	card_data VARCHAR(1024) NOT NULL comment '板卡详细数据',
	
	update_time datetime NOT NULL comment '数据更新时间',
	primary key (card_type,card_id)
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='板卡详细数据表';

DROP TABLE IF EXISTS fcp_date;
CREATE TABLE fcp_date (
        id VARCHAR(64) NOT NULL comment '辅助参数ID' PRIMARY KEY,
	latest_date datetime NOT NULL comment '最新日期'
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='数据转移辅助表';

DROP TABLE IF EXISTS fcp_warning;
CREATE TABLE fcp_warning (
	cabinet_id VARCHAR(64) NOT NULL comment '机架号',
	case_id VARCHAR(64) NOT NULL comment '机箱号',
	card_id VARCHAR(64) NOT NULL comment '板卡出厂号',
        card_type VARCHAR(64) NOT NULL comment '板卡类型',
	warning_class VARCHAR(64) NOT NULL comment '报警级别',
	warning_content VARCHAR(1024) NOT NULL comment '报警内容',
	warning_time datetime NOT NULL comment '报警时间',
	primary key (card_type,card_id)
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='报警表';

DROP TABLE IF EXISTS fcp_warning_history;
CREATE TABLE fcp_warning_history (
	cabinet_id VARCHAR(64) NOT NULL comment '机架号',
	case_id VARCHAR(64) NOT NULL comment '机箱号',
	card_id VARCHAR(64) NOT NULL comment '板卡出厂号',
	card_type VARCHAR(64) NOT NULL comment '板卡类型',
	warning_class VARCHAR(64) NOT NULL comment '报警级别',
	warning_content VARCHAR(1024) NOT NULL comment '报警内容',
	warning_time datetime NOT NULL comment '报警时间'
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='报警日志表';

DROP TABLE IF EXISTS fcp_log_today;
CREATE TABLE fcp_log_today (
    cabinet_id VARCHAR(64) NOT NULL comment '机架号',
	cabinet_location VARCHAR(64) NOT NULL comment '机架位置',
	cabinet_status VARCHAR(64) NOT NULL comment '机架状态',
	
	case_id VARCHAR(64) NOT NULL comment '机箱号',
	case_position VARCHAR(64) NOT NULL comment '机箱机位',
	case_ip VARCHAR(64) NOT NULL comment '机箱ip',
	case_status VARCHAR(64) NOT NULL comment '机箱状态',
	case_timer VARCHAR(64) NOT NULL comment '机箱计时器',
	
	card_id VARCHAR(64) NOT NULL comment '板卡出厂号',
	card_slot VARCHAR(64) NOT NULL comment '板卡通道',
	card_type VARCHAR(64) NOT NULL comment '板卡类型',
	card_staus VARCHAR(64) NOT NULL comment '板卡状态',
	card_timer VARCHAR(64) NOT NULL comment '板卡计时器',
	card_data VARCHAR(1024) NOT NULL comment '板卡详细数据',
	
	log_time datetime NOT NULL comment '日志数据产生时间'
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='今日日志表';

DROP TABLE IF EXISTS fcp_log_history;
CREATE TABLE fcp_log_history (
    cabinet_id VARCHAR(64) NOT NULL comment '机架号',
	cabinet_location VARCHAR(64) NOT NULL comment '机架位置',
	cabinet_status VARCHAR(64) NOT NULL comment '机架状态',
	
	case_id VARCHAR(64) NOT NULL comment '机箱号',
	case_position VARCHAR(64) NOT NULL comment '机箱机位',
	case_ip VARCHAR(64) NOT NULL comment '机箱ip',
	case_status VARCHAR(64) NOT NULL comment '机箱状态',
	case_timer VARCHAR(64) NOT NULL comment '机箱计时器',
	
	card_id VARCHAR(64) NOT NULL comment '板卡出厂号',
	card_slot VARCHAR(64) NOT NULL comment '板卡通道',
	card_type VARCHAR(64) NOT NULL comment '板卡类型',
	card_staus VARCHAR(64) NOT NULL comment '板卡状态',
	card_timer VARCHAR(64) NOT NULL comment '板卡计时器',
	card_data VARCHAR(1024) NOT NULL comment '板卡详细数据',
	
	log_time datetime NOT NULL comment '日志数据产生时间'
)  ENGINE=INNODB DEFAULT CHARSET=utf8 comment='历史日志表';
