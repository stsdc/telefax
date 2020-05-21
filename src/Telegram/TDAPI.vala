
using Td_json;
using Telegram;

public class Telegram.TDAPI : Object {

    // creates JSON structure, returns a string
    public static string set_td_lib_parameters(TDLibParameters parameters) {
        Json.Builder builder = new Json.Builder ();

        // this is at top level of JSON
        builder.begin_object ();
        
        builder.set_member_name ("@type");
        builder.add_string_value ("setTdlibParameters");

        builder.set_member_name ("parameters");
        builder.add_value (parameters.to_json());

        builder.end_object ();

        Json.Node root = builder.get_root ();
        Json.Generator generator = new Json.Generator ();
        generator.set_root (root);

        return generator.to_data (null);
     }

     public static string check_database_encryption_key (string key = "") {
        Json.Builder builder = new Json.Builder ();

        // this is at top level of JSON
        builder.begin_object ();
        
        builder.set_member_name ("@type");
        builder.add_string_value ("checkDatabaseEncryptionKey");

        builder.set_member_name ("key");
        builder.add_string_value (key);

        builder.end_object ();

        Json.Node root = builder.get_root ();
        Json.Generator generator = new Json.Generator ();
        generator.set_root (root);

        return generator.to_data (null);
     }

    public static string set_phone_number (string phone_number = "+") {
        Json.Builder builder = new Json.Builder ();

        // this is at top level of JSON
        builder.begin_object ();
        
        builder.set_member_name ("@type");
        builder.add_string_value ("setAuthenticationPhoneNumber");

        builder.set_member_name ("phone_number");
        builder.add_string_value (phone_number);

        builder.end_object ();

        Json.Node root = builder.get_root ();
        Json.Generator generator = new Json.Generator ();
        generator.set_root (root);

        return generator.to_data (null);
    }

    public static string check_authentication_code (string code) {
        Json.Builder builder = new Json.Builder ();

        // this is at top level of JSON
        builder.begin_object ();
        
        builder.set_member_name ("@type");
        builder.add_string_value ("checkAuthenticationCode");

        builder.set_member_name ("code");
        builder.add_string_value (code);

        builder.end_object ();

        Json.Node root = builder.get_root ();
        Json.Generator generator = new Json.Generator ();
        generator.set_root (root);

        return generator.to_data (null);
    }
}