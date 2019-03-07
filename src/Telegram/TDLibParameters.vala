
public class Telegram.TDLibParameters : Object {

    public bool     use_test_dc { get; set; }
    public string   database_directory { get; set; }
    public string 	files_directory { get; set; }
    public bool 	use_file_database { get; set; }
    public bool 	use_chat_info_database { get; set; }
    public bool 	use_message_database { get; set; }
    public bool 	use_secret_chats { get; set; }
    public long     api_id { get; set; }
    public string 	api_hash { get; set; }
    public string 	system_language_code { get; set; }
    public string 	device_model { get; set; }
    public string 	system_version { get; set; }
    public string 	application_version { get; set; }
    public bool 	enable_storage_optimizer { get; set; }
    public bool 	ignore_file_names { get; set; }

    construct {
        use_test_dc = true;
        database_directory = "";
        files_directory = "";
        use_file_database = false;
        use_chat_info_database = false;
        use_message_database = false;
        use_secret_chats = false;
        api_id = ;
        api_hash = "";
        system_language_code = "en";
        device_model = "Desktop";
        system_version = "Unknown";
        application_version = "0.1.0";
        enable_storage_optimizer = false;
        ignore_file_names = true;
    }

    public Json.Object to_json() {
        var p = new Json.Object();
        p.set_string_member("@type", "tdlibParameters");
        p.set_boolean_member("use_test_dc", use_test_dc);
        p.set_string_member("database_directory", database_directory);
        p.set_string_member("files_directory", files_directory);
        p.set_boolean_member("use_file_database", use_file_database);
        p.set_boolean_member("use_chat_info_database", use_chat_info_database);
        p.set_boolean_member("use_message_database", use_message_database);
        p.set_boolean_member("use_secret_chats", use_secret_chats);
        p.set_int_member("api_id", api_id);
        p.set_string_member("api_hash", api_hash);
        p.set_string_member("device_model", device_model);
        p.set_string_member("system_version", system_version);
        p.set_string_member("application_version", application_version);
        p.set_string_member("application_version", application_version);
        p.set_boolean_member("enable_storage_optimizer", enable_storage_optimizer);
        p.set_boolean_member("ignore_file_names", ignore_file_names);
        return p;
    }
}