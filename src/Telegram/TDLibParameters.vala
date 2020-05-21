
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

    public Json.Node to_json() {
        var parameters = new Json.Object();
        parameters.set_string_member("@type", "tdlibParameters");
        parameters.set_boolean_member("use_test_dc", use_test_dc);
        parameters.set_string_member("database_directory", database_directory);
        parameters.set_string_member("files_directory", files_directory);
        parameters.set_boolean_member("use_file_database", use_file_database);
        parameters.set_boolean_member("use_chat_info_database", use_chat_info_database);
        parameters.set_boolean_member("use_message_database", use_message_database);
        parameters.set_boolean_member("use_secret_chats", use_secret_chats);
        parameters.set_int_member("api_id", api_id);
        parameters.set_string_member("api_hash", api_hash);
        parameters.set_string_member("system_language_code", system_language_code);
        parameters.set_string_member("device_model", device_model);
        parameters.set_string_member("system_version", system_version);
        parameters.set_string_member("application_version", application_version);
        parameters.set_boolean_member("enable_storage_optimizer", enable_storage_optimizer);
        parameters.set_boolean_member("ignore_file_names", ignore_file_names);

        Json.Node node = new Json.Node(Json.NodeType.OBJECT);
        node.set_object(parameters);

        return node;
    }
}
