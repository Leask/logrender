PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "rules" (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `category` TEXT NOT NULL, `pattern` TEXT NOT NULL, `first_matched` DATETIME, `last_matched` DATETIME, `hits` INTEGER DEFAULT 0);
INSERT INTO "rules" VALUES(1,'service','/Flora newsyslog.*: logfile turned over/',NULL,NULL,0);
INSERT INTO "rules" VALUES(2,'direct','/^.*\s+[0-9]+ (Connect|Init DB|Query|Quit).*$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(3,'direct','/^s*(WHERE|AND).*$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(4,'500','/php.*PHP (Notice|Warning):/',NULL,'2014-05-19 17:20:36',213);
INSERT INTO "rules" VALUES(5,'500','/php-cgi.*PHP Parse error:/',NULL,'2013-10-15 07:35:07',17);
INSERT INTO "rules" VALUES(6,'php.json','/php-cgi.*(POST|RETURN|PROXY|HEADER|POST_FORM|POST_BODY):/',NULL,'2013-11-01 09:47:37',5834);
INSERT INTO "rules" VALUES(7,'ignore','/\d.*(dylib|CoreFoundation|Web|App|Kit|HIServices|HIToolbox).*0x00007fff/',NULL,'2014-10-22 12:35:48',25042);
INSERT INTO "rules" VALUES(8,'ignore','/\sentries =>/',NULL,'2014-07-14 13:14:48',3489);
INSERT INTO "rules" VALUES(9,'ignore','/_NotificationSocketReadCallbackGCD/',NULL,NULL,0);
INSERT INTO "rules" VALUES(10,'ignore','/1PasswordAgent/',NULL,NULL,0);
INSERT INTO "rules" VALUES(11,'ignore','/AddressBookSourceSync/',NULL,'2014-07-29 17:50:21',272);
INSERT INTO "rules" VALUES(12,'ignore','/AliWangwang/',NULL,'2014-11-24 12:37:04',13622);
INSERT INTO "rules" VALUES(13,'ignore','/AppleMobileDeviceHelper.*(AMDeviceConnect|DeviceLinkListener)/',NULL,'2014-06-03 04:13:41',73);
INSERT INTO "rules" VALUES(14,'ignore','/auditd/',NULL,'2014-07-03 15:24:14',18812);
INSERT INTO "rules" VALUES(15,'ignore','/Base URL.*null/',NULL,NULL,0);
INSERT INTO "rules" VALUES(16,'ignore','/bootpd.*service time/',NULL,NULL,0);
INSERT INTO "rules" VALUES(17,'ignore','/Case Insensitive Key/',NULL,NULL,0);
INSERT INTO "rules" VALUES(18,'ignore','/CalendarAgent/',NULL,'2015-01-30 06:17:03',6467);
INSERT INTO "rules" VALUES(19,'ignore','/CoreDAVHrefItem/',NULL,NULL,0);
INSERT INTO "rules" VALUES(20,'ignore','/coreaudiod.*automatic stack shots because audio IO is/',NULL,NULL,0);
INSERT INTO "rules" VALUES(21,'ignore','/Contacts.*CardDAVPlugin-ERROR/',NULL,'2014-05-29 04:45:51',161);
INSERT INTO "rules" VALUES(22,'ignore','/coreservicesd.*SendFlattenedData/',NULL,NULL,0);
INSERT INTO "rules" VALUES(23,'ignore','/CGXSetWindowTransform/',NULL,NULL,0);
INSERT INTO "rules" VALUES(24,'ignore','/com\.apple\.dock\.extra.*Event channel check-in failed/',NULL,NULL,0);
INSERT INTO "rules" VALUES(25,'ignore','/com\.apple\.lookupd/',NULL,'2014-09-18 16:08:22',14);
INSERT INTO "rules" VALUES(26,'ignore','/com\.apple\.launchd\.peruser.*com\.macpaw\.CleanMyMac2Helper\.trashWatcher/',NULL,NULL,0);
INSERT INTO "rules" VALUES(27,'ignore','/com\.apple\.Preview\.TrustedBookmarksService/',NULL,'2014-09-18 16:10:30',51);
INSERT INTO "rules" VALUES(28,'ignore','/com\.apple\.security/i',NULL,'2015-01-27 08:12:35',16283);
INSERT INTO "rules" VALUES(29,'ignore','/com\.apple\.ShareKitHelper.*--warning/',NULL,'2014-05-20 11:51:29',43);
INSERT INTO "rules" VALUES(30,'ignore','/com\.apple\.quicklook\.satellite.*bootstrap_look_up2 failed with/',NULL,NULL,0);
INSERT INTO "rules" VALUES(31,'ignore','/com\.apple\.backupd-helper/',NULL,'2014-12-25 06:22:43',789);
INSERT INTO "rules" VALUES(32,'ignore','/com\.apple\.usbmuxd.*Handle/',NULL,'2014-06-12 17:47:55',10014);
INSERT INTO "rules" VALUES(33,'ignore','/com\.apple\.usbmuxd.*_(SendAttachNotification|heartbeat_failed)/',NULL,'2014-07-03 14:57:36',24737);
INSERT INTO "rules" VALUES(34,'ignore','/com\.apple\.mtmd.*handler unblock failed/',NULL,'2014-07-01 08:28:20',158);
INSERT INTO "rules" VALUES(35,'ignore','/com\.google\.Keystone\.Daemon/',NULL,'2013-09-10 11:01:59',20);
INSERT INTO "rules" VALUES(36,'ignore','/com\.apple\.dock\.extra.*(Bug|bogus)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(37,'ignore','/com\.apple\.imdpersistence\.IMDPersistenceAgent.*_CSBackupServerProxySendMessage/',NULL,NULL,0);
INSERT INTO "rules" VALUES(38,'ignore','/com\.apple\.XType\.FontHelper.*(message received|AutoActivation.*scopes)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(39,'ignore','/com\.apple\.WebKit\.Networking.*CFNetwork SSLHandshake failed/',NULL,'2015-01-22 18:07:59',7368);
INSERT INTO "rules" VALUES(40,'ignore','/Dock.*no information back from LS about running process/',NULL,'2014-01-16 05:32:39',3);
INSERT INTO "rules" VALUES(41,'ignore','/Dock.*CGSSetWindowTransformAtPlacement/',NULL,'2014-05-29 05:19:48',37);
INSERT INTO "rules" VALUES(42,'ignore','/Divvy.*CGSNewCIFilterByName/',NULL,'2013-10-19 18:54:47',10);
INSERT INTO "rules" VALUES(43,'ignore','/distnoted.*distnote server agent/',NULL,'2014-12-19 07:45:56',24);
INSERT INTO "rules" VALUES(44,'ignore','/GoogleSoftwareUpdateDaemon/',NULL,'2015-01-30 06:31:07',29799);
INSERT INTO "rules" VALUES(45,'ignore','/Keynote.*was already registered with another name/',NULL,'2013-10-10 15:43:17',185);
INSERT INTO "rules" VALUES(46,'ignore','/Keynote.*NameKeyHashSet and ObjectHashMap out of sync/',NULL,'2013-10-10 15:43:30',146);
INSERT INTO "rules" VALUES(47,'ignore','/Keychain Circle Notification.*rawStatus.*applicants.*peers.*err/',NULL,'2014-05-31 16:29:54',19);
INSERT INTO "rules" VALUES(48,'ignore','/Keychain Circle Notification.*Checking validity of.*notes/',NULL,'2014-05-31 16:29:54',19);
INSERT INTO "rules" VALUES(49,'ignore','/kernel.*memorystatus_thread/',NULL,'2014-11-24 12:37:18',10021);
INSERT INTO "rules" VALUES(50,'ignore','/kernel.*cs_invalid_page/',NULL,'2014-09-18 17:47:24',51777);
INSERT INTO "rules" VALUES(51,'ignore','/kernel.*CO/',NULL,'2013-12-22 21:06:42',831);
INSERT INTO "rules" VALUES(52,'ignore','/kernel.*ID/',NULL,'2015-01-22 18:06:15',18816);
INSERT INTO "rules" VALUES(53,'ignore','/kernel.*nspace-handler-unblock: did not find token/',NULL,'2014-07-01 08:28:20',158);
INSERT INTO "rules" VALUES(54,'ignore','/kernel\[0\]: D/',NULL,'2013-12-22 09:06:17',47);
INSERT INTO "rules" VALUES(55,'ignore','/kernel.*default pager/',NULL,NULL,0);
INSERT INTO "rules" VALUES(56,'ignore','/kernel.*macx_swap.*SUCCESS/',NULL,NULL,0);
INSERT INTO "rules" VALUES(57,'ignore','/kernel.*nspace-handler-set-snapshot-time/',NULL,'2015-01-30 06:29:08',5341);
INSERT INTO "rules" VALUES(58,'ignore','/helpd.*Could not find access page in directory/',NULL,'2013-10-22 10:07:41',145);
INSERT INTO "rules" VALUES(59,'ignore','/imagent.*\[Warning\]/',NULL,'2014-09-18 12:23:08',7683);
INSERT INTO "rules" VALUES(60,'ignore','/icbaccountsd.*ICB(Local|Remote)Dictionary/',NULL,'2014-07-13 04:55:21',2298);
INSERT INTO "rules" VALUES(61,'ignore','/IOAudioStream.*clipIfNecessary/',NULL,'2014-06-17 06:38:56',400);
INSERT INTO "rules" VALUES(62,'ignore','/launchd.*com\.apple\./',NULL,'2015-01-30 06:33:52',51891);
INSERT INTO "rules" VALUES(63,'ignore','/launchd.*com\.andymatuschak\.Sparkle\.download-service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(64,'ignore','/leask.*audit warning/',NULL,'2014-07-03 15:24:14',13304);
INSERT INTO "rules" VALUES(65,'ignore','/last message repeated [0-9]+ time/',NULL,'2015-01-30 06:36:43',126655);
INSERT INTO "rules" VALUES(66,'ignore','/Locum.*Connection with distnoted server was invalidated/',NULL,NULL,0);
INSERT INTO "rules" VALUES(67,'ignore','/lsboxd.*\@AE relay/',NULL,NULL,0);
INSERT INTO "rules" VALUES(68,'ignore','/lsboxd.*Not allowing process/',NULL,'2014-05-27 08:08:49',262);
INSERT INTO "rules" VALUES(69,'ignore','/login.*_PROCESS/',NULL,'2015-01-30 06:38:46',3008);
INSERT INTO "rules" VALUES(70,'ignore','/login.*in /',NULL,'2014-07-29 13:42:32',26);
INSERT INTO "rules" VALUES(71,'ignore','/librariand/',NULL,'2014-05-29 08:44:21',254);
INSERT INTO "rules" VALUES(72,'ignore','/loginwindow/',NULL,'2015-01-22 18:06:21',15044);
INSERT INTO "rules" VALUES(73,'ignore','/Messages.*(\[Warning\]|ERROR)/',NULL,'2014-09-18 12:23:07',617);
INSERT INTO "rules" VALUES(74,'ignore','/mds.*(Invalid|error)/',NULL,'2014-09-18 22:22:10',926);
INSERT INTO "rules" VALUES(75,'ignore','/mdworker.*Unable to talk to lsboxd/',NULL,NULL,0);
INSERT INTO "rules" VALUES(76,'ignore','/mdworker.*Date validation error/',NULL,NULL,0);
INSERT INTO "rules" VALUES(77,'ignore','/mdworker.*WARNING Invalid component, discarding/',NULL,NULL,0);
INSERT INTO "rules" VALUES(78,'ignore','/mdworker.*iCal\.mdimporter/',NULL,NULL,0);
INSERT INTO "rules" VALUES(79,'ignore','/MDCrashReportTool.*CrashReportCopierAFC/',NULL,'2014-06-02 14:44:38',4971);
INSERT INTO "rules" VALUES(80,'ignore','/mDNSResponder.*(Could not write data to clientPID|DNSServiceGetAddrInfo)/',NULL,'2014-05-30 16:42:58',672);
INSERT INTO "rules" VALUES(81,'ignore','/mtmd.*(Invalid argument|No such file or directory)/',NULL,'2014-12-19 08:23:33',2317);
INSERT INTO "rules" VALUES(82,'ignore','/mtmfs.*long message send to mtmd/',NULL,'2014-04-09 18:49:46',121);
INSERT INTO "rules" VALUES(83,'ignore','/mstreamd/',NULL,NULL,0);
INSERT INTO "rules" VALUES(84,'ignore','/NotificationCenter.*Connection interrupted/',NULL,'2014-03-17 03:36:57',83);
INSERT INTO "rules" VALUES(85,'ignore','/profiled.*Idled\./',NULL,NULL,0);
INSERT INTO "rules" VALUES(86,'ignore','/Performance: Please update this scripting addition/',NULL,NULL,0);
INSERT INTO "rules" VALUES(87,'ignore','/QuickLookUIHelper.*Metadata\.framework.*MDItemRef MDItemCreate/',NULL,NULL,0);
INSERT INTO "rules" VALUES(88,'ignore','/SafariDAVClient.*ApplePushService: APSConnection being used without a delegate queue/',NULL,NULL,0);
INSERT INTO "rules" VALUES(89,'ignore','/securebackupd.*Escrow no longer trusted/',NULL,NULL,0);
INSERT INTO "rules" VALUES(90,'ignore','/System Preferences.*\*\*\* WARNING/',NULL,'2014-05-28 05:05:15',16);
INSERT INTO "rules" VALUES(91,'ignore','/Payload as (original|full) URL/',NULL,NULL,0);
INSERT INTO "rules" VALUES(92,'ignore','/Problem Reporter.*\*\*\* WARNING/',NULL,NULL,0);
INSERT INTO "rules" VALUES(93,'ignore','/query.*string.*length.*contents/',NULL,NULL,0);
INSERT INTO "rules" VALUES(94,'ignore','/restricted.*bool.*true/',NULL,NULL,0);
INSERT INTO "rules" VALUES(95,'ignore','/ReportCrash.*Saved crash report for/',NULL,'2014-12-06 12:43:27',359);
INSERT INTO "rules" VALUES(96,'ignore','/Reeder.*READABILITY/',NULL,NULL,0);
INSERT INTO "rules" VALUES(97,'ignore','/Reeder.*BAD TOKEN/',NULL,NULL,0);
INSERT INTO "rules" VALUES(98,'ignore','/Reeder.*LOGIN/',NULL,NULL,0);
INSERT INTO "rules" VALUES(99,'ignore','/SafariForWebKitDevelopment.*CGSGetWindowBounds/',NULL,NULL,0);
INSERT INTO "rules" VALUES(100,'ignore','/SafariForWebKitDevelopment.*PScurrentwindowbounds/',NULL,NULL,0);
INSERT INTO "rules" VALUES(101,'ignore','/SafariForWebKitDevelopment.*Error.*setting resolution to/',NULL,NULL,0);
INSERT INTO "rules" VALUES(102,'ignore','/Safari.*CGContextClipToRect/',NULL,NULL,0);
INSERT INTO "rules" VALUES(103,'ignore','/Safari.*\*\*\* WARNING/',NULL,'2014-05-29 02:47:51',50);
INSERT INTO "rules" VALUES(104,'ignore','/sandboxd.*deny/',NULL,'2014-12-19 07:38:46',13974);
INSERT INTO "rules" VALUES(105,'ignore','/ScreenCapture/',NULL,'2014-09-18 15:48:06',771);
INSERT INTO "rules" VALUES(106,'ignore','/SogouServices/',NULL,'2014-12-19 07:13:13',514);
INSERT INTO "rules" VALUES(107,'ignore','/SystemUIServer/',NULL,'2015-01-30 05:50:05',1046);
INSERT INTO "rules" VALUES(108,'ignore','/System Preferences.*Unable to open IOHIDSystem/',NULL,'2014-06-02 16:57:18',41);
INSERT INTO "rules" VALUES(109,'ignore','/secd.*SOSCoderUnwrap No message to send and not done, are we stuck/',NULL,NULL,0);
INSERT INTO "rules" VALUES(110,'ignore','/usernoted.*Failed to validate application at/',NULL,'2014-05-28 18:12:50',90);
INSERT INTO "rules" VALUES(111,'ignore','/UserEventAgent.*mach_port_mod_refs returned error/',NULL,'2014-04-03 15:57:00',132);
INSERT INTO "rules" VALUES(112,'ignore','/usbmuxd.*AMDevice/',NULL,'2014-09-18 16:17:17',11125);
INSERT INTO "rules" VALUES(113,'ignore','/VDCAssistant.*VDCAssistant/',NULL,'2014-03-20 18:27:10',15);
INSERT INTO "rules" VALUES(114,'ignore','/WebProcess/',NULL,'2014-05-28 16:53:54',3);
INSERT INTO "rules" VALUES(115,'ignore','/WindowServer/',NULL,'2015-01-22 18:07:27',99268);
INSERT INTO "rules" VALUES(116,'ignore','/XPCErrorDescription string/',NULL,NULL,0);
INSERT INTO "rules" VALUES(117,'ignore','/xpcproxy.*assertion failed.*xpcproxy/',NULL,'2014-06-02 16:52:27',5369);
INSERT INTO "rules" VALUES(118,'ignore','/Twitter\[.*\]:/',NULL,'2014-11-24 12:17:14',22026);
INSERT INTO "rules" VALUES(119,'ignore','/"Accept-Language" = en;/',NULL,NULL,0);
INSERT INTO "rules" VALUES(120,'ignore','/Authorization = "OAuth oauth_signature=/',NULL,NULL,0);
INSERT INTO "rules" VALUES(121,'ignore','/<KS.*:/',NULL,'2015-01-30 06:30:40',17581);
INSERT INTO "rules" VALUES(122,'ignore','/=KS/',NULL,'2015-01-30 06:30:39',5068);
INSERT INTO "rules" VALUES(123,'ignore','/>,/',NULL,'2015-01-30 06:30:39',6973);
INSERT INTO "rules" VALUES(124,'ignore','/<o:/',NULL,'2015-01-30 06:30:39',6959);
INSERT INTO "rules" VALUES(125,'ignore','/<\?xml version="1\.0" encoding="UTF-8" standalone="yes"\?>/',NULL,'2015-01-30 06:30:40',4519);
INSERT INTO "rules" VALUES(126,'ignore','/^\s>$/',NULL,'2015-01-30 06:30:40',6456);
INSERT INTO "rules" VALUES(127,'ignore','/};/',NULL,'2015-01-30 06:30:39',509213);
INSERT INTO "rules" VALUES(128,'ignore','/\)}/',NULL,'2015-01-30 06:30:39',5183);
INSERT INTO "rules" VALUES(129,'ignore','/\);/',NULL,'2015-01-22 18:07:26',5495);
INSERT INTO "rules" VALUES(130,'ignore','/^\s\)$/',NULL,'2015-01-22 18:06:21',6735);
INSERT INTO "rules" VALUES(131,'ignore','/^\s*}$/',NULL,'2015-01-30 06:30:39',370098);
INSERT INTO "rules" VALUES(132,'ignore','/"com\.google\.GoogleDrive" = {/',NULL,'2015-01-30 06:30:39',2167);
INSERT INTO "rules" VALUES(133,'ignore','/"com\.google\.Chrome" = {/',NULL,'2015-01-30 06:30:39',2168);
INSERT INTO "rules" VALUES(134,'ignore','/"\.tools\.google\.com",/',NULL,'2014-09-18 16:48:32',2162);
INSERT INTO "rules" VALUES(135,'ignore','/"\.www\.google\.com",/',NULL,'2014-09-18 16:48:32',2162);
INSERT INTO "rules" VALUES(136,'ignore','/"\.corp\.google\.com"/',NULL,'2014-09-18 16:48:32',2162);
INSERT INTO "rules" VALUES(137,'ignore','/\/update2/',NULL,'2015-01-30 06:30:40',11117);
INSERT INTO "rules" VALUES(138,'ignore','/<app/',NULL,'2015-01-30 06:30:40',1075);
INSERT INTO "rules" VALUES(139,'ignore','/app>/',NULL,'2015-01-30 06:30:40',6451);
INSERT INTO "rules" VALUES(140,'ignore','/\/Applications\/Google Chrome\.app\/Contents\/Info\.plist/',NULL,'2013-10-31 08:45:16',1258);
INSERT INTO "rules" VALUES(141,'ignore','/ActivesInfo = {/',NULL,'2015-01-30 06:30:39',2167);
INSERT INTO "rules" VALUES(142,'ignore','/AllowedSubdomains = \(/',NULL,'2014-09-18 16:48:32',2162);
INSERT INTO "rules" VALUES(143,'ignore','/body=/',NULL,'2015-01-30 06:30:39',2169);
INSERT INTO "rules" VALUES(144,'ignore','/creationDate=/',NULL,'2015-01-30 06:30:39',4707);
INSERT INTO "rules" VALUES(145,'ignore','/codebaseURL=/',NULL,'2014-12-25 06:16:33',1453);
INSERT INTO "rules" VALUES(146,'ignore','/codeSize=/',NULL,'2014-12-25 06:16:33',1453);
INSERT INTO "rules" VALUES(147,'ignore','/codeHash=/',NULL,'2014-12-25 06:16:33',1453);
INSERT INTO "rules" VALUES(148,'ignore','/<daystart/',NULL,'2015-01-30 06:30:40',2120);
INSERT INTO "rules" VALUES(149,'ignore','/daystart>/',NULL,NULL,0);
INSERT INTO "rules" VALUES(150,'ignore','/data=/',NULL,'2015-01-30 06:30:40',2125);
INSERT INTO "rules" VALUES(151,'ignore','/displayVersion=".*"/',NULL,'2014-12-25 06:16:34',1453);
INSERT INTO "rules" VALUES(152,'ignore','/EngineVersion = ".*";/',NULL,'2015-01-30 06:30:39',2167);
INSERT INTO "rules" VALUES(153,'ignore','/gupdate>/',NULL,'2015-01-30 06:30:40',4288);
INSERT INTO "rules" VALUES(154,'ignore','/<gupdate/',NULL,NULL,0);
INSERT INTO "rules" VALUES(155,'ignore','/IsSystem = 1;/',NULL,'2015-01-30 06:30:39',2168);
INSERT INTO "rules" VALUES(156,'ignore','/Keystone/',NULL,'2015-01-30 06:30:45',17305);
INSERT INTO "rules" VALUES(157,'ignore','/LastRollCallPingDate =/',NULL,'2015-01-30 06:30:39',6930);
INSERT INTO "rules" VALUES(158,'ignore','/LastActivePingDate =/',NULL,'2015-01-30 06:30:39',6928);
INSERT INTO "rules" VALUES(159,'ignore','/LastActiveDate =/',NULL,'2015-01-30 06:30:39',6932);
INSERT INTO "rules" VALUES(160,'ignore','/needsadmin = false;/',NULL,'2014-08-11 07:48:13',1450);
INSERT INTO "rules" VALUES(161,'ignore','/Omaha/i',NULL,'2015-01-30 06:30:39',7564);
INSERT INTO "rules" VALUES(162,'ignore','/otherProperties={/',NULL,'2014-12-25 06:16:34',1453);
INSERT INTO "rules" VALUES(163,'ignore','/params={/',NULL,'2015-01-30 06:30:39',2167);
INSERT INTO "rules" VALUES(164,'ignore','/productID=/',NULL,'2015-01-30 06:30:39',3996);
INSERT INTO "rules" VALUES(165,'ignore','/productID=/',NULL,NULL,0);
INSERT INTO "rules" VALUES(166,'ignore','/runningFetchers=0/',NULL,'2015-01-30 06:30:39',2168);
INSERT INTO "rules" VALUES(167,'ignore','/status=200/',NULL,'2015-01-30 06:30:40',2120);
INSERT INTO "rules" VALUES(168,'ignore','/status = ok;/',NULL,'2014-12-25 06:16:34',1453);
INSERT INTO "rules" VALUES(169,'ignore','/tickets=/i',NULL,'2015-01-30 06:30:40',12864);
INSERT INTO "rules" VALUES(170,'ignore','/tag=dev/',NULL,'2015-01-30 06:30:39',2534);
INSERT INTO "rules" VALUES(171,'ignore','/tag="dev"/',NULL,NULL,0);
INSERT INTO "rules" VALUES(172,'ignore','/UserInitiated = 0;/',NULL,'2015-01-30 06:30:39',2166);
INSERT INTO "rules" VALUES(173,'ignore','/updatecheck>/',NULL,'2015-01-30 06:30:40',3184);
INSERT INTO "rules" VALUES(174,'ignore','/url="?https:\/\/tools\.google\.com\/service\/update2"?/',NULL,NULL,0);
INSERT INTO "rules" VALUES(175,'ignore','/version=\d+\.\d+\.\d+\.\d+/',NULL,'2015-01-30 06:30:39',4703);
INSERT INTO "rules" VALUES(176,'ignore','/(updated|deleted): {\(/',NULL,NULL,0);
INSERT INTO "rules" VALUES(177,'ignore','/an error occurred saving changes to the persistent store mutated/',NULL,NULL,0);
INSERT INTO "rules" VALUES(178,'ignore','/User Info: {/',NULL,NULL,0);
INSERT INTO "rules" VALUES(179,'ignore','/NSUnderlying(Exception|Error)/',NULL,'2015-01-30 06:17:04',2513);
INSERT INTO "rules" VALUES(180,'ignore','/transactionNumber: 3/',NULL,NULL,0);
INSERT INTO "rules" VALUES(181,'ignore','/^\s\.$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(182,'ignore','/storeName: UserDictionary/',NULL,NULL,0);
INSERT INTO "rules" VALUES(183,'ignore','/localPeerID: leask~/',NULL,NULL,0);
INSERT INTO "rules" VALUES(184,'ignore','/com\.apple\.InputMethodKit\.UserDictionary.*: Core\s?Data/',NULL,'2014-11-24 13:00:05',334);
INSERT INTO "rules" VALUES(185,'ignore','/CGSCopyDisplayUUID: Invalid display/',NULL,'2014-09-19 03:38:42',200400);
INSERT INTO "rules" VALUES(186,'ignore','/The domain\/default pair of (.*, KSBrandID) does not exist/',NULL,NULL,0);
INSERT INTO "rules" VALUES(187,'ignore','/^\s*>$/',NULL,'2015-01-30 06:30:39',5074);
INSERT INTO "rules" VALUES(188,'ignore','/fp = ".*";/',NULL,'2014-12-25 06:16:34',1453);
INSERT INTO "rules" VALUES(189,'ignore','/^.*defaults[\d*]:$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(190,'ignore','/ReportCrash.*Invoking spindump for pid=.*wakeups_rate=.*duration=.*because of excessive wakeups/',NULL,'2014-12-19 07:36:56',255);
INSERT INTO "rules" VALUES(191,'ignore','/NSFilePath = /',NULL,'2014-11-24 13:00:04',40);
INSERT INTO "rules" VALUES(192,'ignore','/NSSQLiteErrorDomain = 19/',NULL,NULL,0);
INSERT INTO "rules" VALUES(193,'ignore','/Managed Object Context Changes, inserted: {\(/',NULL,NULL,0);
INSERT INTO "rules" VALUES(194,'ignore','/(auxDataValue|partOfSpeech) = nil/',NULL,NULL,0);
INSERT INTO "rules" VALUES(195,'ignore','/com\.apple\.time.*Interval maximum value is.*seconds \(specified value:.*\)\./',NULL,'2014-06-02 16:22:46',5203);
INSERT INTO "rules" VALUES(196,'ignore','/aux(Int|String)Value\d+ = (0|nil)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(197,'ignore','/(phrase|shortcut) = .*/',NULL,NULL,0);
INSERT INTO "rules" VALUES(198,'ignore','/xpcd.*quicklookd.*registration request failed.*process failed sandbox check for service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(199,'ignore','/quicklookd.*Domain extension failed.*process failed sandbox check for service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(200,'ignore','/timestamp = \d+/',NULL,NULL,0);
INSERT INTO "rules" VALUES(201,'ignore','/kernel.*hfs: summary table not allowed on FS with block size of/',NULL,'2014-12-25 06:16:35',944);
INSERT INTO "rules" VALUES(202,'ignore','/kernel.*hfs: mounted Google Chrome.*Dev Update on device disk3s2/',NULL,'2013-10-22 21:38:58',20);
INSERT INTO "rules" VALUES(203,'ignore','/^\s*}\),?$/',NULL,'2015-01-22 18:06:17',4);
INSERT INTO "rules" VALUES(204,'ignore','/iTunes.*appBundleRef is not NULL/',NULL,NULL,0);
INSERT INTO "rules" VALUES(205,'ignore','/iTunes.*BUG in libdispatch client: kevent[EVFILT_WRITE] delete/',NULL,NULL,0);
INSERT INTO "rules" VALUES(206,'ignore','/iTunes.*AirPlayAVSys.*Stopping AirPlay/',NULL,'2014-01-13 02:36:27',16);
INSERT INTO "rules" VALUES(207,'ignore','/iTunes.*Mux ID not found in mapping dictionary/',NULL,'2014-07-03 14:58:07',17639);
INSERT INTO "rules" VALUES(208,'ignore','/kernel.*\[BNBTrackpadDevice::init\].*init is complete/',NULL,'2015-01-22 18:05:57',130);
INSERT INTO "rules" VALUES(209,'ignore','/kernel.*\[BNBTrackpadDevice::handleStart\].*returning/',NULL,'2015-01-22 18:06:07',131);
INSERT INTO "rules" VALUES(210,'ignore','/^\s*English$/',NULL,'2014-09-18 17:10:38',135);
INSERT INTO "rules" VALUES(211,'ignore','/^\s*en$/',NULL,'2015-01-22 18:06:21',40);
INSERT INTO "rules" VALUES(212,'ignore','/^\s*$/',NULL,'2015-01-22 18:07:26',18053);
INSERT INTO "rules" VALUES(213,'ignore','/iTunes.*Can\''t handle disconnect with invalid ecid/',NULL,'2014-07-03 14:58:07',17639);
INSERT INTO "rules" VALUES(214,'ignore','/Google Chrome Helper/',NULL,'2013-11-19 10:16:58',140);
INSERT INTO "rules" VALUES(215,'ignore','/com\.apple\.IconServicesAgent/',NULL,'2014-06-02 16:52:47',6568);
INSERT INTO "rules" VALUES(216,'ignore','/kernel\[0\]\:\ .{0,10}$/',NULL,'2014-06-08 13:22:01',1246);
INSERT INTO "rules" VALUES(217,'ignore','/Google Chrome/',NULL,'2015-01-30 06:30:39',28071);
INSERT INTO "rules" VALUES(218,'ignore','/mDNSResponder.*handle_resolve_request bad interfaceIndex/',NULL,'2014-06-02 16:05:31',91430);
INSERT INTO "rules" VALUES(219,'ignore','/mDNSResponder.*do_mDNSSendWakeupPacket write failed Device not configured/',NULL,'2014-05-20 06:49:53',1142);
INSERT INTO "rules" VALUES(220,'ignore','/iBetterCharge.*onnect/',NULL,'2014-06-03 13:02:21',21639);
INSERT INTO "rules" VALUES(221,'ignore','/awacsd.*CFNetwork SSLHandshake failed/',NULL,'2014-06-01 01:14:42',28);
INSERT INTO "rules" VALUES(222,'ignore','/iBetterCharge.*Send wakeUp for/',NULL,'2014-04-30 06:23:04',920);
INSERT INTO "rules" VALUES(223,'ignore','/cloudd.*error/i',NULL,'2014-11-24 13:00:04',312069);
INSERT INTO "rules" VALUES(224,'ignore','/identityservicesd.*Warning/i',NULL,'2015-01-30 05:57:13',9899);
INSERT INTO "rules" VALUES(225,'ignore','/Dropbox.*assertion failed/',NULL,'2014-06-03 15:48:08',228);
INSERT INTO "rules" VALUES(226,'ignore','/networkd.*NETProxyLookup/',NULL,'2015-01-15 07:16:42',361);
INSERT INTO "rules" VALUES(227,'ignore','/ubd.*iCloud Documents through ubd is deactivated/',NULL,'2014-07-15 06:18:33',1062);
INSERT INTO "rules" VALUES(228,'ignore','/wirelessproxd.*Stopped advertising for identityservicesd/',NULL,'2014-06-17 06:07:55',462);
INSERT INTO "rules" VALUES(229,'ignore','/error =\s*{/',NULL,'2014-07-08 01:43:47',153377);
INSERT INTO "rules" VALUES(230,'ignore','/clientError =\s*{/',NULL,'2014-07-29 18:48:42',307558);
INSERT INTO "rules" VALUES(231,'ignore','/type = atomicFailure;/',NULL,'2014-07-29 18:48:42',305597);
INSERT INTO "rules" VALUES(232,'ignore','/errorInternal = "Atomic failure";/',NULL,'2014-07-14 12:50:36',305249);
INSERT INTO "rules" VALUES(233,'ignore','/errorKey = ck1erxwq2;/',NULL,NULL,0);
INSERT INTO "rules" VALUES(234,'ignore','/code = failure;/',NULL,'2014-07-08 01:43:47',153378);
INSERT INTO "rules" VALUES(235,'ignore','/Finder.*CoreThemeRenderer/',NULL,'2014-06-16 18:47:51',37);
INSERT INTO "rules" VALUES(236,'ignore','/DesktopServicesHelper.*NSFileCoordinator/',NULL,'2014-12-19 07:51:31',13);
INSERT INTO "rules" VALUES(237,'ignore','/errorKey = ckfnzg23;/',NULL,NULL,0);
INSERT INTO "rules" VALUES(238,'ignore','/locationd.*assuming english/',NULL,'2014-12-17 12:27:11',2574);
INSERT INTO "rules" VALUES(239,'ignore','/rtcreporting.*sendMessageWithCategory/',NULL,'2014-06-17 10:52:52',9333);
INSERT INTO "rules" VALUES(240,'ignore','/error: 107: Malformed bundle/',NULL,'2014-08-11 07:48:17',14792);
INSERT INTO "rules" VALUES(241,'ignore','/apsd.*Warning.*CSDB/',NULL,'2014-06-17 10:59:44',671);
INSERT INTO "rules" VALUES(242,'ignore','/errorKey = .*;/',NULL,'2014-07-29 18:48:42',307104);
INSERT INTO "rules" VALUES(243,'ignore','/NetAuthSysAgent.*TUAMHandler/',NULL,'2014-12-19 07:37:57',103);
INSERT INTO "rules" VALUES(244,'ignore','/mds.*Root store set to FSOnly with matching create/',NULL,'2014-12-19 07:38:39',95);
INSERT INTO "rules" VALUES(245,'ignore','/mds_stores.*si_set_attr_ctx/',NULL,'2014-11-24 12:22:55',5745);
INSERT INTO "rules" VALUES(246,'ignore','/authd.*for authorization created by/',NULL,'2014-09-19 03:38:36',1116);
INSERT INTO "rules" VALUES(247,'ignore','/CoreServicesUIAgent.*while setting quarantine data/',NULL,'2014-07-03 15:25:16',23);
INSERT INTO "rules" VALUES(248,'ignore','/kernel.*CoreServicesUIAg.*Unable to quarantine/',NULL,'2014-06-06 07:33:28',15);
INSERT INTO "rules" VALUES(249,'ignore','/cloudphotosd.*errors/i',NULL,'2014-06-16 08:23:23',21);
INSERT INTO "rules" VALUES(250,'ignore','/Domain.*com\.apple\.mmcs/',NULL,'2014-06-18 04:42:47',521);
INSERT INTO "rules" VALUES(251,'ignore','/Code.*\:.*14/',NULL,'2014-09-18 13:01:58',1179);
INSERT INTO "rules" VALUES(252,'ignore','/Desc.*\:.*The server returned HTTP status code\:.*401/',NULL,'2014-06-18 04:42:30',517);
INSERT INTO "rules" VALUES(253,'ignore','/UserInfo: {/',NULL,'2014-07-09 08:20:55',665);
INSERT INTO "rules" VALUES(254,'ignore','/NSDescription = "The server returned HTTP status code: 401";/',NULL,'2014-06-18 04:42:30',517);
INSERT INTO "rules" VALUES(255,'ignore','/kMMCSErrorHTTPBody/',NULL,'2014-06-16 08:25:02',66);
INSERT INTO "rules" VALUES(256,'ignore','/cloudphotosd.*Notice.*MSSubscriber/',NULL,'2014-06-18 04:42:48',1487);
INSERT INTO "rules" VALUES(257,'ignore','/cloudphotosd.*error/i',NULL,'2014-06-18 04:58:41',891);
INSERT INTO "rules" VALUES(258,'ignore','/NSLocalizedDescription = "The server returned HTTP status code: 401";/',NULL,'2014-06-18 04:42:30',504);
INSERT INTO "rules" VALUES(259,'ignore','/kMMCSErrorHTTP/',NULL,'2014-06-18 04:42:30',3008);
INSERT INTO "rules" VALUES(260,'ignore','/Spotlight.*Warning.*_indexingUpdated/',NULL,'2014-06-17 11:01:48',222);
INSERT INTO "rules" VALUES(261,'ignore','/Accept = "application\/vnd\.com\.apple\.me\.ubchunk\+protobuf";/',NULL,'2014-06-18 04:42:30',484);
INSERT INTO "rules" VALUES(262,'ignore','/"Content\-Type" = "application\/.*";/',NULL,'2014-09-18 13:59:12',522);
INSERT INTO "rules" VALUES(265,'ignore','/"x-apple-mmcs-dataclass" = ".*";/',NULL,'2014-06-18 04:42:30',433);
INSERT INTO "rules" VALUES(266,'ignore','/"x-apple-mmcs-auth" = ".*";/',NULL,'2014-06-18 04:42:30',433);
INSERT INTO "rules" VALUES(267,'ignore','/kATSFontTestSeverityFatalError/',NULL,'2014-06-16 08:49:34',127);
INSERT INTO "rules" VALUES(268,'ignore','/mdworker.*Validation failed/',NULL,'2014-06-16 08:49:33',127);
INSERT INTO "rules" VALUES(269,'ignore','/Code.*\:.*3/',NULL,'2014-09-18 11:57:19',144);
INSERT INTO "rules" VALUES(270,'ignore','/Desc.*\:.*The photo file cannot be accessed\./',NULL,'2014-06-18 04:42:28',121);
INSERT INTO "rules" VALUES(271,'ignore','/NSLocalizedDescription = "The photo file cannot be accessed\.";/',NULL,'2014-06-18 04:42:28',121);
INSERT INTO "rules" VALUES(272,'ignore','/"x-apple-mmcs-proto-version" = "3\.9";/',NULL,'2014-06-18 04:42:30',413);
INSERT INTO "rules" VALUES(273,'ignore','/"x-apple-mme-dsid" = .*;/',NULL,'2014-06-18 04:42:30',413);
INSERT INTO "rules" VALUES(274,'ignore','/"x-apple-request-uuid" = ".*";/',NULL,'2014-06-18 04:42:30',413);
INSERT INTO "rules" VALUES(275,'ignore','/Domain.*\:.*MSSubscriberErrorDomain/',NULL,'2014-06-18 04:42:28',119);
INSERT INTO "rules" VALUES(276,'ignore','/"x-mme-client-info" = ".*";/',NULL,'2014-06-18 04:42:30',401);
INSERT INTO "rules" VALUES(278,'ignore','/mdworker.*error/i',NULL,'2014-11-24 12:23:53',270);
INSERT INTO "rules" VALUES(279,'ignore','/rtcreporting.*error/i',NULL,'2014-06-17 09:22:37',1014);
INSERT INTO "rules" VALUES(280,'ignore','/kContinuity/',NULL,'2014-06-17 10:52:50',1599);
INSERT INTO "rules" VALUES(281,'ignore','/kEventType = kContinuityRequestStartAdvertisingOfType;/',NULL,NULL,0);
INSERT INTO "rules" VALUES(282,'ignore','/} for identityservicesd/',NULL,'2014-06-17 10:52:50',533);
INSERT INTO "rules" VALUES(283,'ignore','/wirelessproxd.*Warning.*Stopping current advertisement before restarting/',NULL,'2014-06-16 16:22:46',347);
INSERT INTO "rules" VALUES(284,'ignore','/\s\)"\./',NULL,'2014-06-16 08:49:34',28);
INSERT INTO "rules" VALUES(285,'ignore','/wirelessproxd.*: Attempting to re\-advertise\: .*/',NULL,'2014-06-16 16:27:33',275);
INSERT INTO "rules" VALUES(286,'ignore','/locationd.*Error/',NULL,'2014-07-07 20:11:43',216);
INSERT INTO "rules" VALUES(287,'ignore','/locationd.*Notice.*Inactive/',NULL,'2014-09-19 03:49:38',431);
INSERT INTO "rules" VALUES(288,'ignore','/cloudphotosd.*Warning.*CFNetwork SSLHandshake failed/',NULL,NULL,0);
INSERT INTO "rules" VALUES(289,'ignore','/Desc.*\: NSURLSession error\: The operation couldn’t be completed\./',NULL,'2014-06-18 04:42:47',2);
INSERT INTO "rules" VALUES(290,'ignore','/kernel.*Notice.*Sandbox.*deny/',NULL,'2014-09-19 03:51:32',3078);
INSERT INTO "rules" VALUES(291,'ignore','/wirelessproxd.*advertising/',NULL,'2014-07-10 08:07:48',1558);
INSERT INTO "rules" VALUES(292,'ignore','/wirelessproxd.*Warning.*Attempting to advertise/',NULL,'2014-06-17 10:52:50',508);
INSERT INTO "rules" VALUES(293,'ignore','/mds.*Error.*DiskStore\.Normal/',NULL,'2014-09-18 15:56:37',30);
INSERT INTO "rules" VALUES(294,'ignore','/nsurlsessiond.*Error/',NULL,'2014-09-18 13:58:45',21);
INSERT INTO "rules" VALUES(295,'ignore','/type = expiredPutReceipt;/',NULL,'2014-07-29 18:48:36',495);
INSERT INTO "rules" VALUES(296,'ignore','/errorDescription = "Upload receipt is invalid because it has expired\.";/',NULL,'2014-07-29 18:48:36',495);
INSERT INTO "rules" VALUES(297,'ignore','/errorInternal = "expired upload receipt";/',NULL,'2014-07-14 12:50:35',491);
INSERT INTO "rules" VALUES(298,'ignore','/parentalcontrolsd.*Error/',NULL,'2014-08-18 04:46:27',485);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('rules',298);
COMMIT;
