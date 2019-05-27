using Telefax.Common;
using TD;
using Telegram;
namespace Telefax {

    public class MainWindow : BaseMainWindow {
        public Welcome welcome;
        public TDLibParameters params;

        public MainWindow(){
            debug("testing");
            this.title =_("Telefax");
            //TODO: Icon name
            this.icon_name = "TODO";
           
            create_layout();

            //  var grid = new Gtk.Grid ();
            //  grid.orientation = Gtk.Orientation.VERTICAL;

            welcome = new Welcome();
            add (welcome);
            show_all ();
        }

        private void create_layout () {
            
            // creting object with predefined parameters
            // it includes method that returns Json.Object
            params = new TDLibParameters ();
            var node = new Json.Node(Json.NodeType.OBJECT);

            node.set_object(params.to_json());
            Json.Generator generator = new Json.Generator ();
	        generator.set_root (node);
            string serialized = Json.to_string (node, false);
            //  string raw = "{\"@type\":\"setTdlibParameters\",\"parameters\":{\"@type\":\"TdlibParameters\",\"use_test_dc\":true,\"database_directory\":\"\",\"files_directory\":\"\",\"use_file_database\":true,\"use_chat_info_database\":true,\"use_message_database\":true,\"use_secret_chats\":true,\"api_id\":436686,\"api_hash\":\"1379b1f8ab321be91e4c78f2e3a24b10\",\"device_model\":\"Desktop\",\"system_version\":\"Unknown\",\"application_version\":\"0.1.0\",\"enable_storage_optimizer\":true,\"ignore_file_names\":true,\"system_language_code\":\"en\"}}";
            //  string data = "{\"@type\": \"getAuthorizationState\"}";
            //  print (data);

            var client = new JSONClient ();
            
            //  client.send (serialized);
            //  client.send ("{\"@type\": \"checkDatabaseEncryptionKey\"}");

            //  info ("received: %s", res);

            //  var raw = "{\"@type\":\"getAuthorizationState\"}";

            //  var obj = new Json.Object();
            //  obj.set_string_member("@type", "getAuthorizationState");

            //  var node = new Json.Node(Json.NodeType.OBJECT);
            //  node.set_object(obj);

            //  var serialized = Json.to_string(node, false);

            //  print("r: '%s'\ns: '%s'\nequals: %s\n", raw, serialized, str_equal(raw, serialized).to_string());
            //  client.send ("{\"@type\": \"getMe\"}");
            //  var res2 = client.receive(10.0);
            //  info ("received2: %s", res2);
        }

        private void login_completed () {
            debug("Dummy login completed");
        }




      
    }
}
