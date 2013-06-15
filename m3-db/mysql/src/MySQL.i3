(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE MySQL;

IMPORT MySQLRaw;
IMPORT Ctypes AS C;


CONST
  NOT_NULL_FLAG         = 1;
  PRI_KEY_FLAG          = 2;
  UNIQUE_KEY_FLAG       = 4;
  MULTIPLE_KEY_FLAG     = 8;
  BLOB_FLAG             = 16;
  UNSIGNED_FLAG         = 32;
  ZEROFILL_FLAG         = 64;
  BINARY_FLAG           = 128;
  ENUM_FLAG             = 256;
  AUTO_INCREMENT_FLAG   = 512;
  TIMESTAMP_FLAG        = 1024;
  SET_FLAG              = 2048;
  NO_DEFAULT_VALUE_FLAG = 4096;
  NUM_FLAG              = 32768;
  PART_KEY_FLAG         = 16384;
  GROUP_FLAG            = 32768;
  UNIQUE_FLAG           = 65536;
  BINCMP_FLAG           = 131072;


CONST

  CLIENT_NET_READ_TIMEOUT  = 365 * 24 * 3600;
  CLIENT_NET_WRITE_TIMEOUT = 365 * 24 * 3600;

  MAX_MYSQL_MANAGER_ERR = 256;
  MAX_MYSQL_MANAGER_MSG = 256;

  MANAGER_OK           = 200;
  MANAGER_INFO         = 250;
  MANAGER_ACCESS       = 401;
  MANAGER_CLIENT_ERR   = 450;
  MANAGER_INTERNAL_ERR = 500;

  MYSQL_NO_DATA        = 100;
  MYSQL_DATA_TRUNCATED = 101;

  (* Field Types *)
  MYSQL_TYPE_DECIMAL     = 0;
  MYSQL_TYPE_TINY        = 1;
  MYSQL_TYPE_SHORT       = 2;
  MYSQL_TYPE_LONG        = 3;
  MYSQL_TYPE_FLOAT       = 4;
  MYSQL_TYPE_DOUBLE      = 5;
  MYSQL_TYPE_NULL        = 6;
  MYSQL_TYPE_TIMESTAMP   = 7;
  MYSQL_TYPE_LONGLONG    = 8;
  MYSQL_TYPE_INT24       = 9;
  MYSQL_TYPE_DATE        = 10;
  MYSQL_TYPE_TIME        = 11;
  MYSQL_TYPE_DATETIME    = 12;
  MYSQL_TYPE_YEAR        = 13;
  MYSQL_TYPE_NEWDATE     = 14;
  MYSQL_TYPE_VARCHAR     = 15;
  MYSQL_TYPE_BIT         = 16;
  MYSQL_TYPE_NEWDECIMAL  = 246;
  MYSQL_TYPE_ENUM        = 247;
  MYSQL_TYPE_SET         = 248;
  MYSQL_TYPE_TINY_BLOB   = 249;
  MYSQL_TYPE_MEDIUM_BLOB = 250;
  MYSQL_TYPE_LONG_BLOB   = 251;
  MYSQL_TYPE_BLOB        = 252;
  MYSQL_TYPE_VAR_STRING  = 253;
  MYSQL_TYPE_STRING      = 254;
  MYSQL_TYPE_GEOMETRY    = 255;


TYPE
  InitCBT = PROCEDURE (p1: REF ADDRESS; p2: TEXT; p3: ADDRESS): INTEGER;
  ReadCBT = PROCEDURE (p1: ADDRESS; p2: TEXT; p3: CARDINAL): INTEGER;
  ErrorCBT = PROCEDURE (p1: ADDRESS; p2: TEXT; p3: CARDINAL): INTEGER;
  EndCBT = PROCEDURE (p1: ADDRESS);

  ExtendCBT = PROCEDURE (p1: ADDRESS; p2: TEXT; p3: REF LONGINT): TEXT;



TYPE
  T <: ADDRESS;
  RefMysqlRowsT = MySQLRaw.RefMysqlRowsT;

CONST
  MAX_COLUMNS = 1000;            (* Arbitrary limit to how many cols
                                    returned in a query *)

EXCEPTION ConnE;
EXCEPTION ResultE;
EXCEPTION ReturnE(INTEGER);

TYPE RefLengthsT = UNTRACED REF ARRAY [0 .. MAX_COLUMNS] OF INTEGER;


TYPE ResT <: ADDRESS;


TYPE FieldT <: ADDRESS;

TYPE ManagerT <: ADDRESS;


TYPE ParametersT <: ADDRESS;


TYPE
  StmtT <: ADDRESS;
  BindT <: ADDRESS;


TYPE CharsT <: ADDRESS;


TYPE RplT = MySQLRaw.mysql_rpl_type;

PROCEDURE ServerInit
  (argc: INTEGER; READONLY argv, groups: ARRAY OF TEXT; ): INTEGER
  RAISES {ReturnE};

PROCEDURE ServerEnd ();

PROCEDURE GetParameters (): ParametersT;

PROCEDURE ThreadInit (): BOOLEAN;

PROCEDURE ThreadEnd ();

PROCEDURE NumRows (res: ResT; ): LONGINT;

PROCEDURE NumFields (res: ResT; ): CARDINAL;

PROCEDURE Eof (res: ResT; ): BOOLEAN;

PROCEDURE FetchFieldDirect (res: ResT; fieldnr: CARDINAL; ): FieldT;

PROCEDURE FetchFields (res: ResT; ): FieldT;

PROCEDURE RowTell (res: ResT; ): RefMysqlRowsT;

PROCEDURE FieldTell (res: ResT; ): CARDINAL;

PROCEDURE FieldCount (mysql: T; ): CARDINAL;

PROCEDURE AffectedRows (mysql: T; ): LONGINT;

PROCEDURE InsertId (mysql: T; ): LONGINT;

PROCEDURE Errno (mysql: T; ): CARDINAL;

PROCEDURE Error (mysql: T; ): TEXT;

PROCEDURE Sqlstate (mysql: T; ): TEXT;

PROCEDURE WarningCount (mysql: T; ): CARDINAL;

PROCEDURE Info (mysql: T; ): TEXT;

PROCEDURE ThreadId (mysql: T; ): CARDINAL;

PROCEDURE CharacterSetName (mysql: T; ): TEXT;

PROCEDURE SetCharacterSet (mysql: T; csname: TEXT; ): INTEGER
  RAISES {ReturnE};

PROCEDURE Init (mysql: T; ): T RAISES {ConnE};

PROCEDURE SslSet (mysql: T; key, cert, ca, capath, cipher: TEXT; ):
  BOOLEAN;

PROCEDURE ChangeUser (mysql: T; user, passwd, db: TEXT; ): BOOLEAN;

PROCEDURE RealConnect (mysql                 : T;
                       host, user, passwd, db: TEXT;
                       port                  : CARDINAL;
                       unix_socket           : TEXT;
                       clientflag            : CARDINAL; ): T
  RAISES {ConnE};

PROCEDURE SelectDb (mysql: T; db: TEXT; ): INTEGER RAISES {ReturnE};

PROCEDURE Query (mysql: T; q: TEXT; ): INTEGER RAISES {ReturnE};

PROCEDURE SendQuery (mysql: T; q: TEXT; length: CARDINAL; ): INTEGER
  RAISES {ReturnE};

PROCEDURE RealQuery (mysql: T; q: TEXT; length: CARDINAL; ): INTEGER
  RAISES {ReturnE};

PROCEDURE StoreResult (mysql: T; ): ResT RAISES {ResultE};

PROCEDURE UseResult (mysql: T; ): ResT RAISES {ResultE};

PROCEDURE MasterQuery (mysql: T; q: TEXT; length: CARDINAL; ): BOOLEAN;

PROCEDURE MasterSendQuery (mysql: T; q: TEXT; length: CARDINAL; ): BOOLEAN;

PROCEDURE SlaveQuery (mysql: T; q: TEXT; length: CARDINAL; ): BOOLEAN;

PROCEDURE SlaveSendQuery (mysql: T; q: TEXT; length: CARDINAL; ): BOOLEAN;

PROCEDURE GetCharSetInfo (mysql: T; VAR charset: CharsT; );

PROCEDURE SetLocalInfileHandler (    mysql             : T;
                                     local_infile_init : InitCBT;
                                     local_infile_read : ReadCBT;
                                     local_infile_end  : EndCBT;
                                     local_infile_error: ErrorCBT;
                                 VAR userdata          : REFANY;   );

PROCEDURE SetLocalInfileDefault (mysql: T; );

PROCEDURE EnableRplParse (mysql: T; );

PROCEDURE DisableRplParse (mysql: T; );

PROCEDURE RplParseEnabled (mysql: T; ): INTEGER RAISES {ReturnE};

PROCEDURE EnableReadsFromMaster (mysql: T; );

PROCEDURE DisableReadsFromMaster (mysql: T; );

PROCEDURE ReadsFromMasterEnabled (mysql: T; ): BOOLEAN;

PROCEDURE RplQueryType (q: TEXT; len: INTEGER; ): RplT;

PROCEDURE RplProbe (mysql: T; ): BOOLEAN;

PROCEDURE SetMaster
  (mysql: T; host: TEXT; port: CARDINAL; user, passwd: TEXT; ): INTEGER
  RAISES {ReturnE};

PROCEDURE AddSlave
  (mysql: T; host: TEXT; port: CARDINAL; user, passwd: TEXT; ): INTEGER
  RAISES {ReturnE};

PROCEDURE Shutdown (mysql: T; shutdown_level: INTEGER; ): INTEGER
  RAISES {ReturnE};

PROCEDURE DumpDebugInfo (mysql: T; ): INTEGER RAISES {ReturnE};

PROCEDURE Refresh (mysql: T; refresh_options: CARDINAL; ): INTEGER
  RAISES {ReturnE};

PROCEDURE Kill (mysql: T; pid: CARDINAL; ): INTEGER RAISES {ReturnE};

PROCEDURE SetServerOption (mysql: T; option: INTEGER; ): INTEGER
  RAISES {ReturnE};

PROCEDURE Ping (mysql: T; ): INTEGER RAISES {ReturnE};

PROCEDURE Stat (mysql: T; ): TEXT;

PROCEDURE GetServerInfo (mysql: T; ): TEXT;

PROCEDURE GetClientInfo (): TEXT;

PROCEDURE GetClientVersion (): CARDINAL;

PROCEDURE GetHostInfo (mysql: T; ): TEXT;

PROCEDURE GetServerVersion (mysql: T; ): CARDINAL;

PROCEDURE GetProtoInfo (mysql: T; ): CARDINAL;

PROCEDURE ListDbs (mysql: T; wild: TEXT; ): ResT RAISES {ResultE};

PROCEDURE ListTables (mysql: T; wild: TEXT; ): ResT RAISES {ResultE};

PROCEDURE ListProcesses (mysql: T; ): ResT RAISES {ResultE};

PROCEDURE Options (mysql: T; option: INTEGER; arg: TEXT; ): INTEGER
  RAISES {ReturnE};

PROCEDURE FreeResult (res: ResT; );

PROCEDURE DataSeek (res: ResT; offset: LONGINT; );

PROCEDURE RowSeek (res: ResT; offset: RefMysqlRowsT; ): RefMysqlRowsT;

PROCEDURE FieldSeek (res: ResT; offset: CARDINAL; ): CARDINAL;

PROCEDURE FetchRow (res: ResT; ): REF ARRAY OF TEXT;

PROCEDURE FetchLengths (res: ResT; ): RefLengthsT;

PROCEDURE FetchField (res: ResT; ): FieldT;

PROCEDURE ListFields (mysql: T; table, wild: TEXT; ): ResT
  RAISES {ResultE};

PROCEDURE EscapeString (to, from: TEXT; from_length: CARDINAL; ): CARDINAL;

PROCEDURE HexString (to, from: TEXT; from_length: CARDINAL; ): CARDINAL;

PROCEDURE RealEscapeString (mysql: T; to, from: TEXT; length: CARDINAL; ):
  CARDINAL;

PROCEDURE Debug (debug: TEXT; );

PROCEDURE OdbcEscapeString (    mysql        : T;
                                to           : TEXT;
                                to_length    : CARDINAL;
                                from         : TEXT;
                                from_length  : CARDINAL;
                            VAR param        : REFANY;
                                extend_buffer: ExtendCBT; ): TEXT;

PROCEDURE RemoveEscape (mysql: T; name: TEXT; );

PROCEDURE ThreadSafe (): CARDINAL;

PROCEDURE Embedded (): BOOLEAN;

PROCEDURE ManagerInit (con: ManagerT; ): ManagerT RAISES {ConnE};

PROCEDURE ManagerConnect
  (con: ManagerT; host, user, passwd: TEXT; port: CARDINAL; ): ManagerT
  RAISES {ConnE};

PROCEDURE ManagerClose (con: ManagerT; );

PROCEDURE ManagerCommand (con: ManagerT; cmd: TEXT; cmd_len: INTEGER; ):
  INTEGER RAISES {ReturnE};

PROCEDURE ManagerFetchLine
  (con: ManagerT; res_buf: TEXT; res_buf_size: INTEGER; ): INTEGER
  RAISES {ReturnE};

PROCEDURE ReadQueryResult (mysql: T; ): BOOLEAN;

PROCEDURE StmtInit (mysql: T; ): StmtT RAISES {ResultE};

PROCEDURE StmtPrepare (stmt: StmtT; query: TEXT; length: CARDINAL; ):
  INTEGER RAISES {ReturnE};

PROCEDURE StmtExecute (stmt: StmtT; ): INTEGER RAISES {ReturnE};

PROCEDURE StmtFetch (stmt: StmtT; ): INTEGER RAISES {ReturnE};

PROCEDURE StmtFetchColumn
  (stmt: StmtT; bind: BindT; column, offset: CARDINAL; ): INTEGER
  RAISES {ReturnE};

PROCEDURE StmtStoreResult (stmt: StmtT; ): INTEGER RAISES {ReturnE};

PROCEDURE StmtParamCount (stmt: StmtT; ): CARDINAL;

PROCEDURE StmtAttrSet
  (stmt: StmtT; attr_type: INTEGER; READONLY attr: REFANY; ): BOOLEAN;

PROCEDURE StmtAttrGet
  (stmt: StmtT; attr_type: INTEGER; VAR attr: REFANY; ): BOOLEAN;

PROCEDURE StmtBindParam (stmt: StmtT; bnd: BindT; ): BOOLEAN;

PROCEDURE StmtBindResult (stmt: StmtT; bnd: BindT; ): BOOLEAN;

PROCEDURE StmtClose (stmt: StmtT; ): BOOLEAN;

PROCEDURE StmtReset (stmt: StmtT; ): BOOLEAN;

PROCEDURE StmtFreeResult (stmt: StmtT; ): BOOLEAN;

PROCEDURE StmtSendLongData
  (stmt: StmtT; param_number: CARDINAL; data: TEXT; length: CARDINAL; ):
  BOOLEAN;

PROCEDURE StmtResultMetadata (stmt: StmtT; ): ResT RAISES {ResultE};

PROCEDURE StmtParamMetadata (stmt: StmtT; ): ResT RAISES {ResultE};

PROCEDURE StmtErrno (stmt: StmtT; ): CARDINAL;

PROCEDURE StmtError (stmt: StmtT; ): TEXT;

PROCEDURE StmtSqlstate (stmt: StmtT; ): TEXT;

PROCEDURE StmtRowSeek (stmt: StmtT; offset: RefMysqlRowsT; ):
  RefMysqlRowsT;

PROCEDURE StmtRowTell (stmt: StmtT; ): RefMysqlRowsT;

PROCEDURE StmtDataSeek (stmt: StmtT; offset: LONGINT; );

PROCEDURE StmtNumRows (stmt: StmtT; ): LONGINT;

PROCEDURE StmtAffectedRows (stmt: StmtT; ): LONGINT;

PROCEDURE StmtInsertId (stmt: StmtT; ): LONGINT;

PROCEDURE StmtFieldCount (stmt: StmtT; ): CARDINAL;

PROCEDURE Commit (mysql: T; ): BOOLEAN;

PROCEDURE Rollback (mysql: T; ): BOOLEAN;

PROCEDURE Autocommit (mysql: T; auto_mode: BOOLEAN; ): BOOLEAN;

PROCEDURE MoreResults (mysql: T; ): BOOLEAN;

PROCEDURE NextResult (mysql: T; ): INTEGER RAISES {ReturnE};

PROCEDURE Close (sock: T; );


END MySQL.
