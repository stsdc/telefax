
using Td_json;
using Telegram;

public class Telegram.Client : Object {


    construct {     }

    // creates JSON structure, returns a string
    public string set_td_lib_parameters(TDLibParameters parameters) {
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

}