PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "rules" (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `category` TEXT NOT NULL, `pattern` TEXT NOT NULL, `first_matched` DATETIME, `last_matched` DATETIME, `hits` INTEGER DEFAULT 0);
INSERT INTO "rules" VALUES(1,'service','/Flora newsyslog.*: logfile turned over/',NULL,NULL,0);
INSERT INTO "rules" VALUES(2,'direct','/^.*\s+[0-9]+ (Connect|Init DB|Query|Quit).*$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(3,'direct','/^s*(WHERE|AND).*$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(4,'500','/php.*PHP (Notice|Warning):/',NULL,'2013-11-16 07:17:17',207);
INSERT INTO "rules" VALUES(5,'500','/php-cgi.*PHP Parse error:/',NULL,'2013-10-15 07:35:07',17);
INSERT INTO "rules" VALUES(6,'php.json','/php-cgi.*(POST|RETURN|PROXY|HEADER|POST_FORM|POST_BODY):/',NULL,'2013-11-01 09:47:37',5834);
INSERT INTO "rules" VALUES(7,'ignore','/\d.*(dylib|CoreFoundation|Web|App|Kit|HIServices|HIToolbox).*0x00007fff/',NULL,'2013-11-15 10:19:12',3872);
INSERT INTO "rules" VALUES(8,'ignore','/\sentries =>/',NULL,'2013-11-15 08:06:03',46);
INSERT INTO "rules" VALUES(9,'ignore','/_NotificationSocketReadCallbackGCD/',NULL,NULL,0);
INSERT INTO "rules" VALUES(10,'ignore','/1PasswordAgent/',NULL,NULL,0);
INSERT INTO "rules" VALUES(11,'ignore','/AddressBookSourceSync/',NULL,'2013-11-15 14:38:29',49);
INSERT INTO "rules" VALUES(12,'ignore','/AliWangwang/',NULL,'2013-11-07 18:01:57',2268);
INSERT INTO "rules" VALUES(13,'ignore','/AppleMobileDeviceHelper.*(AMDeviceConnect|DeviceLinkListener)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(14,'ignore','/auditd/',NULL,'2013-11-16 07:10:17',7526);
INSERT INTO "rules" VALUES(15,'ignore','/Base URL.*null/',NULL,NULL,0);
INSERT INTO "rules" VALUES(16,'ignore','/bootpd.*service time/',NULL,NULL,0);
INSERT INTO "rules" VALUES(17,'ignore','/Case Insensitive Key/',NULL,NULL,0);
INSERT INTO "rules" VALUES(18,'ignore','/CalendarAgent/',NULL,'2013-11-16 06:46:30',1300);
INSERT INTO "rules" VALUES(19,'ignore','/CoreDAVHrefItem/',NULL,NULL,0);
INSERT INTO "rules" VALUES(20,'ignore','/coreaudiod.*automatic stack shots because audio IO is/',NULL,NULL,0);
INSERT INTO "rules" VALUES(21,'ignore','/Contacts.*CardDAVPlugin-ERROR/',NULL,'2013-11-05 04:58:58',119);
INSERT INTO "rules" VALUES(22,'ignore','/coreservicesd.*SendFlattenedData/',NULL,NULL,0);
INSERT INTO "rules" VALUES(23,'ignore','/CGXSetWindowTransform/',NULL,NULL,0);
INSERT INTO "rules" VALUES(24,'ignore','/com\.apple\.dock\.extra.*Event channel check-in failed/',NULL,NULL,0);
INSERT INTO "rules" VALUES(25,'ignore','/com\.apple\.lookupd/',NULL,'2013-09-10 12:00:10',4);
INSERT INTO "rules" VALUES(26,'ignore','/com\.apple\.launchd\.peruser.*com\.macpaw\.CleanMyMac2Helper\.trashWatcher/',NULL,NULL,0);
INSERT INTO "rules" VALUES(27,'ignore','/com\.apple\.Preview\.TrustedBookmarksService/',NULL,'2013-11-07 15:34:26',10);
INSERT INTO "rules" VALUES(28,'ignore','/com\.apple\.security/i',NULL,'2013-11-16 07:01:37',3975);
INSERT INTO "rules" VALUES(29,'ignore','/com\.apple\.ShareKitHelper.*--warning/',NULL,'2013-10-18 06:31:45',11);
INSERT INTO "rules" VALUES(30,'ignore','/com\.apple\.quicklook\.satellite.*bootstrap_look_up2 failed with/',NULL,NULL,0);
INSERT INTO "rules" VALUES(31,'ignore','/com\.apple\.backupd-helper/',NULL,'2013-10-29 16:15:28',362);
INSERT INTO "rules" VALUES(32,'ignore','/com\.apple\.usbmuxd.*Handle/',NULL,'2013-11-03 16:40:24',8359);
INSERT INTO "rules" VALUES(33,'ignore','/com\.apple\.usbmuxd.*_(SendAttachNotification|heartbeat_failed)/',NULL,'2013-10-22 01:02:07',6132);
INSERT INTO "rules" VALUES(34,'ignore','/com\.apple\.mtmd.*handler unblock failed/',NULL,'2013-10-21 23:44:26',6);
INSERT INTO "rules" VALUES(35,'ignore','/com\.google\.Keystone\.Daemon/',NULL,'2013-09-10 11:01:59',20);
INSERT INTO "rules" VALUES(36,'ignore','/com\.apple\.dock\.extra.*(Bug|bogus)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(37,'ignore','/com\.apple\.imdpersistence\.IMDPersistenceAgent.*_CSBackupServerProxySendMessage/',NULL,NULL,0);
INSERT INTO "rules" VALUES(38,'ignore','/com\.apple\.XType\.FontHelper.*(message received|AutoActivation.*scopes)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(39,'ignore','/com\.apple\.WebKit\.Networking.*CFNetwork SSLHandshake failed/',NULL,'2013-11-16 06:15:07',1954);
INSERT INTO "rules" VALUES(40,'ignore','/Dock.*no information back from LS about running process/',NULL,NULL,0);
INSERT INTO "rules" VALUES(41,'ignore','/Dock.*CGSSetWindowTransformAtPlacement/',NULL,'2013-10-29 14:53:15',9);
INSERT INTO "rules" VALUES(42,'ignore','/Divvy.*CGSNewCIFilterByName/',NULL,'2013-10-19 18:54:47',10);
INSERT INTO "rules" VALUES(43,'ignore','/distnoted.*distnote server agent/',NULL,'2013-11-06 09:46:46',9);
INSERT INTO "rules" VALUES(44,'ignore','/GoogleSoftwareUpdateDaemon/',NULL,'2013-10-31 08:45:40',7660);
INSERT INTO "rules" VALUES(45,'ignore','/Keynote.*was already registered with another name/',NULL,'2013-10-10 15:43:17',185);
INSERT INTO "rules" VALUES(46,'ignore','/Keynote.*NameKeyHashSet and ObjectHashMap out of sync/',NULL,'2013-10-10 15:43:30',146);
INSERT INTO "rules" VALUES(47,'ignore','/Keychain Circle Notification.*rawStatus.*applicants.*peers.*err/',NULL,'2013-10-30 06:44:42',5);
INSERT INTO "rules" VALUES(48,'ignore','/Keychain Circle Notification.*Checking validity of.*notes/',NULL,'2013-10-30 06:44:42',5);
INSERT INTO "rules" VALUES(49,'ignore','/kernel.*memorystatus_thread/',NULL,'2013-11-15 01:46:43',4833);
INSERT INTO "rules" VALUES(50,'ignore','/kernel.*cs_invalid_page/',NULL,'2013-11-16 07:18:23',26614);
INSERT INTO "rules" VALUES(51,'ignore','/kernel.*CO/',NULL,'2013-11-16 07:15:05',212);
INSERT INTO "rules" VALUES(52,'ignore','/kernel.*ID/',NULL,'2013-11-16 07:18:18',3357);
INSERT INTO "rules" VALUES(53,'ignore','/kernel.*nspace-handler-unblock: did not find token/',NULL,'2013-10-21 23:44:26',6);
INSERT INTO "rules" VALUES(54,'ignore','/kernel\[0\]: D/',NULL,'2013-11-16 07:14:03',14);
INSERT INTO "rules" VALUES(55,'ignore','/kernel.*default pager/',NULL,NULL,0);
INSERT INTO "rules" VALUES(56,'ignore','/kernel.*macx_swap.*SUCCESS/',NULL,NULL,0);
INSERT INTO "rules" VALUES(57,'ignore','/kernel.*nspace-handler-set-snapshot-time/',NULL,'2013-10-31 09:17:30',956);
INSERT INTO "rules" VALUES(58,'ignore','/helpd.*Could not find access page in directory/',NULL,'2013-10-22 10:07:41',145);
INSERT INTO "rules" VALUES(59,'ignore','/imagent.*\[Warning\]/',NULL,'2013-11-15 09:54:41',410);
INSERT INTO "rules" VALUES(60,'ignore','/icbaccountsd.*ICB(Local|Remote)Dictionary/',NULL,'2013-11-14 23:32:39',353);
INSERT INTO "rules" VALUES(61,'ignore','/IOAudioStream.*clipIfNecessary/',NULL,'2013-10-19 10:46:33',6);
INSERT INTO "rules" VALUES(62,'ignore','/launchd.*com\.apple\./',NULL,'2013-11-16 06:46:25',8507);
INSERT INTO "rules" VALUES(63,'ignore','/launchd.*com\.andymatuschak\.Sparkle\.download-service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(64,'ignore','/leask.*audit warning/',NULL,'2013-11-16 07:10:17',5108);
INSERT INTO "rules" VALUES(65,'ignore','/last message repeated [0-9]+ time/',NULL,'2013-11-16 07:18:10',33377);
INSERT INTO "rules" VALUES(66,'ignore','/Locum.*Connection with distnoted server was invalidated/',NULL,NULL,0);
INSERT INTO "rules" VALUES(67,'ignore','/lsboxd.*\@AE relay/',NULL,NULL,0);
INSERT INTO "rules" VALUES(68,'ignore','/lsboxd.*Not allowing process/',NULL,'2013-11-15 15:36:25',84);
INSERT INTO "rules" VALUES(69,'ignore','/login.*_PROCESS/',NULL,'2013-11-16 07:02:15',945);
INSERT INTO "rules" VALUES(70,'ignore','/login.*in /',NULL,'2013-09-12 14:39:06',25);
INSERT INTO "rules" VALUES(71,'ignore','/librariand/',NULL,'2013-11-14 07:19:20',86);
INSERT INTO "rules" VALUES(72,'ignore','/loginwindow/',NULL,'2013-11-16 06:33:48',3630);
INSERT INTO "rules" VALUES(73,'ignore','/Messages.*(\[Warning\]|ERROR)/',NULL,'2013-11-14 07:16:29',247);
INSERT INTO "rules" VALUES(74,'ignore','/mds.*(Invalid|error)/',NULL,'2013-11-16 06:44:30',163);
INSERT INTO "rules" VALUES(75,'ignore','/mdworker.*Unable to talk to lsboxd/',NULL,NULL,0);
INSERT INTO "rules" VALUES(76,'ignore','/mdworker.*Date validation error/',NULL,NULL,0);
INSERT INTO "rules" VALUES(77,'ignore','/mdworker.*WARNING Invalid component, discarding/',NULL,NULL,0);
INSERT INTO "rules" VALUES(78,'ignore','/mdworker.*iCal\.mdimporter/',NULL,NULL,0);
INSERT INTO "rules" VALUES(79,'ignore','/MDCrashReportTool.*CrashReportCopierAFC/',NULL,'2013-11-15 03:34:03',1768);
INSERT INTO "rules" VALUES(80,'ignore','/mDNSResponder.*(Could not write data to clientPID|DNSServiceGetAddrInfo)/',NULL,'2013-11-15 13:58:52',91);
INSERT INTO "rules" VALUES(81,'ignore','/mtmd.*(Invalid argument|No such file or directory)/',NULL,'2013-10-31 08:18:36',436);
INSERT INTO "rules" VALUES(82,'ignore','/mtmfs.*long message send to mtmd/',NULL,'2013-09-16 13:45:59',2);
INSERT INTO "rules" VALUES(83,'ignore','/mstreamd/',NULL,NULL,0);
INSERT INTO "rules" VALUES(84,'ignore','/NotificationCenter.*Connection interrupted/',NULL,'2013-11-15 01:46:43',64);
INSERT INTO "rules" VALUES(85,'ignore','/profiled.*Idled\./',NULL,NULL,0);
INSERT INTO "rules" VALUES(86,'ignore','/Performance: Please update this scripting addition/',NULL,NULL,0);
INSERT INTO "rules" VALUES(87,'ignore','/QuickLookUIHelper.*Metadata\.framework.*MDItemRef MDItemCreate/',NULL,NULL,0);
INSERT INTO "rules" VALUES(88,'ignore','/SafariDAVClient.*ApplePushService: APSConnection being used without a delegate queue/',NULL,NULL,0);
INSERT INTO "rules" VALUES(89,'ignore','/securebackupd.*Escrow no longer trusted/',NULL,NULL,0);
INSERT INTO "rules" VALUES(90,'ignore','/System Preferences.*\*\*\* WARNING/',NULL,NULL,0);
INSERT INTO "rules" VALUES(91,'ignore','/Payload as (original|full) URL/',NULL,NULL,0);
INSERT INTO "rules" VALUES(92,'ignore','/Problem Reporter.*\*\*\* WARNING/',NULL,NULL,0);
INSERT INTO "rules" VALUES(93,'ignore','/query.*string.*length.*contents/',NULL,NULL,0);
INSERT INTO "rules" VALUES(94,'ignore','/restricted.*bool.*true/',NULL,NULL,0);
INSERT INTO "rules" VALUES(95,'ignore','/ReportCrash.*Saved crash report for/',NULL,'2013-11-15 02:25:27',66);
INSERT INTO "rules" VALUES(96,'ignore','/Reeder.*READABILITY/',NULL,NULL,0);
INSERT INTO "rules" VALUES(97,'ignore','/Reeder.*BAD TOKEN/',NULL,NULL,0);
INSERT INTO "rules" VALUES(98,'ignore','/Reeder.*LOGIN/',NULL,NULL,0);
INSERT INTO "rules" VALUES(99,'ignore','/SafariForWebKitDevelopment.*CGSGetWindowBounds/',NULL,NULL,0);
INSERT INTO "rules" VALUES(100,'ignore','/SafariForWebKitDevelopment.*PScurrentwindowbounds/',NULL,NULL,0);
INSERT INTO "rules" VALUES(101,'ignore','/SafariForWebKitDevelopment.*Error.*setting resolution to/',NULL,NULL,0);
INSERT INTO "rules" VALUES(102,'ignore','/Safari.*CGContextClipToRect/',NULL,NULL,0);
INSERT INTO "rules" VALUES(103,'ignore','/Safari.*\*\*\* WARNING/',NULL,'2013-11-15 02:25:56',14);
INSERT INTO "rules" VALUES(104,'ignore','/sandboxd.*deny/',NULL,'2013-11-16 07:01:38',1117);
INSERT INTO "rules" VALUES(105,'ignore','/ScreenCapture/',NULL,'2013-11-15 15:36:30',189);
INSERT INTO "rules" VALUES(106,'ignore','/SogouServices/',NULL,'2013-11-15 13:17:56',218);
INSERT INTO "rules" VALUES(107,'ignore','/SystemUIServer/',NULL,'2013-11-15 01:46:44',130);
INSERT INTO "rules" VALUES(108,'ignore','/System Preferences.*Unable to open IOHIDSystem/',NULL,'2013-11-01 08:21:07',15);
INSERT INTO "rules" VALUES(109,'ignore','/secd.*SOSCoderUnwrap No message to send and not done, are we stuck/',NULL,NULL,0);
INSERT INTO "rules" VALUES(110,'ignore','/usernoted.*Failed to validate application at/',NULL,'2013-11-01 09:47:49',7);
INSERT INTO "rules" VALUES(111,'ignore','/UserEventAgent.*mach_port_mod_refs returned error/',NULL,'2013-10-23 15:11:47',80);
INSERT INTO "rules" VALUES(112,'ignore','/usbmuxd.*AMDevice/',NULL,'2013-11-03 16:40:24',10587);
INSERT INTO "rules" VALUES(113,'ignore','/VDCAssistant.*VDCAssistant/',NULL,'2013-11-05 05:32:39',6);
INSERT INTO "rules" VALUES(114,'ignore','/WebProcess/',NULL,NULL,0);
INSERT INTO "rules" VALUES(115,'ignore','/WindowServer/',NULL,'2013-11-16 06:33:34',17968);
INSERT INTO "rules" VALUES(116,'ignore','/XPCErrorDescription string/',NULL,NULL,0);
INSERT INTO "rules" VALUES(117,'ignore','/xpcproxy.*assertion failed.*xpcproxy/',NULL,'2013-11-16 06:12:34',1712);
INSERT INTO "rules" VALUES(118,'ignore','/Twitter\[.*\]:/',NULL,'2013-11-16 07:00:22',5235);
INSERT INTO "rules" VALUES(119,'ignore','/"Accept-Language" = en;/',NULL,NULL,0);
INSERT INTO "rules" VALUES(120,'ignore','/Authorization = "OAuth oauth_signature=/',NULL,NULL,0);
INSERT INTO "rules" VALUES(121,'ignore','/<KS.*:/',NULL,'2013-10-31 08:45:16',4940);
INSERT INTO "rules" VALUES(122,'ignore','/=KS/',NULL,'2013-10-31 08:45:16',1258);
INSERT INTO "rules" VALUES(123,'ignore','/>,/',NULL,'2013-11-05 16:51:10',291);
INSERT INTO "rules" VALUES(124,'ignore','/<o:/',NULL,'2013-10-31 08:45:14',1873);
INSERT INTO "rules" VALUES(125,'ignore','/<\?xml version="1\.0" encoding="UTF-8" standalone="yes"\?>/',NULL,'2013-10-31 08:45:16',1284);
INSERT INTO "rules" VALUES(126,'ignore','/^\s>$/',NULL,'2013-10-31 08:45:16',1660);
INSERT INTO "rules" VALUES(127,'ignore','/};/',NULL,'2013-11-14 07:19:20',2729);
INSERT INTO "rules" VALUES(128,'ignore','/\)}/',NULL,'2013-11-14 07:02:36',1056);
INSERT INTO "rules" VALUES(129,'ignore','/\);/',NULL,'2013-10-31 08:51:51',570);
INSERT INTO "rules" VALUES(130,'ignore','/^\s\)$/',NULL,'2013-11-15 10:19:12',356);
INSERT INTO "rules" VALUES(131,'ignore','/^\s*}$/',NULL,'2013-11-15 09:58:30',2731);
INSERT INTO "rules" VALUES(132,'ignore','/"com\.google\.GoogleDrive" = {/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(133,'ignore','/"com\.google\.Chrome" = {/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(134,'ignore','/"\.tools\.google\.com",/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(135,'ignore','/"\.www\.google\.com",/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(136,'ignore','/"\.corp\.google\.com"/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(137,'ignore','/\/update2/',NULL,'2013-10-31 08:45:16',2832);
INSERT INTO "rules" VALUES(138,'ignore','/<app/',NULL,'2013-10-31 08:45:16',282);
INSERT INTO "rules" VALUES(139,'ignore','/app>/',NULL,'2013-10-31 08:45:16',1652);
INSERT INTO "rules" VALUES(140,'ignore','/\/Applications\/Google Chrome\.app\/Contents\/Info\.plist/',NULL,'2013-10-31 08:45:16',1258);
INSERT INTO "rules" VALUES(141,'ignore','/ActivesInfo = {/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(142,'ignore','/AllowedSubdomains = \(/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(143,'ignore','/body=/',NULL,'2013-10-31 08:45:14',559);
INSERT INTO "rules" VALUES(144,'ignore','/creationDate=/',NULL,'2013-10-31 08:45:16',1186);
INSERT INTO "rules" VALUES(145,'ignore','/codebaseURL=/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(146,'ignore','/codeSize=/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(147,'ignore','/codeHash=/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(148,'ignore','/<daystart/',NULL,'2013-10-31 08:45:16',544);
INSERT INTO "rules" VALUES(149,'ignore','/daystart>/',NULL,NULL,0);
INSERT INTO "rules" VALUES(150,'ignore','/data=/',NULL,'2013-10-31 08:45:16',548);
INSERT INTO "rules" VALUES(151,'ignore','/displayVersion=".*"/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(152,'ignore','/EngineVersion = ".*";/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(153,'ignore','/gupdate>/',NULL,'2013-10-31 08:45:16',1102);
INSERT INTO "rules" VALUES(154,'ignore','/<gupdate/',NULL,NULL,0);
INSERT INTO "rules" VALUES(155,'ignore','/IsSystem = 1;/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(156,'ignore','/Keystone/',NULL,'2013-10-31 08:45:25',4317);
INSERT INTO "rules" VALUES(157,'ignore','/LastRollCallPingDate =/',NULL,'2013-10-31 08:45:14',2086);
INSERT INTO "rules" VALUES(158,'ignore','/LastActivePingDate =/',NULL,'2013-10-31 08:45:14',2086);
INSERT INTO "rules" VALUES(159,'ignore','/LastActiveDate =/',NULL,'2013-10-31 08:45:14',2090);
INSERT INTO "rules" VALUES(160,'ignore','/needsadmin = false;/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(161,'ignore','/Omaha/i',NULL,'2013-10-31 08:45:16',2302);
INSERT INTO "rules" VALUES(162,'ignore','/otherProperties={/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(163,'ignore','/params={/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(164,'ignore','/productID=/',NULL,'2013-10-31 08:45:16',979);
INSERT INTO "rules" VALUES(165,'ignore','/productID=/',NULL,NULL,0);
INSERT INTO "rules" VALUES(166,'ignore','/runningFetchers=0/',NULL,'2013-10-31 08:45:14',558);
INSERT INTO "rules" VALUES(167,'ignore','/status=200/',NULL,'2013-10-31 08:45:16',544);
INSERT INTO "rules" VALUES(168,'ignore','/status = ok;/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(169,'ignore','/tickets=/i',NULL,'2013-10-31 08:45:16',3306);
INSERT INTO "rules" VALUES(170,'ignore','/tag=dev/',NULL,'2013-10-31 08:45:16',629);
INSERT INTO "rules" VALUES(171,'ignore','/tag="dev"/',NULL,NULL,0);
INSERT INTO "rules" VALUES(172,'ignore','/UserInitiated = 0;/',NULL,'2013-10-31 08:45:14',556);
INSERT INTO "rules" VALUES(173,'ignore','/updatecheck>/',NULL,'2013-10-31 08:45:16',815);
INSERT INTO "rules" VALUES(174,'ignore','/url="?https:\/\/tools\.google\.com\/service\/update2"?/',NULL,NULL,0);
INSERT INTO "rules" VALUES(175,'ignore','/version=\d+\.\d+\.\d+\.\d+/',NULL,'2013-10-31 08:45:16',1186);
INSERT INTO "rules" VALUES(176,'ignore','/(updated|deleted): {\(/',NULL,NULL,0);
INSERT INTO "rules" VALUES(177,'ignore','/an error occurred saving changes to the persistent store mutated/',NULL,NULL,0);
INSERT INTO "rules" VALUES(178,'ignore','/User Info: {/',NULL,NULL,0);
INSERT INTO "rules" VALUES(179,'ignore','/NSUnderlying(Exception|Error)/',NULL,'2013-11-15 13:37:34',694);
INSERT INTO "rules" VALUES(180,'ignore','/transactionNumber: 3/',NULL,NULL,0);
INSERT INTO "rules" VALUES(181,'ignore','/^\s\.$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(182,'ignore','/storeName: UserDictionary/',NULL,NULL,0);
INSERT INTO "rules" VALUES(183,'ignore','/localPeerID: leask~/',NULL,NULL,0);
INSERT INTO "rules" VALUES(184,'ignore','/com\.apple\.InputMethodKit\.UserDictionary.*: Core\s?Data/',NULL,'2013-11-15 02:00:34',134);
INSERT INTO "rules" VALUES(185,'ignore','/CGSCopyDisplayUUID: Invalid display/',NULL,'2013-11-16 07:18:20',181662);
INSERT INTO "rules" VALUES(186,'ignore','/The domain\/default pair of (.*, KSBrandID) does not exist/',NULL,NULL,0);
INSERT INTO "rules" VALUES(187,'ignore','/^\s*>$/',NULL,'2013-10-31 08:45:16',1258);
INSERT INTO "rules" VALUES(188,'ignore','/fp = ".*";/',NULL,'2013-10-31 08:45:16',350);
INSERT INTO "rules" VALUES(189,'ignore','/^.*defaults[\d*]:$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(190,'ignore','/ReportCrash.*Invoking spindump for pid=.*wakeups_rate=.*duration=.*because of excessive wakeups/',NULL,NULL,0);
INSERT INTO "rules" VALUES(191,'ignore','/NSFilePath = /',NULL,'2013-10-10 15:35:59',10);
INSERT INTO "rules" VALUES(192,'ignore','/NSSQLiteErrorDomain = 19/',NULL,NULL,0);
INSERT INTO "rules" VALUES(193,'ignore','/Managed Object Context Changes, inserted: {\(/',NULL,NULL,0);
INSERT INTO "rules" VALUES(194,'ignore','/(auxDataValue|partOfSpeech) = nil/',NULL,NULL,0);
INSERT INTO "rules" VALUES(195,'ignore','/com\.apple\.time.*Interval maximum value is.*seconds \(specified value:.*\)\./',NULL,'2013-11-16 06:46:08',1044);
INSERT INTO "rules" VALUES(196,'ignore','/aux(Int|String)Value\d+ = (0|nil)/',NULL,NULL,0);
INSERT INTO "rules" VALUES(197,'ignore','/(phrase|shortcut) = .*/',NULL,NULL,0);
INSERT INTO "rules" VALUES(198,'ignore','/xpcd.*quicklookd.*registration request failed.*process failed sandbox check for service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(199,'ignore','/quicklookd.*Domain extension failed.*process failed sandbox check for service/',NULL,NULL,0);
INSERT INTO "rules" VALUES(200,'ignore','/timestamp = \d+/',NULL,NULL,0);
INSERT INTO "rules" VALUES(201,'ignore','/kernel.*hfs: summary table not allowed on FS with block size of/',NULL,'2013-11-15 02:48:54',181);
INSERT INTO "rules" VALUES(202,'ignore','/kernel.*hfs: mounted Google Chrome.*Dev Update on device disk3s2/',NULL,'2013-10-22 21:38:58',20);
INSERT INTO "rules" VALUES(203,'ignore','/^\s*}\),?$/',NULL,NULL,0);
INSERT INTO "rules" VALUES(204,'ignore','/iTunes.*appBundleRef is not NULL/',NULL,NULL,0);
INSERT INTO "rules" VALUES(205,'ignore','/iTunes.*BUG in libdispatch client: kevent[EVFILT_WRITE] delete/',NULL,NULL,0);
INSERT INTO "rules" VALUES(206,'ignore','/iTunes.*AirPlayAVSys.*Stopping AirPlay/',NULL,'2013-09-16 18:58:36',9);
INSERT INTO "rules" VALUES(207,'ignore','/iTunes.*Mux ID not found in mapping dictionary/',NULL,'2013-11-03 16:40:24',6408);
INSERT INTO "rules" VALUES(208,'ignore','/kernel.*\[BNBTrackpadDevice::init\].*init is complete/',NULL,'2013-10-17 04:58:43',53);
INSERT INTO "rules" VALUES(209,'ignore','/kernel.*\[BNBTrackpadDevice::handleStart\].*returning/',NULL,'2013-10-17 04:58:43',53);
INSERT INTO "rules" VALUES(210,'ignore','/^\s*English$/',NULL,'2013-10-21 18:31:00',59);
INSERT INTO "rules" VALUES(211,'ignore','/^\s*en$/',NULL,'2013-10-17 04:58:43',13);
INSERT INTO "rules" VALUES(212,'ignore','/^\s*$/',NULL,'2013-11-15 22:28:59',2675);
INSERT INTO "rules" VALUES(213,'ignore','/iTunes.*Can\''t handle disconnect with invalid ecid/',NULL,'2013-11-03 16:40:24',6408);
INSERT INTO "rules" VALUES(214,'ignore','/Google Chrome Helper/',NULL,NULL,0);
INSERT INTO "rules" VALUES(215,'ignore','/com\.apple\.IconServicesAgent/',NULL,NULL,0);
INSERT INTO "rules" VALUES(216,'ignore','/kernel\[0\]\:\ .{0,10}$/',NULL,'2013-11-16 07:17:54',2);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('rules',216);
COMMIT;
